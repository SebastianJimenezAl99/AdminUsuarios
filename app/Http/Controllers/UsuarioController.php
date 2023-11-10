<?php

namespace App\Http\Controllers;

use App\Models\Usuario;
use Illuminate\Http\Request;

use function PHPUnit\Framework\returnSelf;

class UsuarioController extends Controller
{
    public function index(){
        return Usuario::all();
    }

    public function show($id){
        return Usuario::find($id);
    }

    public function store(Request $request){
        $op = new Usuario();
        $op->name = $request->name;
        $op->lastName = $request->lastName;
        $op->email = $request->email;
        $op->fechaRegistro = $request->fechaRegistro;
        

        $op->save();

        return ['Usuario Guardado de Forma correta',$op];
    }

    public function update(Request $request,$id){
        $op = Usuario::find($id);
        $userOld = $op;
        $op->name = $request->name;
        $op->lastName = $request->lastName;
        $op->email = $request->email;
        $op->fechaRegistro = $request->fechaRegistro;

        $op->save();

        $resultado = [
            'mensaje' => 'Usuario Actualizado',
            'Informacion Old' => $userOld,
            'Informacion New' => $op
        ];
        
        return $resultado;
    }

    public function delete($id){
        $op = Usuario::find($id);
        $op->delete();

        $resultado = [
            'mensaje' => 'Usuario Eliminado correctamente',
            'Informacion eliminada' => $op
        ];
        
        return $resultado;
    }
}
