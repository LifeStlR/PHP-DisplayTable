-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2022 at 08:28 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `std_id` char(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_code` char(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MID` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FINAL` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`std_id`, `subject_code`, `MID`, `FINAL`) VALUES
('10296832', 'KK021', '60', '75'),
('10296126', 'KD132', '70', '90'),
('31296500', 'KK021', '55', '40'),
('41296525', 'KU122', '90', '80'),
('50096487', 'KU122', '75', '75'),
('21196353', 'KD132', '80', '10');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `std_id` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` char(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` char(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`std_id`, `name`, `address`) VALUES
('10296832', 'Nur Hayati', 'Jakarta'),
('10296126', 'Astuti', 'Depok'),
('31296500', 'Budi', 'Depok'),
('41296525', 'Prananingrum', 'Bogor'),
('50096487', 'Pipit', 'Bekasi'),
('21196353', 'Quraish', 'Bogor'),
('10296001', 'Fitri', 'Depok'),
('21198002', 'Julizar', 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Subject_code` char(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Subject_name` char(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Credit` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Subject_code`, `Subject_name`, `Credit`) VALUES
('KK021', 'Database System', '2'),
('KK132', 'MIS', '3'),
('KU122', ' Pancasila', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD KEY `IDXSTD` (`std_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD KEY `IDXSC` (`Subject_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
