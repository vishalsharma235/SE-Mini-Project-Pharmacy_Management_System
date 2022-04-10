-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2021 at 05:56 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

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

-- --------------------------------------------------------

--
-- Table structure for table `ayurvedic_med`
--

CREATE TABLE `ayurvedic_med` (
  `AM_id` varchar(10) NOT NULL,
  `AM_name` varchar(80) NOT NULL,
  `Man_name` varchar(80) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Self_loc` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ayurvedic_med`
--

INSERT INTO `ayurvedic_med` (`AM_id`, `AM_name`, `Man_name`, `Type`, `Self_loc`, `Price`) VALUES
('A001', 'Sudarshan Ghanvati', 'ZANDU PHARMACEUTICALS WORKS LTD.', 'Tablet', 'AS1', 80),
('A002', 'Zandu Balm 25 ml', 'ZANDU PHARMACEUTICALS WORKS LTD.', 'Gel', 'AZ1', 85),
('A003', 'Sitopaladi Churna 25g', 'ZANDU PHARMACEUTICALS WORKS LTD.', 'Tablet', 'AS1', 40),
('A004', 'Drakshasava 450 ml', 'ZANDU PHARMACEUTICALS WORKS LTD.', 'Syrup', 'AD1', 175),
('A005', 'Pudin Hara Active 10 ml', 'Dabur India Ltd.', 'Syrup', 'AP1', 20),
('A006', 'Pudin Hara Pearls', 'Dabur India Ltd.', 'Tablet', 'AP1', 20),
('A007', 'Honitus Cough Syrup', 'Dabur India Ltd.', 'Syrup', 'AH1', 65),
('A008', 'Himcolin Gel', 'The Himalaya Drug Company', 'Gel', 'AH1', 160),
('A009', 'Jiva stress free', 'North India  Life Science', 'Tablet', 'AS2', 80),
('A010', 'Indukantham', 'North India life Science', 'Tablet', 'AS3', 100),
('A011', 'Yogi Kantika Pills', 'North India  Life Science', 'Tablet', 'AS4', 110),
('A012', 'Organic Shatavari Root', 'Paras Ayurvedic Pharma', 'Power', 'AS5', 70),
('A014', 'Soria Natual', 'Paras Ayurvedic Pharma', 'Syrup', 'AS5', 200),
('A016', 'Kama Ayurvedic Oil', 'Immense Healthcare', 'Oil', 'AS7', 210),
('A017', 'Sambucol For Kids', 'Immense Healthcare', 'Tablet', 'AS8', 100),
('A018', 'Himaliya Brahmi', 'The Himalaya Drug Company', 'Oil', 'AS6', 90);

-- --------------------------------------------------------

--
-- Table structure for table `care_products`
--

CREATE TABLE `care_products` (
  `C_id` varchar(10) NOT NULL,
  `CP_name` varchar(80) NOT NULL,
  `Manu_name` varchar(80) NOT NULL,
  `Self_loc` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `care_products`
--

INSERT INTO `care_products` (`C_id`, `CP_name`, `Manu_name`, `Self_loc`, `Price`) VALUES
('HH001', 'Juicy Pear Body Butter', 'Body Shop', 'HHD7', 400),
('HH002', 'White Musk Flora Body Lotion', 'Body Shop', 'HHA3', 300),
('HH003', 'Shower gel', 'Coco Soul Production', 'HHE6', 200),
('HH004', 'Exotic rose air freshener', 'Winall production', 'HHB6', 350),
('HH005', 'Colgate charcoal clean toothpaste ', 'Colgate productions ', 'HHC8', 450),
('HH006', 'Dettol Liquid hand sanitizers', 'Dettol pvt limited', 'HHD2', 200),
('HH007', 'Dettol Instent Hand Wash', 'Dettol pvt limited', 'HHA1', 300),
('SC001', 'AGE REVOLUTION NIGHT CREAM', 'NeuMe productions', 'SCD7', 400),
('SC002', 'Charcoal Facewash', 'NeuMe productions', 'SCF5', 300),
('SC003', 'Hello Aloe! Soothing Skincare Kit', 'The body shop productions', 'SCE6', 500),
('SC004', 'Seaweed Balance Sheet Mask', 'Body Shop', 'SCA2', 200),
('SC005', 'Lip Sleeping Mask', 'Sephora Productions', 'SCB8', 350),
('SC006', 'The True Cream Aqua Bomb', 'Sephora Productions', 'SCB4', 450),
('SC007', 'Skin Defence Multi-Protection Face Mist', 'Sephora Productions', 'SCC6', 550);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_id` int(11) NOT NULL,
  `Customer_fn` varchar(50) NOT NULL,
  `Customer_ln` varchar(50) NOT NULL,
  `Email_id` varchar(50) NOT NULL,
  `Contact_no` varchar(10) NOT NULL,
  `Gender` enum('m','f') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_id`, `Customer_fn`, `Customer_ln`, `Email_id`, `Contact_no`, `Gender`) VALUES
(1001, 'Kristian', 'Lopez', 'k.riley@gmail.com', '9387590958', 'm'),
(1002, 'Leonardo', 'Andrews', 'l.andrews@gmail.com', '9897543123', 'm'),
(1003, 'John', 'Myers', 'j.myers@yahoo.com', '9689402634', 'm'),
(1004, 'Edith', 'Phillips', 'e.phillips@yahoo.com', '9948384305', 'f'),
(1005, 'Brianna', 'Alexander', 'b.alexander@yahoo.com', '9976296499', 'f'),
(1006, 'Vanessa', 'Robinson', 'v.robinson@gmail.com', '9074230937', 'f'),
(1007, 'Patrick', 'Walker', 'p.walker@gmail.com', '9584044972', 'm'),
(1008, 'Carl', 'Armstrong', 'c.armstrong@yahoo.com', '9473999261', 'm'),
(1009, 'Lucas', 'Stevens', 'l.stevens@gmail.com', '9936172829', 'm'),
(1010, 'Adam', 'Armstrong', 'a.armstrong@yahoo.com', '9709376725', 'm'),
(1011, 'Anna', 'Thompson', 'a.thompson@gmail.com', '9816063884', 'f'),
(1012, 'Lilianna', 'Smith', 'l.smith@yahoo.com', '9201461338', 'f'),
(1013, 'Sam', 'Brown', 's.brown@gmail.com', '9934751178', 'm'),
(1014, 'Michelle', 'Barnes', 'm.barnes@gmail.com', '9784399417', 'f'),
(1015, 'Adelaide', 'Campbell', 'a.campbell@yahoo.com', '9837161513', 'f'),
(1016, 'Lyndon', 'Roberts', 'l.roberts@gmail.com', '9114846090', 'm'),
(1017, 'Dale', 'Campbell', 'd.campbell@yahoo.com', '9122896418', 'm'),
(1018, 'Vincent', 'Turner', 'v.turner@gmail.com', '9856307999', 'm'),
(1019, 'Carl', 'Stevens', 'c.stevens@gmail.com', '9385852284', 'm'),
(1020, 'Miley', 'Spencer', 'm.spencer@yahoo.com', '9645680082', 'f'),
(1021, 'Rishika', 'Sharma', 'rishika3031@gmail.com', '9172615278', 'f'),
(1022, 'Namitha', 'Menon', 'namitha.m20@gmail.com', '9800067543', 'f'),
(1023, 'Dhruv', 'Bansal', 'dhruvbansal@gmail.com', '9876786908', 'm'),
(1024, 'Erika', 'D Souza', 'erika202@gmail.com', '8262882727', 'f'),
(1025, 'Khushboo', 'Kumar', 'kkumar@gmail.com', '8867562154', 'f'),
(1026, 'Chirag', 'Pinto', 'chirag44@gmail.com', '9890976589', 'm'),
(1027, 'Ravi', ' Kishor', 'ravi.k@gmail.com', '9876378290', 'm'),
(1028, 'Mehak', 'Mittal', 'mmittal@gmail.com', '9769022092', 'f'),
(1029, 'Ananya', 'Pathak', 'ananyap@gmail.com', '9762510096', 'f'),
(1030, 'Atharva', 'Pawar', 'atharvapawar@gmail.com', '9672614627', 'm'),
(1031, 'Harshal', 'Jain', 'harshal200@gmail.com', '9920449752', 'm'),
(1654, 'Shubham', 'Boke', 'shubhamboke.99@gmail.com', '7218824832', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `general_items`
--

CREATE TABLE `general_items` (
  `GItem_id` varchar(10) NOT NULL,
  `GItem_name` varchar(80) NOT NULL,
  `Manu_name` varchar(80) NOT NULL,
  `Self_loc` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_items`
--

INSERT INTO `general_items` (`GItem_id`, `GItem_name`, `Manu_name`, `Self_loc`, `Price`) VALUES
('G001', 'Dabur Glucose D', 'Dabur India Ltd.', 'GG1', 45),
('G002', 'Dabur Honey', 'Dabur India Ltd.', 'GH1', 180),
('G003', 'Potato Wafers- Classic Salted', 'Balaji Wafers and Namkeens Pvt. Ltd.', 'GB1', 15),
('G004', 'Fogg Impressio', 'Vini Cosmetics Pvt. Ltd', 'GB1', 175),
('G005', 'Potato Wafers- Cream N Onion', 'Balaji Wafers and Namkeens Pvt. Ltd.', 'GB1', 15),
('G008', 'KitKat Chocolate', 'Nestle India Ltd', 'GG2', 100),
('G009', 'Orange Khari biscuit', 'Parampara India Ltd', 'GG3', 90),
('G010', 'Maggi', 'Nestle India Ltd', 'GG5', 200),
('G011', 'Snickers Bar', 'Mars Pvt Ltd', 'GG7', 30),
('G012', 'Butter Milk Packed', 'Nestle India Ltd', 'GG6', 205),
('G013', 'Lays chips', 'Lays chips pvt Ltd.', 'GG6', 300),
('G014', 'Ice Cream Stick', 'Dairy Queen pvt Ltd', 'GG5', 100),
('G015', 'Pepper Soda', 'Paper boat India pvt Ltd.', 'GG7', 200);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `Hospital_id` int(11) NOT NULL,
  `Hospital_name` varchar(80) NOT NULL,
  `R_name` varchar(45) NOT NULL,
  `R_id` int(11) NOT NULL,
  `Email_id` varchar(45) NOT NULL,
  `Contact_no` varchar(10) NOT NULL,
  `Gender` enum('m','f') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`Hospital_id`, `Hospital_name`, `R_name`, `R_id`, `Email_id`, `Contact_no`, `Gender`) VALUES
(3001, 'Massachusetts General Hospital', 'Fenton Myers', 26808, 'mgh@gmail.com', '9843199944', 'm'),
(3002, 'Johns Hopkins Hospital', 'Deanna Murphy', 41453, 'hopkins@yahoo.com', '9433074950', 'f'),
(3003, 'Cleveland General Hospital', 'Lenny Higgins', 65538, 'clevelandgh@yahoo.com', '9071381907', 'm'),
(3004, 'NY Presbyterian Hospital', 'Alisa Walker', 51005, 'nyp@gmail.com', '9273539452', 'f'),
(3005, 'UCLA Medical Center', 'Mike Wilson', 17612, 'ucla@gmail.com', '9873611739', 'm'),
(3006, 'UCSF Medical Center', 'Joyce Clark', 38350, 'ucsf@yahoo.com', '9703653085', 'f'),
(3007, 'Cedars-Sinai Medical Center', 'Oscar Elliott', 17478, 'sinai@yahoo.com', '9105547422', 'm'),
(3008, 'NYU Langone Hospital', 'Charlotte Armstrong', 49985, 'c.armstrong@yahoo.com', '9880725491', 'f'),
(3009, 'Northwestern Memorial Hospital', 'Harold Johnston', 37917, 'nwh@gmail.com', '9065263761', 'm'),
(3010, 'Stanford Health Care', 'Lenny Edwards', 10967, 'stanfordhc@yahoo.com', '9139548568', 'm'),
(3011, 'Brigham and Womens Hospital', 'Chloe Robinson', 71060, 'brigham@gmail.com', '9577391988', 'f'),
(3012, 'Mount Sinai Hospital', 'Grace Wright', 78493, 'mountsinai@gmail.com', '9021825696', 'f'),
(3013, 'UPMC Presbyterian Shadyside Hospital', 'Lily Armstrong', 73961, 'upmcside@gmail.com', '9523897634', 'f'),
(3014, 'Keck Hospital', 'Adele Robinson', 61316, 'keckhos@yahoo.com', '9599171588', 'f'),
(3015, 'Houston Methodist Hospital', 'Tara Cunningham', 11178, 't.cunningham@yahoo.com', '9120044849', 'f'),
(3016, 'Tufts Medical Center', 'Chelsea Douglas', 32751, 'tufts@gmail.com', '9289066297', 'f'),
(3017, 'Beaumont Hospital', 'Amelia Rogers', 57955, 'beaumont@gmail.com', '9146144614', 'f'),
(3018, 'Miami Valley Hospital', 'Sofia Howard', 21951, 'mvhos@yahoo.com', '9116113993', 'f'),
(3019, 'Inova Alexandria Hospital', 'Aiden Holmes', 98260, 'ialexhos@yahoo.com', '9088738973', 'm'),
(3020, 'Henry Ford Hospital', 'Rubie Foster', 54660, 'fordhos@yahoo.com', '9319106838', 'f'),
(3021, 'Apollo Hospital', 'Om Sharma', 26814, 'contactus@apollo.com', '9884767809', 'm'),
(3022, 'Apollo Hospital', 'Kunal Mittal', 26815, 'contactus@apollo.com', '988476009', 'm'),
(3023, 'MGM Hospital', 'Sanjana Sanil', 26816, 'contactus@mgm.com', '9884767809', 'f'),
(3024, 'PKCHospital', 'Charu Sharma ', 26817, 'contactus@pkc.com', '8890765478', 'm'),
(3025, 'Cloud9 Hospital', 'Dev Aras', 26818, 'contactus@cloudnine.com', '9884767809', 'm'),
(3026, 'Uma Hospital', 'Vikram Jain', 26819, 'contactus@uma.com', '9884767809', 'm'),
(3027, 'MGM Hospital', 'Rekha Sagar', 26809, 'rekha.s@gmail.com', '9878767809', 'f'),
(3028, 'VML Hospital', 'Kiran  Kaur', 26811, 'kaur @gmail.com', '8890567809', 'f'),
(3029, 'MGM Hospital', 'Rahul sahu', 26812, 'rahul.s@gmail.com', '9878767809', 'm'),
(3030, 'Fortis Hospital', 'Pallavi Patil', 26813, 'contactus@fortis.com', '9878756789', 'f'),
(3031, 'Fortis Hospital', 'Vinod Kumar', 26810, 'vinodk@gmail.com', '9878777009', 'm'),
(3318, 'Shree', 'shb', 12345, 'shree@gmail.com', '2222222222', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ID` varchar(10) NOT NULL,
  `Available` int(11) NOT NULL,
  `Sold` int(11) NOT NULL,
  `Exp_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ID`, `Available`, `Sold`, `Exp_date`) VALUES
('A001', 18, 10, '2020-11-01'),
('A002', 10, 3, '2021-02-19'),
('A003', 8, 5, '2021-07-12'),
('A004', 10, 4, '2022-01-28'),
('A005', 12, 8, '2020-09-22'),
('A006', 10, 5, '2020-10-19'),
('A007', 7, 3, '2021-04-03'),
('A008', 5, 1, '2022-01-01'),
('A009', 20, 7, '2020-12-01'),
('A010', 35, 10, '2023-12-01'),
('A011', 50, 20, '2021-08-01'),
('A012', 100, 20, '2022-06-10'),
('A013', 35, 7, '2020-07-25'),
('A014', 50, 15, '2023-06-20'),
('A015', 25, 7, '2020-11-11'),
('A016', 60, 30, '2021-07-05'),
('A017', 70, 20, '2020-02-01'),
('A018', 80, 30, '2021-12-11'),
('G001', 12, 5, '2021-06-19'),
('G002', 8, 2, '2045-09-29'),
('G003', 18, 12, '2021-01-01'),
('G004', 10, 4, '2022-12-01'),
('G005', 20, 10, '2021-01-01'),
('G006', 12, 6, '2021-06-30'),
('G007', 10, 5, '2022-05-23'),
('G008', 50, 10, '2010-11-21'),
('G009', 50, 20, '2022-08-10'),
('G010', 10, 5, '2021-01-01'),
('G011', 30, 10, '2023-05-01'),
('G012', 50, 8, '2020-12-30'),
('G013', 40, 7, '2021-09-01'),
('G014', 50, 10, '2022-11-11'),
('G015', 60, 10, '2020-12-01'),
('HH001', 8, 7, '2022-05-23'),
('HH002', 20, 7, '2022-10-20'),
('HH003', 30, 10, '2021-05-13'),
('HH004', 40, 15, '2023-12-01'),
('HH005', 50, 20, '2022-06-20'),
('HH006', 55, 25, '2021-03-26'),
('HH007', 40, 15, '2022-07-28'),
('HP001', 10, 5, '2022-05-23'),
('HP002', 20, 7, '2022-10-20'),
('HP003', 30, 10, '2021-05-13'),
('HP004', 40, 15, '2023-12-01'),
('HP005', 50, 20, '2022-06-20'),
('HP006', 55, 25, '2021-03-26'),
('HP007', 40, 15, '2022-07-28'),
('M001', 13, 10, '2021-01-01'),
('M002', 10, 5, '2021-05-16'),
('M003', 19, 13, '2021-12-31'),
('M004', 10, 4, '2021-11-16'),
('M005', 10, 3, '2022-02-25'),
('M006', 20, 7, '2020-12-01'),
('M007', 24, 6, '2023-12-01'),
('M008', 50, 10, '2010-11-21'),
('M009', 50, 20, '2022-08-10'),
('M010', 10, 5, '2021-01-01'),
('M011', 30, 10, '2023-05-01'),
('M012', 50, 8, '2020-12-30'),
('M013', 40, 7, '2021-09-01'),
('M014', 50, 10, '2022-11-11'),
('M015', 60, 10, '2020-12-01'),
('PM001', 35, 6, '2021-07-15'),
('PM002', 50, 5, '2022-05-20'),
('PM003', 9, 7, '2022-03-13'),
('PM004', 17, 4, '2022-09-21'),
('PM005', 45, 10, '2023-08-31'),
('PM006', 10, 5, '2022-05-23'),
('PM007', 15, 3, '2021-07-15'),
('S001', 5, 2, '2032-07-17'),
('S002', 5, 1, '2035-01-15'),
('S003', 8, 3, '2029-08-12'),
('S004', 25, 10, '2020-08-01'),
('S005', 20, 5, '2023-10-01'),
('S006', 20, 7, '2020-12-01'),
('S007', 25, 5, '2023-12-01'),
('S008', 50, 10, '2010-11-21'),
('S009', 100, 20, '2022-08-10'),
('S010', 150, 60, '2021-01-01'),
('S011', 300, 150, '2023-05-01'),
('S012', 50, 8, '2020-12-30'),
('S013', 100, 7, '2021-09-01'),
('S014', 200, 90, '2022-11-11'),
('S015', 60, 10, '2020-12-01'),
('SC001', 10, 5, '2022-05-23'),
('SC002', 20, 5, '2021-05-26'),
('SC003', 30, 15, '2022-08-13'),
('SC004', 15, 3, '2022-04-20'),
('SC005', 35, 10, '2023-01-20'),
('SC006', 20, 6, '2021-02-15'),
('SC007', 11, 2, '2022-07-13');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `Medicine_id` varchar(10) NOT NULL,
  `M_name` varchar(80) NOT NULL,
  `Manu_name` varchar(80) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Self_loc` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `Prescription` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`Medicine_id`, `M_name`, `Manu_name`, `Type`, `Self_loc`, `Price`, `Prescription`) VALUES
('HP001', 'Pulsatilla', 'HomyoXpert company', 'Tablet', 'HPE6', 85, 'Y'),
('HP002', 'Nux vomica', 'HomyoXpert company', 'Tablet', 'HPB3', 80, 'Y'),
('HP003', 'Magnesia phosphorica', 'Homeodent company', 'Tablet', 'HPC8', 90, 'Y'),
('HP004', 'Ignatia', 'Homeodent company', 'Tablet', 'HPD1', 100, 'Y'),
('HP005', 'Allium cepa', 'Boiron Homeopathics', 'Tablet', 'HPC7', 200, 'Y'),
('HP006', 'Chamomilla', ' BHI Homeopathics', 'Tablet', 'HPC6', 250, 'Y'),
('HP007', 'Hypericum', 'Hevert Pharmaceuticals', 'Tablet', 'HPA5', 300, 'Y'),
('M001', 'Cetimax Cold Tablet', 'ZYDUS CADILA', 'Tablet', 'MC1', 25, 'N'),
('M0012', 'Derantox Capsule', 'Koye Pharmaceuticals Pvt ltd', 'Tablet', 'MC9', 22, 'Y'),
('M002', 'Cold Nova', 'UNIVERSAL HEALTH SCIENCES', 'Tablet', 'MC1', 38, 'Y'),
('M003', 'Calpol 500mg', 'GLAXOSMITHKLINE PHARMACEUTICALS Ltd', 'Tablet', 'MG1', 15, 'N'),
('M004', 'LEMOLATE ', 'YASH PHARMA LABORATORIES Pvt Ltd', 'Tablet', 'ML1', 30, 'N'),
('M005', 'Cough Cure Expectorant 500 ml', 'Hapro Homeo-Chem (P) Ltd.', 'Syrup', 'MC1', 255, 'Y'),
('M006', 'Malidens 500Mg', 'Endocard India pvt limited', 'Tablet', 'MC2', 35, 'Y'),
('M007', 'Hindrishiayurveda Zero-tar Syrup ', 'Endocard India pvt Limited', 'Syrup', 'MC3', 30, 'N'),
('M008', 'Electral Powder', 'Koye Pharmaceuticals Pvt ltd', 'Power', 'MC7', 20, 'N'),
('M009', 'Ascabiol Emulsion', 'Abbott', 'Syrup', 'MC5', 35, 'Y'),
('M010', 'Durajoint Plus Capsule', 'Methylphenidate', 'Tablet', 'MC4', 45, 'N'),
('M011', 'Knight Power', 'Universal Heth science', 'Power', 'MC7', 35, 'Y'),
('M013', 'Goestress Capsule', 'Koye Pharmaceuticals Pvt ltd', 'Tablet', 'MC3', 40, 'Y'),
('M014', 'Endolac-Fort Capsule', 'ZYDUS CADILA', 'Tablet', 'MC8', 65, 'N'),
('M015', 'Becotrol Capsules', 'ZYDUS CADILA', 'Tablet', 'MC9', 70, 'N'),
('PM001', 'Metronidazole', 'Bravecto Productions', 'Tablet', 'PMD7', 400, 'Y'),
('PM002', 'Famotidine', 'Bravecto productions', 'Tablet', 'PMA4', 300, 'Y'),
('PM003', 'Diphenhydramine', 'Vivapets company', 'Tablet', 'PMC6', 500, 'Y'),
('PM004', 'Enacard', 'Viva pets company', 'Tablet', 'PME7', 600, 'Y'),
('PM005', 'Salix', 'Cosequin production', 'Syrup', 'PMB2', 250, 'Y'),
('PM006', 'Rimadyl', 'Cosequin production', 'Tablet', 'PMD8', 450, 'Y'),
('PM007', 'Atopica', 'Milbemax company', 'Tablet', 'PMA5', 350, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `surgical_products`
--

CREATE TABLE `surgical_products` (
  `SP_id` varchar(10) NOT NULL,
  `S_name` varchar(80) NOT NULL,
  `Man_name` varchar(80) NOT NULL,
  `Self_loca` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surgical_products`
--

INSERT INTO `surgical_products` (`SP_id`, `S_name`, `Man_name`, `Self_loca`, `Price`) VALUES
('S001', 'Sponge Holding & Dressing Forceps,Foerster,20Cm-8\"', 'Hebson Surgical Company', 'SF1', 350),
('S002', 'Scissors,Olivecrona,14.5Cm-5 3/4\"', 'Hebson Surgical Company', 'SO1', 550),
('S003', 'METZENBAUM -STILLIES - SCISSOR 4\"', 'Warden Surgical CO. PVT. LTD.', 'SM1', 400),
('S005', 'Catheter Trays', 'All India Surgical Manufacturing Company', 'SF4', 300),
('S006', 'Electrosurgical Dispersive Plates', 'Bharat Surgical Company', 'SF6', 250),
('S007', 'Head Mirror Reflectors', 'DOLPHIN INSTRUMENTS Company', 'SF7', 340),
('S008', 'Instrument Holders', 'MEHTA TRADING CORPORATION', 'SF5', 500),
('S009', 'Instrument Stands Stainless Steel', 'Siddhi Surgical', 'SF3', 300),
('S010', 'Lubricating Gel', 'Parmar SurgicalsCompany', 'SF1', 600),
('S011', 'Patient positioners', 'Kalelker Surgicals Pvt Ltd', 'SF8', 350),
('S012', 'Skin cream', 'Navkar Medical Supply', 'SF2', 3250),
('S013', 'Gloves', 'Hebson Surgical Company', 'SF4', 450),
('S014', 'CSR Wraps', 'Bafna Surgical Company', 'SF4', 150),
('S015', 'Face Mask', 'Manufacturing of E.N.T Instruments', 'SF9', 360);

-- --------------------------------------------------------

--
-- Table structure for table `temp_cart`
--

CREATE TABLE `temp_cart` (
  `M_name` varchar(20) NOT NULL,
  `Price` int(20) NOT NULL,
  `Quantity` int(20) NOT NULL,
  `Sub_total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ayurvedic_med`
--
ALTER TABLE `ayurvedic_med`
  ADD PRIMARY KEY (`AM_id`);

--
-- Indexes for table `care_products`
--
ALTER TABLE `care_products`
  ADD PRIMARY KEY (`C_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_id`);

--
-- Indexes for table `general_items`
--
ALTER TABLE `general_items`
  ADD PRIMARY KEY (`GItem_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`Hospital_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`Medicine_id`);

--
-- Indexes for table `surgical_products`
--
ALTER TABLE `surgical_products`
  ADD PRIMARY KEY (`SP_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
