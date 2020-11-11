-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2020 at 10:17 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllid` (`id` INT)  BEGIN
	SELECT *  FROM employees
    where id > 2;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllProducts` ()  BEGIN
	SELECT *  FROM customer;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `Branch_Name` varchar(50) NOT NULL,
  `Branch_Location` varchar(50) NOT NULL,
  `Branch_ID` int(11) NOT NULL,
  `emp_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`Branch_Name`, `Branch_Location`, `Branch_ID`, `emp_ID`) VALUES
('vodafon', 'maadi', 1, NULL),
('orange', 'giza', 2, NULL),
('ween', 'october', 3, NULL),
('citystar', 'shrton', 4, NULL),
('suncity', 'nozha', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cus_ID` int(11) NOT NULL,
  `Cus_Name` varchar(30) NOT NULL,
  `Cus_PN` varchar(20) DEFAULT NULL,
  `Cus_Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cus_ID`, `Cus_Name`, `Cus_PN`, `Cus_Address`) VALUES
(1, 'fatma', '1245415845', 'misrelgadeda'),
(2, 'roba', '12445455845', 'gizaa'),
(5, 'ahmed', '1244547455', 'octobercity'),
(1001, 'ali', '1475455525', 'obour city'),
(1002, 'mamdouh', '121474584845', 'nozha'),
(1003, 'khamed', '114755754', '5gizasquare'),
(1004, 'hala', '14748654', '8salahsalem '),
(1005, 'mostafa', '1475995965', 'golfstreet'),
(1006, 'samya', '1249862345', 'abbasya square'),
(1007, 'salwa', '125978545', 'higazsquare'),
(1008, 'nour', '1365846245', 'safersquare'),
(1009, 'menna', '12478965745', 'trimpsquare'),
(1010, 'mohamed', '1245788745', 'madentysquare'),
(1011, 'fatma', '12445745845', 'tadmo3square');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Emp_salary` int(11) DEFAULT NULL,
  `Emp_Shift` varchar(30) NOT NULL,
  `Emp_Job` varchar(30) NOT NULL,
  `Emp_Name` varchar(30) NOT NULL,
  `Emp_ID` int(11) NOT NULL,
  `Emp_PN` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Emp_salary`, `Emp_Shift`, `Emp_Job`, `Emp_Name`, `Emp_ID`, `Emp_PN`) VALUES
(20000, '6PM-12AM', 'Manger', 'test', 1, '01143831115 '),
(7000, '12AM-6AM', 'Pharmacist', 'Ahmed Essam', 4, ' 01023369544'),
(7000, '12AM-6AM', 'Pharmacist ', 'Mohamed Sherif', 5, ' 01123589468 '),
(7000, '6AM-12PM', 'Pharmacist', 'Sara Said', 6, '01000253900'),
(7000, '6AM-12PM', 'Pharmacist ', 'Ahmed Nasser ', 7, '01029855600 '),
(7000, '12PM-6PM', 'Pharmacist', 'Rodaina waleed', 8, '01096546823'),
(7000, '12PM-6PM', 'Pharmacist ', 'Yousef Amr', 9, '01143695682 '),
(3500, '12PM-6PM ', 'delivery ', 'Mohamed Emad', 10, '01115404569 '),
(3500, '  12AM-6AM ', ' delivery', 'Ahmed Barakat', 11, ' 01023475895 '),
(3500, ' 6PM-12AM', ' delivery', 'Hossam Hassan', 12, ' 01223121102 '),
(3500, '  6PM-12AM ', ' delivery', 'David Romany', 13, ' 01229987760 '),
(3500, ' 6AM-12PM', ' delivery', 'Marwan Ahmed', 14, ' 01143698500 '),
(6000, '12AM-6AM', ' security ', 'Mohamed Hesham', 15, '01224568256 '),
(6000, '6AM-12PM', ' security ', 'Ahmed Kamal', 16, '01009987523 '),
(6000, '12PM-6PM', ' security ', 'Moahmed Salem', 17, '01528687523 '),
(6000, '6PM-12AM', ' security ', 'Ahmed Essam', 18, '01225387523 '),
(3000, '6PM-12AM', 'cleaner', 'Essam Hassan', 19, '01225586956 '),
(3000, ' 6AM-12PM', ' cleaner', ' Hatem Gamal ', 20, ' 01118040779 ');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `item_ID` int(11) NOT NULL,
  `Active_Substance` varchar(50) DEFAULT NULL,
  `item_name` varchar(30) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `item_Quantity` int(11) DEFAULT NULL,
  `Supp_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`item_ID`, `Active_Substance`, `item_name`, `Price`, `item_Quantity`, `Supp_ID`) VALUES
(3, ' ibuprofen ', ' Brufen ', 25, 23, NULL),
(6, ' omegaa ', ' omega3 ', 30, 70, NULL),
(7, ' ansolen ', ' ansolensernga ', 25.5, 23, NULL),
(8, ' morfem ', ' motfem ', 50, 40, NULL),
(9, ' profen ', ' catafast ', 12, 80, NULL),
(10, ' pandprofen ', ' pandol ', 19, 60, NULL),
(11, ' ansolena ', ' sugrness ', 25.5, 230, NULL),
(12, ' agelox ', ' agelox ', 30, 1000, NULL),
(13, ' stream ', ' pandeol cold&flu ', 60, 23, NULL),
(14, ' morsena ', ' catflam ', 80, 45, NULL),
(15, ' omega5 ', ' omega ', 45, 30, NULL),
(16, ' stripsel ', ' stream ', 26, 23, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Supp_ID` int(11) NOT NULL,
  `Supp_Name` varchar(50) DEFAULT NULL,
  `Supp_Adress` varchar(120) DEFAULT NULL,
  `Supp_PN` varchar(30) DEFAULT NULL,
  `item_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Supp_ID`, `Supp_Name`, `Supp_Adress`, `Supp_PN`, `item_ID`) VALUES
