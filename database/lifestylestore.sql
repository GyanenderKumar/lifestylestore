-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2020 at 04:46 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lifestylestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(5) NOT NULL,
  `name` varchar(25) NOT NULL,
  `price` int(50) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `date_time`) VALUES
(1, 'Cannon EOS', 36000, '2020-12-24 08:57:11'),
(2, 'Nikon EOS', 40000, '2020-12-24 08:58:01'),
(3, 'Sony DSLR', 50000, '2020-12-24 09:10:59'),
(4, 'Olympus DSLR', 50000, '2020-12-24 09:11:39'),
(5, 'Titan Model #301', 13000, '2020-12-24 09:12:06'),
(6, 'Titan Model #201', 3000, '2020-12-24 09:12:28'),
(7, 'HMT Milan', 8000, '2020-12-24 09:12:50'),
(8, 'Faber Luba #111', 18000, '2020-12-24 09:13:15'),
(9, 'H&W', 800, '2020-12-24 09:13:38'),
(10, 'Luis Phil', 1000, '2020-12-24 09:14:00'),
(11, 'John Zok', 1500, '2020-12-24 09:14:21'),
(12, 'Jhalsani', 1300, '2020-12-24 09:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `contact` int(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`, `date_time`) VALUES
(1, 'gk', 'gk@gmail.com', '89bb58f357a4862f4a1629f0db7e3923', 2147483647, 'delhi', 'delhi', '2020-12-24 08:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE `users_items` (
  `user_id` int(5) NOT NULL,
  `item_id` int(5) NOT NULL,
  `status` varchar(25) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`user_id`, `item_id`, `status`, `date_time`) VALUES
(1, 1, 'Added to cart', '2020-12-24 09:15:26'),
(1, 2, 'Added to cart', '2020-12-24 09:15:29'),
(1, 3, 'Added to cart', '2020-12-24 09:15:31'),
(1, 4, 'Added to cart', '2020-12-24 09:15:34'),
(1, 5, 'Added to cart', '2020-12-24 09:15:37'),
(1, 6, 'Added to cart', '2020-12-24 09:15:40'),
(1, 7, 'Added to cart', '2020-12-24 09:15:43'),
(1, 8, 'Added to cart', '2020-12-24 09:15:45'),
(1, 9, 'Added to cart', '2020-12-24 09:15:49'),
(1, 10, 'Added to cart', '2020-12-24 09:15:52'),
(1, 11, 'Added to cart', '2020-12-24 09:15:56'),
(1, 12, 'Added to cart', '2020-12-24 09:15:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
