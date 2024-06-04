-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2024 a las 17:13:13
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `codevita`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `clave` int(8) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `estatus` int(11) NOT NULL COMMENT '1=activo, 0=inactivo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`clave`, `password`, `nombre`, `estatus`) VALUES
(12345678, 'contraseña10', 'Brayan Hernandez Acevedo', 1),
(21011022, '12345', 'Rafael Herrera García', 1),
(23456789, 'contraseña2', 'Adrián Jalil Juárez Antonio', 1),
(34567890, 'contraseña3', 'José Felipe Pérez Hernández', 1),
(45678901, 'contraseña4', 'Jesús Daniel Ramos Llanos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_academicos`
--

CREATE TABLE `datos_academicos` (
  `no_control` int(8) NOT NULL,
  `nombre_secundaria` varchar(70) DEFAULT NULL,
  `ingreso_secundaria` date DEFAULT NULL,
  `egreso_secundaria` date DEFAULT NULL,
  `nombre_preparatoria` varchar(70) DEFAULT NULL,
  `ingreso_preparatoria` date DEFAULT NULL,
  `egreso_preparatoria` date DEFAULT NULL,
  `titulo_tecnico` varchar(60) DEFAULT NULL,
  `nombre_universidad` varchar(70) DEFAULT NULL,
  `ingreso_universidad` date DEFAULT NULL,
  `egreso_universidad` date DEFAULT NULL,
  `titulo_universitario` varchar(60) DEFAULT NULL,
  `idiomas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_academicos`
--

INSERT INTO `datos_academicos` (`no_control`, `nombre_secundaria`, `ingreso_secundaria`, `egreso_secundaria`, `nombre_preparatoria`, `ingreso_preparatoria`, `egreso_preparatoria`, `titulo_tecnico`, `nombre_universidad`, `ingreso_universidad`, `egreso_universidad`, `titulo_universitario`, `idiomas`) VALUES
(21010962, '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', ''),
(21010976, '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', ''),
(21011019, 'Miguel Hidalgo', '2012-09-01', '2015-06-30', 'CETIS 105', '2015-09-01', '2018-06-30', 'Mantenimiento Industrial', 'Instituto Tecnológico de Orizaba', '2018-09-01', '2022-06-30', 'Sistemas Computacionales', 'Ingles - Aleman'),
(21011026, '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '', '0000-00-00', '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_personales`
--

CREATE TABLE `datos_personales` (
  `no_control` int(8) NOT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `direccion` varchar(80) DEFAULT NULL,
  `telefono` int(10) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `informacion_adicional` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_personales`
--

INSERT INTO `datos_personales` (`no_control`, `foto`, `nombre`, `fecha_nacimiento`, `direccion`, `telefono`, `correo`, `informacion_adicional`) VALUES
(21010962, '', '', '0000-00-00', '', 0, '', ''),
(21010976, '', '', '0000-00-00', '', 0, '', ''),
(21011019, NULL, 'José Felipe Pérez Hernández', '2000-10-12', 'Privada de Libertad #52, colonia Abasolo Córdoba Veracruz', 2147483647, 'felipehrdz12@gmail.com', 'Me apasiona crear todo lo que pueda llegar a imaginar, gracias a esta visión he podido evolucionar mis conocimientos en materia de desarrollo de software y ayudar a personas, organizaciones y empresas a proyectar todo aquello que desean vender.'),
(21011026, '', '', '0000-00-00', '', 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_profesionales`
--

CREATE TABLE `datos_profesionales` (
  `no_control` int(8) NOT NULL,
  `empresa_1` varchar(50) DEFAULT NULL,
  `puesto_1` varchar(50) DEFAULT NULL,
  `fecha_ingreso1` date DEFAULT NULL,
  `fecha_salida1` date DEFAULT NULL,
  `descripcion_1` varchar(500) DEFAULT NULL,
  `empresa_2` varchar(50) DEFAULT NULL,
  `puesto_2` varchar(50) DEFAULT NULL,
  `fecha_ingreso2` date DEFAULT NULL,
  `fecha_salida2` date DEFAULT NULL,
  `descripcion_2` varchar(500) DEFAULT NULL,
  `empresa_3` varchar(50) DEFAULT NULL,
  `puesto_3` varchar(50) DEFAULT NULL,
  `fecha_ingreso3` date DEFAULT NULL,
  `fecha_salida3` date DEFAULT NULL,
  `descripcion_3` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_profesionales`
--

INSERT INTO `datos_profesionales` (`no_control`, `empresa_1`, `puesto_1`, `fecha_ingreso1`, `fecha_salida1`, `descripcion_1`, `empresa_2`, `puesto_2`, `fecha_ingreso2`, `fecha_salida2`, `descripcion_2`, `empresa_3`, `puesto_3`, `fecha_ingreso3`, `fecha_salida3`, `descripcion_3`) VALUES
(21010962, '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', ''),
(21010976, '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', ''),
(21011019, 'Coca-Cola', 'Administrador de BD', '2023-02-02', '2023-12-15', 'Me encargaba de supervisar el rendimiento de los sistemas, aplicaba actualizaciones críticas y optimizaba las consultas para garantizar que los equipos tengan acceso rápido y fiable a la información que se necesita. ', 'TYASA', 'Desarrollador web', '2024-05-22', '2026-12-31', 'Me encargaba de diseñar y mantener aplicaciones web intuitivas y eficientes que optimizaran los procesos internos y mejoraran la experiencia del usuario.', '', '', '0000-00-00', '0000-00-00', ''),
(21011026, '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio_sesion`
--

CREATE TABLE `inicio_sesion` (
  `no_control` int(8) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `foto_perfil` varchar(30) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellidos` varchar(30) DEFAULT NULL,
  `estatus` int(11) NOT NULL COMMENT '1=activo, 0=inactivo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inicio_sesion`
--

INSERT INTO `inicio_sesion` (`no_control`, `password`, `foto_perfil`, `nombre`, `apellidos`, `estatus`) VALUES
(21010962, 'brayan10', NULL, 'Brayan', 'Hernández Acevedo', 1),
(21010976, 'jalil20', NULL, 'Adrián Jalil', 'Juárez Antonio', 1),
(21011017, 'hector30', NULL, 'Héctor', 'Orduña López', 1),
(21011018, 'alejandro40', NULL, 'Alejandro', 'Lara Castro', 1),
(21011019, 'felipe50', 'Multimedia/Perfiles/Felipe.jpg', 'José Felipe', 'Pérez Hernández', 1),
(21011020, 'luis60', NULL, 'Luis Yael', 'Pérez Morales', 1),
(21011026, 'daniel70', NULL, 'Jesús Daniel', 'Ramos Llanos', 1),
(23011020, 'yael80', NULL, 'Carlos Yael', 'Jímenez Jímenez', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_academicos`
--
ALTER TABLE `datos_academicos`
  ADD PRIMARY KEY (`no_control`);

--
-- Indices de la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD PRIMARY KEY (`no_control`);

--
-- Indices de la tabla `datos_profesionales`
--
ALTER TABLE `datos_profesionales`
  ADD PRIMARY KEY (`no_control`);

--
-- Indices de la tabla `inicio_sesion`
--
ALTER TABLE `inicio_sesion`
  ADD PRIMARY KEY (`no_control`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos_academicos`
--
ALTER TABLE `datos_academicos`
  ADD CONSTRAINT `fk_no_control` FOREIGN KEY (`no_control`) REFERENCES `datos_personales` (`no_control`);

--
-- Filtros para la tabla `datos_profesionales`
--
ALTER TABLE `datos_profesionales`
  ADD CONSTRAINT `fk_no_control_profesionales` FOREIGN KEY (`no_control`) REFERENCES `datos_personales` (`no_control`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
