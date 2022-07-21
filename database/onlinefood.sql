-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2019 at 07:44 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefood`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `type` int(1) NOT NULL COMMENT '0=drinks, 1=main course, 2=desert, 3=fast food, 4=set menu',
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `restaurant_id`, `title`, `type`, `price`) VALUES
(8, 14, 'Pastry ', 2, 600),
(9, 14, 'Burger', 3, 120),
(12, 14, 'Mango juice', 0, 70),
(13, 14, 'Coffee', 0, 85),
(14, 15, 'Chicken Burger', 0, 150),
(15, 15, 'Black Forest', 2, 150),
(16, 15, 'Coffee', 0, 300),
(17, 16, 'Large Pizza', 3, 200),
(18, 16, 'Vegetable Pizza', 3, 150),
(19, 16, 'Mango Juice', 0, 120),
(20, 17, 'Black forest', 2, 300),
(21, 17, 'Chicken Fried Rice ', 4, 400),
(22, 18, 'Chicken Fried Rice', 4, 500),
(23, 18, 'Coffee', 0, 300),
(24, 18, 'Beef Burger', 3, 300),
(25, 19, 'Kacchi Biriyani', 4, 800),
(26, 19, 'Borhani', 0, 80),
(27, 19, 'Chaa', 0, 40);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `title`, `address`, `phone`, `email`) VALUES
(14, 'Tasty Treat', 'Badda Link Road, Dhaka', '000000015674', 'tastytreat@gmail.com'),
(15, 'Burger King', 'Bashundhara R/A, Dhaka', '00000045681', 'burgerking@gmail.com'),
(16, 'Pizza Hut', 'Gulshan-1, Dhaka', '00000077731', 'pizzahut@gmail.com'),
(17, 'Coldstone Creamery', 'Gulshan-1, Dhaka', '00000099999', 'coldstonecreamary@gmail.com'),
(18, 'Takeout', 'Dhanmondi, Dhaka', '0000776456', 'takeout@gmail.com'),
(19, 'Star Kabab', 'Banani, Dhaka', '00005555554', 'starkabab@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`) VALUES
(2, 'Moin Uddin', 'pay2moin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0123456789'),
(3, 'Alice', 'alice@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0123456788'),
(4, 'Andrew ', 'andrew@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '12345678765'),
(5, 'Bob', 'bob@gmail.com', '25d55ad283aa400af464c76d713c07ad', '12345678909');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
