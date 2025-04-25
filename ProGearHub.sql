-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 25-04-2025 a las 04:28:56
-- Versión del servidor: 10.4.34-MariaDB-1:10.4.34+maria~ubu2004
-- Versión de PHP: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ProGearHub`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`, `submitted_at`) VALUES
(1, 'John Doe', 'john@example.com', 'Product Inquiry', 'Do you have mountain bikes available?', '2025-04-24 13:59:56'),
(2, 'Jane Smith', 'jane@example.com', 'Order Issue', 'I need to change my shipping address.', '2025-04-24 13:59:56'),
(3, 'edfgsdg', 'asdfdsa@gmail.com', 'sfijwsdifj', 'swdifjwspiofjwes', '2025-04-25 04:23:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL CHECK (`quantity` > 0),
  `price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) GENERATED ALWAYS AS (`quantity` * `price`) STORED,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`order_id`, `customer_name`, `email`, `product_name`, `quantity`, `price`, `order_date`) VALUES
(1, 'Alice Brown', 'alice@example.com', 'Running Shoes', 2, 59.99, '2025-04-24 13:59:56'),
(2, 'Bob White', 'bob@example.com', 'Tennis Racket', 1, 89.99, '2025-04-24 13:59:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `Name` varchar(32) DEFAULT NULL,
  `Category` varchar(17) DEFAULT NULL,
  `Description` varchar(256) DEFAULT NULL,
  `Price` varchar(7) DEFAULT NULL,
  `Image` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `Name`, `Category`, `Description`, `Price`, `Image`) VALUES
(1, 'Nike Air Zoom Pegasus 40', 'Running Shoes', 'Lightweight, cushioned running shoes for long-distance comfort.', '$129.99', 'NikeAirZoomPegasus40.jpg'),
(2, 'Adidas Tiro 21 Training Pants', 'Activewear', 'Moisture-wicking soccer-style pants for workouts.', '$55.00', 'Adidas Tiro 21 Training Pants.jpg'),
(3, 'Wilson Evolution Basketball', 'Basketball', 'Premium composite leather indoor/outdoor game ball.', '$69.95', 'Wilson Evolution Basketball.jpg'),
(4, 'Yonex Astrox 99 Badminton Racket', 'Racquet Sports', 'High-tension racket for aggressive smashes.', '$249.99', 'Yonex Astrox 99 Badminton Racket.jpg'),
(5, 'Garmin Forerunner 945', 'Fitness Tech', 'GPS smartwatch with heart rate & advanced running metrics.', '$599.99', 'Garmin Forerunner 945.jpg'),
(6, 'Hydro Flask Water Bottle (32 oz)', 'Accessories', 'Insulated stainless steel bottle for athletes.', '$44.95', 'Hydro Flask Water Bottle (32 oz).jpg'),
(8, 'Spalding NBA Street Basketball', 'Outdoor Sports', 'Durable outdoor rubber basketball.', '$24.99', 'Spalding NBA Street Basketball.jpg'),
(9, 'Theragun Elite Massager', 'Recovery', 'Percussive therapy device for muscle recovery.', '$399.00', 'Theragun Elite Massager.jpg'),
(10, 'Under Armour Tech 2.0 T-Shirt', 'Activewear', 'Breathable, quick-dry fabric for training.', '$29.99', 'Under Armour Tech 2.0 T-Shirt.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
