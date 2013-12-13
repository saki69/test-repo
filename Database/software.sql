-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 09, 2013 at 07:40 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `software`
--

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE IF NOT EXISTS `crops` (
  `ID` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Scientific_name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crop_fertilizer_map`
--

CREATE TABLE IF NOT EXISTS `crop_fertilizer_map` (
  `Fertilizer_ID` varchar(50) NOT NULL,
  `Crop_ID` varchar(50) NOT NULL,
  PRIMARY KEY (`Fertilizer_ID`,`Crop_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crop_pest_map`
--

CREATE TABLE IF NOT EXISTS `crop_pest_map` (
  `Crop_id` varchar(50) NOT NULL,
  `Pest_id` varchar(50) NOT NULL,
  PRIMARY KEY (`Crop_id`,`Pest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crop_varities`
--

CREATE TABLE IF NOT EXISTS `crop_varities` (
  `ID` varchar(50) NOT NULL,
  `Crop_id` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Image_source` varchar(255) NOT NULL,
  `Plant_time` varchar(100) NOT NULL,
  `Reap_time` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE IF NOT EXISTS `diseases` (
  `ID` varchar(50) NOT NULL,
  `Crop_id` varchar(50) NOT NULL,
  `Original_name` varchar(50) NOT NULL,
  `Local_name` varchar(50) NOT NULL,
  `Cure` varchar(200) NOT NULL,
  `Symptoms` varchar(200) NOT NULL,
  `Image_source` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `disease_sample`
--

CREATE TABLE IF NOT EXISTS `disease_sample` (
  `ID` varchar(50) NOT NULL,
  `Disease_name` varchar(50) NOT NULL,
  `Sample_source` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `ID` varchar(50) NOT NULL,
  `User_id` varchar(50) NOT NULL,
  `Solution` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fertilizer`
--

CREATE TABLE IF NOT EXISTS `fertilizer` (
  `ID` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Usage_Limit` int(250) NOT NULL,
  `Manufacturer` varchar(50) NOT NULL,
  `Time_for_use` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `general_users_info`
--

CREATE TABLE IF NOT EXISTS `general_users_info` (
  `User_id` varchar(50) NOT NULL,
  `Area` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL,
  `Division` varchar(50) NOT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE IF NOT EXISTS `month` (
  `Month_id` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pesticide`
--

CREATE TABLE IF NOT EXISTS `pesticide` (
  `ID` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Manufacturer` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pests`
--

CREATE TABLE IF NOT EXISTS `pests` (
  `ID` varchar(50) NOT NULL,
  `Original_name` varchar(50) NOT NULL,
  `Local_name` varchar(50) NOT NULL,
  `Symptoms` varchar(255) NOT NULL,
  `Image_source` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pest_pesticide_map`
--

CREATE TABLE IF NOT EXISTS `pest_pesticide_map` (
  `Pest_id` varchar(50) NOT NULL,
  `Pesticide_id` varchar(50) NOT NULL,
  `Usage_limit` int(50) NOT NULL,
  PRIMARY KEY (`Pest_id`,`Pesticide_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `ID` varchar(50) NOT NULL,
  `User_id` varchar(50) NOT NULL,
  `Query` varchar(50) NOT NULL,
  `Image_source` varchar(250) NOT NULL,
  `Probable_disease` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `ID` varchar(50) NOT NULL,
  `District_name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `NID` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Control_flag` varchar(50) NOT NULL,
  PRIMARY KEY (`NID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `varity_region_map`
--

CREATE TABLE IF NOT EXISTS `varity_region_map` (
  `Varity_id` varchar(50) NOT NULL,
  `Region_id` varchar(50) NOT NULL,
  PRIMARY KEY (`Varity_id`,`Region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
