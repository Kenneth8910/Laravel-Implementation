-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2024 at 03:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineresume`
--

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `cellphone` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `civil_status` varchar(20) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `tertiary` text DEFAULT NULL,
  `tertiary_address` text DEFAULT NULL,
  `tertiary_course` text DEFAULT NULL,
  `secondary` text DEFAULT NULL,
  `secondary_address` text DEFAULT NULL,
  `secondary_course` text DEFAULT NULL,
  `work_exp` text DEFAULT NULL,
  `company` text DEFAULT NULL,
  `years` text DEFAULT NULL,
  `objective` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `name`, `address`, `cellphone`, `email`, `birthdate`, `age`, `civil_status`, `religion`, `gender`, `tertiary`, `tertiary_address`, `tertiary_course`, `secondary`, `secondary_address`, `secondary_course`, `work_exp`, `company`, `years`, `objective`) VALUES
(1, 'Kenneth Dela Cruz Hernandez', '03 Tenejero, Pulilan, Bulacan', '09270340740', 'hkenneth2218@gmail.com', '2001-09-22', 23, 'Single', 'Catholic', 'Male', 'Baliwag Polytechnic College', 'Poblacion, Baliuag, Bulacan', 'Bachelor of Science in Information Technology', 'Next Generation Technological College', 'Poblacion, Plaridel, Bulacan', 'Technical-Vocational Livelihood: Information and Communications Technology', 'Work Immersion as Faculty Assistant', 'Next Generation Technological College', '2 Weeks', 'I am seeking for a job where my knowledge and experience will not only be refined but also improve the status of the company.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
