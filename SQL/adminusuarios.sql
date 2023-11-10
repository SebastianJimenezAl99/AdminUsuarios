-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2023 a las 21:00:47
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adminusuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_10_173231_create_usuarios_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `lastName` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `fechaRegistro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`, `lastName`, `email`, `fechaRegistro`, `created_at`, `updated_at`) VALUES
(1, 'Pierce', 'Schimmel', 'gaetano35@hotmail.com', '2006-11-10', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(2, 'Laila', 'Boyer', 'ebradtke@gmail.com', '2013-07-15', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(3, 'Cassie', 'Baumbach', 'korey35@yahoo.com', '1981-05-22', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(4, 'Zena', 'Haley', 'woconner@gaylord.info', '1974-10-29', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(5, 'Maverick', 'Hudson', 'jhaley@gmail.com', '2016-11-07', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(6, 'Emma', 'Thompson', 'craig.robel@kessler.net', '2009-08-13', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(7, 'Ruthe', 'Trantow', 'kuhic.dan@hotmail.com', '2018-09-29', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(8, 'Keegan', 'Mosciski', 'kvon@jaskolski.info', '1984-02-06', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(9, 'Abigayle', 'Larkin', 'kschimmel@gmail.com', '1989-07-15', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(10, 'Valentin', 'Kirlin', 'linnea.mayert@lubowitz.com', '1990-03-17', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(11, 'Dominique', 'Hilpert', 'melvina.schneider@yahoo.com', '2010-06-17', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(12, 'Belle', 'Osinski', 'schiller.kaci@keeling.com', '2018-07-03', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(13, 'Erik', 'Lesch', 'klein.malcolm@yahoo.com', '2001-10-13', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(14, 'Curt', 'Lind', 'emie.ortiz@feil.com', '1997-07-19', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(15, 'Karen', 'Kunde', 'herminio.gerhold@yahoo.com', '1974-04-04', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(16, 'Mittie', 'Hermann', 'klakin@gmail.com', '1995-06-23', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(17, 'Shakira', 'Quigley', 'obins@yahoo.com', '2022-01-04', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(18, 'Hassan', 'Zulauf', 'ygaylord@bernhard.com', '2000-11-09', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(19, 'Kennedy', 'Homenick', 'prince.wolf@koelpin.org', '2010-06-14', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(20, 'Diamond', 'Gulgowski', 'edyth26@bednar.com', '1981-03-11', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(21, 'Curtis', 'Russel', 'owen36@boehm.com', '2002-07-31', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(22, 'Janessa', 'Reichert', 'arjun48@hotmail.com', '2017-01-03', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(23, 'Lempi', 'Ruecker', 'jammie.bechtelar@aufderhar.net', '1998-07-01', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(24, 'Christopher', 'Zieme', 'ledner.renee@pfannerstill.com', '2013-06-24', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(25, 'Jessy', 'Kreiger', 'letitia89@gmail.com', '2009-12-03', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(26, 'Gussie', 'Ondricka', 'elwyn06@zieme.com', '2018-07-13', '2023-11-10 22:57:50', '2023-11-10 22:57:50'),
(27, 'Clementine', 'Ebert', 'omari67@pollich.com', '2010-11-20', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(28, 'Ines', 'Marquardt', 'toney98@hotmail.com', '2007-02-23', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(29, 'America', 'Crist', 'jerel88@ferry.org', '1989-03-26', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(30, 'Albina', 'Fadel', 'heath.murphy@rosenbaum.com', '2017-08-06', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(31, 'Ardella', 'Rowe', 'ohara.orlando@mills.org', '1997-04-16', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(32, 'Cayla', 'Bins', 'hkautzer@schulist.com', '1990-12-13', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(33, 'Ressie', 'Hilpert', 'harber.dino@yahoo.com', '2013-08-29', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(34, 'Hal', 'Schmeler', 'abdiel.wehner@gmail.com', '1974-04-15', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(35, 'Eileen', 'Lind', 'ward.janelle@yahoo.com', '1975-11-02', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(36, 'Santina', 'Robel', 'haley.art@yahoo.com', '1976-10-16', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(37, 'Lenora', 'Kozey', 'grady.aimee@hotmail.com', '1990-12-21', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(38, 'Elda', 'Hettinger', 'katrine.kuhlman@hahn.com', '2021-08-08', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(39, 'Emory', 'Lockman', 'ansel11@waters.org', '1971-04-06', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(40, 'Nikita', 'Rath', 'uryan@romaguera.com', '2009-05-22', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(41, 'Jesus', 'Crona', 'obie.durgan@hintz.com', '1996-04-26', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(42, 'Cruz', 'Greenfelder', 'loyce.swift@hotmail.com', '1985-09-12', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(43, 'Abraham', 'Stehr', 'simone.koss@nienow.com', '1989-05-21', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(44, 'Micaela', 'Predovic', 'hickle.wade@luettgen.com', '1991-08-30', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(45, 'Zoie', 'Schroeder', 'wgerhold@hotmail.com', '2005-02-22', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(46, 'Cyril', 'O\'Reilly', 'christopher.cassin@gmail.com', '1986-10-15', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(47, 'Lukas', 'Swaniawski', 'lue59@ernser.com', '1989-01-05', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(48, 'Jakayla', 'Durgan', 'johnston.enrico@greenholt.com', '2003-06-05', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(49, 'Delia', 'Stamm', 'conn.vern@hotmail.com', '1986-07-11', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(50, 'Augustine', 'Koepp', 'hill.lilla@yahoo.com', '2004-06-19', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(51, 'Birdie', 'Reichert', 'cummings.beverly@gislason.info', '1988-03-06', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(52, 'Caesar', 'Koelpin', 'teagan.haag@gmail.com', '2017-09-20', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(53, 'Abdiel', 'Welch', 'cathy46@hilpert.com', '1997-01-12', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(54, 'Larissa', 'Lockman', 'friesen.reed@hotmail.com', '1990-02-02', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(55, 'Rebeka', 'McKenzie', 'bailey.logan@yahoo.com', '2020-08-15', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(56, 'Liana', 'Kerluke', 'igreenholt@legros.org', '1988-11-11', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(57, 'Mathilde', 'Moore', 'kale.ferry@yahoo.com', '2022-04-28', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(58, 'Deontae', 'Collier', 'wendy22@gmail.com', '2007-04-13', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(59, 'Isabel', 'Jenkins', 'dicki.ozella@gmail.com', '1986-09-01', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(60, 'Larue', 'Bashirian', 'arvilla.okon@yahoo.com', '1991-07-14', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(61, 'Kaley', 'Mayer', 'mafalda.prohaska@langworth.com', '2014-08-30', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(62, 'Ruthie', 'VonRueden', 'rledner@gmail.com', '1972-02-26', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(63, 'Braxton', 'Muller', 'adalberto.bergnaum@yahoo.com', '2018-01-09', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(64, 'Alessia', 'Kreiger', 'arch93@rau.biz', '1982-10-29', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(65, 'Titus', 'Hudson', 'vernice76@parisian.com', '2018-01-14', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(66, 'Geo', 'Nolan', 'leuschke.braeden@yahoo.com', '1976-06-19', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(67, 'Sofia', 'Mosciski', 'greenfelder.novella@gmail.com', '1976-02-03', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(68, 'Domenica', 'Langosh', 'jakubowski.emie@haag.org', '2008-03-15', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(69, 'Robb', 'Fritsch', 'orin.koelpin@quigley.info', '2014-05-24', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(70, 'Madeline', 'Davis', 'janiya.strosin@hotmail.com', '2016-02-11', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(71, 'Danny', 'Hessel', 'hill.christelle@gmail.com', '1991-02-17', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(72, 'Keeley', 'Hammes', 'jacynthe.ortiz@yahoo.com', '2000-09-06', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(73, 'Melyssa', 'Simonis', 'sadie97@walsh.com', '1998-02-10', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(74, 'Dejuan', 'Pfeffer', 'theo61@gmail.com', '1983-08-25', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(75, 'Americo', 'Ziemann', 'frances15@hagenes.net', '2011-12-24', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(76, 'Augusta', 'Doyle', 'frieda.howe@hotmail.com', '2011-01-25', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(77, 'Johathan', 'Graham', 'shanon.beier@gusikowski.com', '2009-09-22', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(78, 'Vicenta', 'Graham', 'cummerata.deon@gmail.com', '2022-09-02', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(79, 'Louie', 'Jerde', 'trisha29@hotmail.com', '2010-07-09', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(80, 'Mitchell', 'Dietrich', 'kathleen.wolf@hotmail.com', '2007-09-09', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(81, 'Troy', 'Osinski', 'una22@wiza.net', '2022-12-15', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(82, 'Tomas', 'Auer', 'corkery.anya@konopelski.com', '2005-08-22', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(83, 'Ransom', 'Bergstrom', 'antonio.hauck@gmail.com', '1998-06-24', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(84, 'Liliane', 'Pouros', 'alejandrin03@gmail.com', '1988-05-10', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(85, 'Theron', 'Aufderhar', 'leopold20@gmail.com', '2005-08-25', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(86, 'Ian', 'Jacobs', 'schmeler.jordane@witting.com', '1988-06-01', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(87, 'Axel', 'Mann', 'erwin78@greenholt.com', '2003-05-16', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(88, 'Deangelo', 'Walter', 'dora.feest@yahoo.com', '1984-05-06', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(89, 'Fiona', 'O\'Conner', 'kailee.wilderman@gmail.com', '2001-01-06', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(90, 'Ida', 'Durgan', 'antoinette77@yahoo.com', '2020-08-07', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(91, 'Jonatan', 'Blanda', 'okuneva.chasity@yahoo.com', '2018-02-27', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(92, 'Maritza', 'Rice', 'sanford.haag@conn.org', '2008-05-13', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(93, 'Axel', 'Swift', 'koelpin.judge@yahoo.com', '1992-04-21', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(94, 'Payton', 'Leffler', 'ajones@gmail.com', '1984-03-29', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(95, 'Oren', 'Hermiston', 'burnice16@yahoo.com', '1997-02-27', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(96, 'Khalid', 'Runte', 'qkoss@yahoo.com', '2005-02-25', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(97, 'Lavina', 'Toy', 'anjali52@yahoo.com', '2020-02-25', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(98, 'Sherwood', 'Kreiger', 'trystan87@keeling.com', '1989-04-21', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(99, 'Wilber', 'Stroman', 'malvina.rolfson@sanford.com', '1988-03-08', '2023-11-10 22:57:51', '2023-11-10 22:57:51'),
(100, 'Dasia', 'Jimenez', 'casimer.ziemann@yahoo.com', '1973-09-12', '2023-11-10 22:57:51', '2023-11-10 22:58:58');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
