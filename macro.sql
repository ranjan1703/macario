-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2018 at 10:12 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `macro`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(100) NOT NULL,
  `car_name` varchar(256) NOT NULL,
  `car_model` varchar(255) NOT NULL,
  `model_no` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `car_name`, `car_model`, `model_no`) VALUES
(1, 'nissan', 'centra', 4),
(3, 'ford', 'Tauras', 4),
(5, 'nissan', 'skyline', 2),
(6, 'nissan', 'maxima', 4),
(7, 'ford', 'escort', 4);

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `model_id` int(100) NOT NULL,
  `model_name` varchar(255) NOT NULL,
  `model_no` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`model_id`, `model_name`, `model_no`) VALUES
(3, 'T30', 2),
(4, 'e50', 4);

-- --------------------------------------------------------

--
-- Table structure for table `newtb1`
--

CREATE TABLE `newtb1` (
  `id` int(11) NOT NULL,
  `car_name` varchar(255) NOT NULL,
  `car_model` varchar(255) NOT NULL,
  `model_no` int(100) NOT NULL,
  `model_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newtb1`
--

INSERT INTO `newtb1` (`id`, `car_name`, `car_model`, `model_no`, `model_name`) VALUES
(1, 'nissan', 'centra', 4, 'e50'),
(2, 'ford', 'Tauras', 4, 'e50'),
(3, 'nissan', 'skyline', 2, 'T30'),
(4, 'nissan', 'maxima', 4, 'e50'),
(5, 'ford', 'escort', 4, 'e50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `newtb1`
--
ALTER TABLE `newtb1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `model_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `newtb1`
--
ALTER TABLE `newtb1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
