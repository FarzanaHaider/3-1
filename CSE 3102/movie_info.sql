-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 08:14 PM
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
-- Database: `movie_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `Person_ID` int(11) NOT NULL,
  `Actor_Name` varchar(250) NOT NULL,
  `Birth_Year` int(11) NOT NULL,
  `No-of_Films` int(11) NOT NULL,
  `No_of_Awards` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`Person_ID`, `Actor_Name`, `Birth_Year`, `No-of_Films`, `No_of_Awards`) VALUES
(4, 'Anjan Dutt', 1953, 39, 10),
(6, 'Gautam Ghose', 1950, 3, 1),
(7, 'Aparna Sen', 1945, 73, 43),
(8, 'Kaushik Ganguly', 1968, 22, 7),
(10, 'Soumitra Chatterjee', 1935, 250, 220),
(11, 'Uttam Kumar', 1926, 190, 150),
(12, 'Razzak', 1942, 120, 100);

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `Person_ID` int(11) NOT NULL,
  `Director_Name` varchar(250) NOT NULL,
  `Birth_Year` int(11) NOT NULL,
  `No-of_Films` int(11) NOT NULL,
  `No_of_Awards` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`Person_ID`, `Director_Name`, `Birth_Year`, `No-of_Films`, `No_of_Awards`) VALUES
(1, 'Zahir Raihan', 1935, 5, 5),
(2, 'Rajkumar Hirani', 1962, 5, 9),
(3, 'Satyajit Ray', 1921, 45, 55),
(4, 'Anjan Dutt', 1953, 23, 17),
(5, 'Rituparno Ghosh', 1963, 20, 15),
(6, 'Goutam Ghose', 1950, 12, 8),
(7, 'Aparna Sen', 1945, 12, 7),
(8, 'Kaushik Ganguly', 1968, 23, 30);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `Movie_ID` int(11) NOT NULL,
  `Movie_Name` varchar(250) NOT NULL,
  `Genre` varchar(250) NOT NULL,
  `Year` int(11) NOT NULL,
  `IMDB_Rating` float NOT NULL,
  `Director_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`Movie_ID`, `Movie_Name`, `Genre`, `Year`, `IMDB_Rating`, `Director_ID`) VALUES
(1, 'Pather Panchali', 'Drama', 1955, 8.5, 3),
(2, 'Noukadubi', 'Drama', 2011, 7.6, 5),
(3, 'Abohomaan', 'Drama', 2009, 7.3, 5),
(4, 'Joi Baba Felunath', 'Thriller', 1979, 8, 3),
(5, 'Jibon Theke Neya', 'Drama', 1970, 9.4, 1),
(6, 'Moner Manush', 'Biography', 2010, 8, 6),
(8, 'Apur Panchali', 'Biography', 2013, 8.2, 8),
(9, 'Goynar Baksho', 'Comedy', 2013, 7.1, 7),
(10, 'Byomkesh O Agnibaan', 'Thriller', 2017, 7.4, 4),
(11, 'Byomkesh Bakshi', 'Thriller', 2010, 7.4, 4),
(12, 'PK', 'Fiction', 2014, 8.2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`Person_ID`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`Person_ID`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`Movie_ID`),
  ADD KEY `Director_ID` (`Director_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `Person_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE `director`
  MODIFY `Person_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `Movie_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `Director_ID` FOREIGN KEY (`Director_ID`) REFERENCES `director` (`Person_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
