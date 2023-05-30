-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 09:24 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'keyboard │ Royal Kludge RK H81', 'Brand Name: RK Royal Kludge\r\nProduct Model: RK H81\r\nKeys Number:81\r\nAxis Body: Celadon Switch\r\nConnection Mode:2.4G Wireless & Bluetooth & USB Wired\r\nBacklit: RGB\r\nLayout: 81 Keys 80% Keyboard Layout\r\nSystem: Windows/Android/Mac/IOS\r\nBattery Capacity:3750mAh', 2999, 'kb1.webp', 'kb2.webp', 'kb3.webp'),
(2, 'keyboard │ Royal Kludge RK100', 'Brand: Royal kludge (RK) \r\nModel: RK100 Tri mode RGB version \r\nColor: White and Black\r\nKey cover material: ABS \r\nSwitch: Brown and Red \r\nConnection: 2.4Ghz Wireless + Bluetooth + USB Wired Tri Mode \r\nLayout: 100 Key \r\nBacklit: RGB Backlit \r\nDimensions: 368x120x40mm \r\nVoltage: 5V \r\nSystem Support: Windows XP/VISTA/7/8/10 with Bluetooth adapter, IOS, macOS, Linux, Android', 2499, 'kb4.webp', 'kb5.webp', 'kb6.webp'),
(3, 'keycaps │ A-SOUL EILEEN', 'Product Name: A-Soul Eileen \r\n\r\nProfile: Cherry Profile\r\n\r\nMaterial: PBT Dye Sublimation\r\n\r\nNumber of Keys: 130 keys\r\n\r\nPackaging: Boxed\r\n\r\n \r\n\r\nNOTE: THESE ARE JUST KEYCAPS, NOT THE ENTIRE KEYBOARD.', 1354, 'kc1.jpg', 'kc2.jpg', 'kc3.jpg'),
(4, 'keycaps │ CINNAMOROLL', 'Product Name: Cinnamoroll PBT Keycap Set\r\nProfile: XDA Profile\r\nMaterial: PBT Dye Sublimation\r\nNumber of Keys: 144 keys\r\nPackaging: Boxed\r\n\r\n\r\nNOTE: THESE ARE JUST KEYCAPS, NOT THE ENTIRE KEYBOARD.', 1180, 'kc4.png', 'kc5.png', 'kc6.png'),
(5, 'switches │ C³ EQUALZ X TKC BANANA SPLIT', 'C³ Equalz X TKC Banana Split - Linear (UNLUBED) \r\n\r\nSmooth execution with no bump! \r\n\r\nLinear switch with 62g Gold Spring \r\n\r\nNylon & Polycarbonate Blended Housing POM(polyoxymethylene) \r\n\r\nStem Linear MX Switch with 5-pin PCB mount \r\n\r\nDesigned by C³Equalz and manufactured by JWK', 39, 's1.jpg', 's2.jpg', 's3.jpg'),
(6, 'switches │ GATERON CJ (CHINAJOY)', 'Gateron CJ (Chinajoy)  - Linear\r\n\r\nI hope these bring you JOY!\r\n\r\n50g actuation, 60g bottom out\r\n\r\n22mm gold plated spring\r\n\r\nLinear MX Switch with 5-pin\r\n\r\nTransparent top - same material as the Inks\r\n\r\nPOM opaque bottom housing\r\n\r\nPOM stem\r\n\r\n22mm long spring\r\n\r\nNot lubed - Dry', 34, 's4.jpg', 's5.jpg', 's6.jpg'),
(7, 'deskmats │ Kanagawa Wave Extended Mousepad', 'The surface is made of smooth polyester fiber\r\nNatural rubber base for anti-slip effect\r\nStitched edges for extra durability \r\n3mm thickness\r\nHigh-quality print and materials\r\nWashable ', 749, 'Screenshot (141).png', 'Screenshot (142).png', 'Screenshot (143).png'),
(8, 'deskmats │ Inari Torii Extended Mousepad', 'The surface is made of smooth polyester fiber\r\nNatural rubber base for anti-slip effect\r\nStitched edges for extra durability 3mm thickness High-quality print and materials Washable', 924, 'Screenshot (144).png', 'Screenshot (145).png', 'Screenshot (146).png'),
(9, 'wrist rest │ DEMON SLAYER NEZUKO KAMADO', 'Demon Slayer Nezuko Kamado Wrist Rest\r\nMade of Silk Fabric & Eco Silicone\r\n- Non-slip PU base\r\n- Soft to touch\r\n- Responsive silicon to provide support to your wrist\r\n- Relieves wrist and fingers fatigue\r\n- Reduces carpal tunnel syndrome from prolonged usage of keyboard\r\nDimension: 360mm x 75mm x 20mm', 689, 'wr1.png', 'wr1.png', 'wr1.png'),
(10, 'wrist rest │ DEMON SLAYER SHINOBU KOCHO', 'Demon Slayer Shinobu Kocho Wrist Rest\r\nMade of Silk Fabric & Eco Silicone\r\n- Non-slip PU base\r\n- Soft to touch\r\n- Responsive silicon to provide support to your wrist\r\n- Relieves wrist and fingers fatigue\r\n- Reduces carpal tunnel syndrome from prolonged usage of keyboard\r\nDimension: 360mm x 75mm x 20mm', 689, 'wr2.jpg', 'wr2.jpg', 'wr2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'jayvee bernardo', 'jayveebernardo.basc@gmail.com', '601f1889667efaebb33b8c12572835da3f027f78');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;