(1, 'Future', 'Cairo', '02 28849533', NULL),
(2, 'Ramida', 'Alexandria', '01178896168', NULL),
(3, 'Minapharm ', 'Kafr alsheikh', '01257746158', NULL),
(4, 'Marcyrl ', 'Giza', '01024367428', NULL),
(5, 'Novartis ', 'Cairo', '02 37751488', NULL),
(6, 'Astellas ', 'Alexandria', '01178795123', NULL),
(7, 'Memphis ', 'Kafr alsheikh', '02 37613046', NULL),
(8, 'Safa ', 'Luxor', '01127837771', NULL),
(9, 'Pharco ', 'Cairo', '01002783771', NULL),
(10, 'Nile', 'El-Swah square-America - Cairo', '02 2575826', NULL),
(11, 'Amoun', 'Industrial Zone El Obour city , Cairo, Egypt', '01248745987', NULL),
(12, 'GSK (Glaxo Smith kline)', 'Cairo', '02 22807000', NULL),
(13, 'Novartis', ' Ghernata Street Heliopolis - Roxy Egypt', '02 232582751', NULL),
(14, 'EIPICO', 'Golf area,Nasr City,Cairo', '02 24143550', NULL),
(15, 'Sigma', ' Al Reyada st.from Batrawi st.,Nasr city,Cairo ', '02 224029460', NULL),
(16, 'Pharaonia', ' Asma Fahmy division, Pharma Plaza Building,Cairo  ', '02 4155893', NULL),
(17, 'EVA Pharm', '  OPRA , Cairo, Egypt ', '02 4155893', NULL),
(18, 'GNP (Global Napi Pharmaceutical )', 'Ramses St, Cairo', '02 25888002', NULL),
(19, 'Sedico', 'El- Khlifa St, from El-Haram St, Giza ', '02 235861778', NULL),
(20, 'Future', 'Cairo', '02 28849533', NULL),
(21, 'Ramida', 'Alexandria', '01178896168', NULL),
(22, 'Minapharm ', 'Kafr alsheikh', '01257746158', NULL),
(23, 'Marcyrl ', 'Giza', '01024367428', NULL),
(24, 'Novartis ', 'Cairo', '02 37751488', NULL),
(25, 'Astellas ', 'Alexandria', '01178795123', NULL),
(26, 'Memphis ', 'Kafr alsheikh', '02 37613046', NULL),
(27, 'Safa ', 'Luxor', '01127837771', NULL),
(28, 'Pharco ', 'Cairo', '01002783771', NULL),
(29, 'Nile', 'El-Swah square-America - Cairo', '02 2575826', NULL),
(30, 'Amoun', 'Industrial Zone El Obour city , Cairo, Egypt', '01248745987', NULL),
(31, 'GSK (Glaxo Smith kline)', 'Cairo', '02 22807000', NULL),
(32, 'Novartis', ' Ghernata Street Heliopolis - Roxy Egypt', '02 232582751', NULL),
(33, 'EIPICO', 'Golf area,Nasr City,Cairo', '02 24143550', NULL),
(34, 'Sigma', ' Al Reyada st.from Batrawi st.,Nasr city,Cairo ', '02 224029460', NULL),
(35, 'Pharaonia', ' Asma Fahmy division, Pharma Plaza Building,Cairo  ', '02 4155893', NULL),
(36, 'EVA Pharm', '  OPRA , Cairo, Egypt ', '02 4155893', NULL),
(37, 'GNP (Global Napi Pharmaceutical )', 'Ramses St, Cairo', '02 25888002', NULL),
(38, 'Sedico', 'El- Khlifa St, from El-Haram St, Giza ', '02 235861778', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`Branch_ID`),
  ADD UNIQUE KEY `Branch_Location` (`Branch_Location`),
  ADD KEY `emp_ID` (`emp_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cus_ID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Emp_ID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`item_ID`),
  ADD KEY `Supp_ID` (`Supp_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Supp_ID`),
  ADD KEY `item_ID` (`item_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `Branch_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Cus_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `Emp_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `item_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `Supp_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_ibfk_1` FOREIGN KEY (`emp_ID`) REFERENCES `employees` (`Emp_ID`);

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`Supp_ID`) REFERENCES `supplier` (`Supp_ID`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`item_ID`) REFERENCES `inventory` (`item_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
