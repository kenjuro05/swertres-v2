-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2023 at 08:13 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swertres2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `swertres_no` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `swertres_no`, `type`, `amount`, `time`, `date`, `status`) VALUES
(18, 123, 'straight', 5, '10:27:00', '2023-07-13', 'pending'),
(19, 306, 'straight', 20, '10:30:00', '2023-07-13', 'pending'),
(20, 306, 'ramble', 5, '10:30:00', '2023-07-13', 'pending'),
(21, 123, 'ramble', 5, '10:36:00', '2023-07-13', 'pending'),
(22, 333, 'straight', 50, '10:37:00', '2023-07-13', 'pending'),
(23, 789, 'straight', 5, '05:00:00', '2023-07-13', 'pending'),
(24, 789, 'ramble', 10, '10:58:00', '2023-07-13', 'pending'),
(25, 234, 'ramble', 30, '10:58:00', '2023-07-13', 'pending'),
(26, 333, 'straight', 90, '10:58:00', '2023-07-13', 'pending'),
(27, 774, 'ramble', 20, '12:56:00', '2023-07-15', 'pending'),
(28, 309, 'ramble', 50, '12:56:00', '2023-07-15', 'pending'),
(29, 788, 'straight', 15, '01:16:00', '2023-07-14', 'pending'),
(30, 788, 'ramble', 20, '01:16:00', '2023-07-14', 'pending'),
(31, 123, 'straight', 5, '02:10:00', '2023-07-14', 'pending'),
(32, 123, 'ramble', 5, '04:10:00', '2023-07-14', 'pending'),
(33, 513, 'straight', 5, '05:13:00', '2023-07-14', 'pending'),
(34, 513, 'ramble', 5, '05:13:00', '2023-07-14', 'pending'),
(35, 123, 'straight', 5, '09:23:00', '2023-07-14', 'pending'),
(36, 123, 'ramble', 5, '09:23:00', '2023-07-14', 'pending'),
(37, 309, 'straight', 10, '07:20:00', '2023-07-15', 'pending'),
(38, 339, 'ramble', 20, '07:20:00', '2023-07-15', 'pending'),
(39, 999, 'straight', 5, '10:16:00', '2023-07-15', 'pending'),
(40, 999, 'straight', 15, '10:22:00', '2023-07-16', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`) VALUES
(1, 'user', 'ee11cbb19052e40b07aac0ca060c23ee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
