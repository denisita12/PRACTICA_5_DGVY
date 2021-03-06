-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-05-2021 a las 05:40:00
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_blog`
-- 
create database bd_blog;
use bd_blog;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `titulo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `contenido` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `fecha`, `titulo`, `contenido`) VALUES
(1, '2021-05-08', 'Como adelgazar mejorando tu sistema digestivo', 'es un hecho establecido demasiado tiempo que un lector se distraera con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem ipsum es que tiene una'),
(5, '2021-05-10', 'Deja de fumar', 'El tabaquismo estÃ¡ vinculado a numerosas patologÃ­as, desde las cataratas oculares hasta el cÃ¡ncer, cuyo riesgo se dobla en quienes tienen este hÃ¡bito, y llega a cuadruplicarse en los fumadores empedernidos.'),
(6, '2021-05-11', 'Haz deporte', 'El deporte es uno de los pilares de los estilos de vida saludables. Si crees que no tienes tiempo o que tu forma fisica no es la adecuada, no te preocupes. El deporte esta al alcance de cualquiera. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'dennis', 'villasanti');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
