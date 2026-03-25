-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 25, 2026 at 05:42 PM
-- Server version: 5.7.44-48
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ktoolan_pet_adoption`
--
CREATE DATABASE IF NOT EXISTS `ktoolan_pet_adoption` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `ktoolan_pet_adoption`;

-- --------------------------------------------------------

--
-- Table structure for table `adopter`
--

CREATE TABLE `adopter` (
  `adopter_ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `adopter`
--

INSERT INTO `adopter` (`adopter_ID`, `name`, `email`, `phone`, `address`) VALUES
(1001, 'John Smith', 'john.smith@gmail.com', '555-1234', '123 Main St, Providence, RI'),
(1002, 'Alice Johnson', 'alice.j@yahoo.com', '555-5678', '456 Elm St, Cranston, RI'),
(1003, 'Michael Anderson', 'mike_a@hotmail.com', '555-9012', '789 Oak St, Warwick, RI'),
(1004, 'Emily Brown', 'em_brown@gmail.com', '555-3456', '321 Maple St, Pawtucket, RI'),
(1005, 'Samantha Wilson', 'sam.wilson@yahoo.com', '555-7890', '654 Pine St, Newport, RI'),
(1006, 'David Martinez', 'dave_m@hotmail.com', '555-2345', '987 Cedar St, East Providence, RI'),
(1007, 'Jennifer Taylor', 'jenn_t@yahoo.com', '555-6789', '741 Birch St, Johnston, RI'),
(1008, 'Christopher White', 'chris.white@gmail.com', '555-0123', '852 Walnut St, North Kingstown, RI'),
(1009, 'Jessica Lee', 'jess.lee@hotmail.com', '555-4567', '369 Spruce St, Woonsocket, RI'),
(1010, 'Ryan Harris', 'ryan.h@yahoo.com', '555-8901', '159 Oakwood Ave, Bristol, RI'),
(1011, 'Amanda Clark', 'amanda.c@gmail.com', '555-2341', '753 Pinecrest Rd, Cumberland, RI'),
(1012, 'Daniel Walker', 'daniel_w@hotmail.com', '555-6785', '852 Maplewood Dr, West Warwick, RI'),
(1013, 'Lauren Rodriguez', 'lauren_r@yahoo.com', '555-0129', '369 Cedar Lane, Narragansett, RI'),
(1014, 'Matthew Garcia', 'matt.garcia@gmail.com', '555-4563', '741 Birchwood Ct, Middletown, RI'),
(1015, 'Sarah Scott', 'sarah_s@yahoo.com', '555-8907', '258 Pinehurst Blvd, Coventry, RI'),
(1016, 'Brandon Thomas', 'bthomas@hotmail.com', '555-2349', '159 Elmwood Ave, Portsmouth, RI'),
(1017, 'Megan Hall', 'megan.hall@gmail.com', '555-6783', '753 Oakdale Rd, Tiverton, RI'),
(1018, 'Joshua Young', 'josh_young@yahoo.com', '555-0127', '852 Maple Ave, Lincoln, RI'),
(1019, 'Kayla King', 'kayla.k@hotmail.com', '555-4561', '369 Pineview Dr, Smithfield, RI'),
(1020, 'Andrew Wright', 'andrew.w@gmail.com', '555-8905', '741 Sunset Blvd, Barrington, RI');

-- --------------------------------------------------------

--
-- Table structure for table `adopts`
--

CREATE TABLE `adopts` (
  `animal_ID` int(11) NOT NULL,
  `adopter_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `adopts`
--

INSERT INTO `adopts` (`animal_ID`, `adopter_ID`) VALUES
(2, 1005),
(7, 1008),
(17, 1010),
(10, 1012),
(14, 1018),
(15, 1018);

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `animal_ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `species` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `breed` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adoption_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`animal_ID`, `name`, `species`, `breed`, `age`, `sex`, `adoption_status`) VALUES
(1, 'Fluffy', 'Cat', 'Persian', 3, 'Female', 'Pending'),
(2, 'Max', 'Dog', 'Labrador Retriever', 2, 'Male', 'Adopted'),
(3, 'Bunny', 'Rabbit', 'Holland Lop', 1, 'Female', 'Pending'),
(4, 'Charlie', 'Bird', 'Parakeet', 1, 'Male', 'Available'),
(5, 'Whiskers', 'Cat', 'Siamese', 4, 'Female', 'Pending'),
(6, 'Buddy', 'Dog', 'Golden Retriever', 5, 'Male', 'Pending'),
(7, 'Snowball', 'Rabbit', 'Mini Rex', 2, 'Female', 'Adopted'),
(8, 'Mittens', 'Cat', 'Maine Coon', 3, 'Male', 'Available'),
(9, 'Daisy', 'Dog', 'Poodle', 3, 'Female', 'Available'),
(10, 'Coco', 'Bird', 'Cockatiel', 2, 'Female', 'Adopted'),
(11, 'Oreo', 'Rabbit', 'Lionhead', 1, 'Male', 'Pending'),
(12, 'Bella', 'Cat', 'Bengal', 2, 'Female', 'Available'),
(13, 'Rocky', 'Dog', 'German Shepherd', 4, 'Male', 'Pending'),
(14, 'Kiwi', 'Bird', 'Budgerigar', 1, 'Male', 'Adopted'),
(15, 'Luna', 'Cat', 'Sphynx', 2, 'Female', 'Adopted'),
(16, 'Teddy', 'Dog', 'Shih Tzu', 3, 'Male', 'Pending'),
(17, 'Nibbles', 'Rabbit', 'Flemish Giant', 2, 'Female', 'Adopted'),
(18, 'Echo', 'Cat', 'Russian Blue', 4, 'Male', 'Available'),
(19, 'Roxy', 'Dog', 'Boxer', 5, 'Female', 'Available'),
(20, 'Sunny', 'Bird', 'Canary', 3, 'Female', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `application_ID` int(11) NOT NULL,
  `animal_ID` int(11) DEFAULT NULL,
  `adopter_ID` int(11) DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`application_ID`, `animal_ID`, `adopter_ID`, `application_date`, `status`) VALUES
(201, 1, 1001, '2024-01-05', 'Pending'),
(202, 1, 1002, '2024-01-06', 'Rejected'),
(203, 2, 1005, '2024-01-07', 'Approved'),
(204, 2, 1006, '2024-01-07', 'Rejected'),
(205, 3, 1006, '2024-01-07', 'Pending'),
(206, 5, 1007, '2024-01-15', 'Pending'),
(207, 6, 1007, '2024-01-15', 'Pending'),
(208, 7, 1008, '2024-01-17', 'Approved'),
(209, 8, 1009, '2024-01-17', 'Rejected'),
(210, 10, 1012, '2024-01-22', 'Approved'),
(211, 11, 1013, '2024-02-02', 'Pending'),
(212, 11, 1015, '2024-02-05', 'Rejected'),
(213, 13, 1017, '2024-02-07', 'Pending'),
(214, 14, 1018, '2024-02-12', 'Approved'),
(215, 15, 1018, '2024-02-12', 'Approved'),
(216, 16, 1019, '2024-02-17', 'Pending'),
(217, 16, 1020, '2024-02-22', 'Rejected'),
(218, 16, 1002, '2024-02-25', 'Rejected'),
(219, 17, 1010, '2024-03-02', 'Approved'),
(220, 17, 1002, '2024-03-07', 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `has`
--

CREATE TABLE `has` (
  `animal_ID` int(11) NOT NULL,
  `application_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `has`
--

INSERT INTO `has` (`animal_ID`, `application_ID`) VALUES
(1, 201),
(1, 202),
(2, 203),
(2, 204),
(3, 205),
(5, 206),
(6, 207),
(7, 208),
(8, 209),
(10, 210),
(11, 211),
(11, 212),
(13, 213),
(14, 214),
(15, 215),
(16, 216),
(16, 217),
(16, 218),
(17, 219),
(17, 220);

-- --------------------------------------------------------

--
-- Table structure for table `submits`
--

CREATE TABLE `submits` (
  `adopter_ID` int(11) NOT NULL,
  `application_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `submits`
--

INSERT INTO `submits` (`adopter_ID`, `application_ID`) VALUES
(1001, 201),
(1002, 202),
(1005, 203),
(1006, 204),
(1006, 205),
(1007, 206),
(1007, 207),
(1008, 208),
(1009, 209),
(1012, 210),
(1013, 211),
(1015, 212),
(1017, 213),
(1018, 214),
(1018, 215),
(1019, 216),
(1020, 217),
(1002, 218),
(1010, 219),
(1002, 220);

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `name` text COLLATE utf8_unicode_ci,
  `assignment` text COLLATE utf8_unicode_ci,
  `contact_info` text COLLATE utf8_unicode_ci,
  `shift_date` text COLLATE utf8_unicode_ci,
  `shift_time` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`name`, `assignment`, `contact_info`, `shift_date`, `shift_time`) VALUES
('Meowly Cyrus', 'Whiskers, Feed', '(555) 123-9876, meowly.c@catlover.net', 'March 2, 2025', '9-10 AM'),
('Clawdia Pawsworth', 'Tweety, Feed', '(555) 369-8520, clawdia.paws@kittenmail.com', '2025-03-02', '9-10 AM'),
('Droolius Caesar', 'Rex, Walk', '(555) 753-1596, droolius.c@bigchews.com', '2025-03-03', '11-12 PM'),
('Clawdia Pawsworth', 'Thumper, Feed', '(555) 369-8520, clawdia.paws@kittenmail.com', 'March 3, 2025', '9-10 AM'),
('Meowly Cyrus', 'Fluffy, Clean', '(555) 123-9876, meowly.c@catlover.net', 'March 1, 2025', '1-2 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adopter`
--
ALTER TABLE `adopter`
  ADD PRIMARY KEY (`adopter_ID`);

--
-- Indexes for table `adopts`
--
ALTER TABLE `adopts`
  ADD PRIMARY KEY (`animal_ID`,`adopter_ID`),
  ADD KEY `adopter_ID` (`adopter_ID`);

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`animal_ID`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`application_ID`),
  ADD KEY `animal_ID` (`animal_ID`),
  ADD KEY `adopter_ID` (`adopter_ID`);

--
-- Indexes for table `has`
--
ALTER TABLE `has`
  ADD PRIMARY KEY (`animal_ID`,`application_ID`),
  ADD KEY `application_ID` (`application_ID`);

--
-- Indexes for table `submits`
--
ALTER TABLE `submits`
  ADD PRIMARY KEY (`adopter_ID`,`application_ID`),
  ADD KEY `application_ID` (`application_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adopts`
--
ALTER TABLE `adopts`
  ADD CONSTRAINT `adopts_ibfk_1` FOREIGN KEY (`animal_ID`) REFERENCES `animal` (`animal_ID`),
  ADD CONSTRAINT `adopts_ibfk_2` FOREIGN KEY (`adopter_ID`) REFERENCES `adopter` (`adopter_ID`);

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`animal_ID`) REFERENCES `animal` (`animal_ID`),
  ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`adopter_ID`) REFERENCES `adopter` (`adopter_ID`);

--
-- Constraints for table `has`
--
ALTER TABLE `has`
  ADD CONSTRAINT `has_ibfk_1` FOREIGN KEY (`animal_ID`) REFERENCES `animal` (`animal_ID`),
  ADD CONSTRAINT `has_ibfk_2` FOREIGN KEY (`application_ID`) REFERENCES `applications` (`application_ID`);

--
-- Constraints for table `submits`
--
ALTER TABLE `submits`
  ADD CONSTRAINT `submits_ibfk_1` FOREIGN KEY (`adopter_ID`) REFERENCES `adopter` (`adopter_ID`),
  ADD CONSTRAINT `submits_ibfk_2` FOREIGN KEY (`application_ID`) REFERENCES `applications` (`application_ID`);
--
-- Database: `ktoolan_toystore`
--
CREATE DATABASE IF NOT EXISTS `ktoolan_toystore` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `ktoolan_toystore`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custID` int(9) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custID`, `username`, `password`, `name`, `email`) VALUES
(1, 'toyboss', 'lego123', 'Benny Brickman', 'benny.brickman@gmail.com'),
(2, 'dollqueen', 'barbie456', 'Daisy Dollington', 'daisy.dollington@yahoo.com'),
(3, 'rc_racer', 'vroom789', 'Ricky Racetrack', 'ricky.racetrack@hotmail.com'),
(4, 'puzzle_master', 'puzzle999', 'Peter Puzzler', 'peter.puzzler@uri.edu'),
(5, 'plushlover', 'teddy777', 'Tina Teddington', 'tina.teddington@gmail.com'),
(6, 'actionfan', 'hero321', 'Alex Actionfigure', 'alex.actionfigure@yahoo.com'),
(7, 'gamewizard', 'dice555', 'Gary Gameboard', 'gary.gameboard@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `manuf`
--

CREATE TABLE `manuf` (
  `manID` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manuf`
--

INSERT INTO `manuf` (`manID`, `name`, `street`, `city`, `state`, `zip`, `phone`, `contact`) VALUES
('0001', 'Blocky Brick Co.', '101 Stud Lane', 'Bricksville', 'NY', '11551', '843-999-9999', 'Benny Brick'),
('0002', 'Tiny Tots Factory', '25 Playtime Plaza', 'Playtown', 'PA', '14554', '999-333-4030', 'Penny Play'),
('0003', 'Rainbow Playworks', '78 Imagination Way', 'Toyville', 'NY', '11552', '003-949-3942', 'Sunny Smiles'),
('0004', 'WonderWorld Toys', '9 Adventure Ave', 'Action City', 'NY', '10001', '932-028-3758', 'Oliver Orbit'),
('0005', 'ToyChest Creations', '56 Gameboard Circle', 'Gameboard', 'MA', '02111', '832-392-3942', 'Ruby Rattle'),
('0006', 'Giggle Factory Inc.', '83 Build-It Blvd', 'Buildington', 'NM', '45548', '323-496-8263', 'Milo Merry');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `custID` int(11) DEFAULT NULL,
  `toyID` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date_ordered` date DEFAULT NULL,
  `deliv_addr` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_deliv` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `custID`, `toyID`, `quantity`, `date_ordered`, `deliv_addr`, `date_deliv`) VALUES
('0001', 1, '0001', 1, '2026-02-05', '12 Brick Lane, Buildertown, NY 11551', '2026-02-10'),
('0002', 1, '0002', 2, '2026-03-01', '12 Brick Lane, Blockville, NY 11551', '2026-03-05'),
('0003', 2, '0003', 1, '2025-11-21', '45 Puzzle Plaza, Funville, PA 14554', '2025-11-26'),
('0004', 3, '0003', 1, '2026-01-12', '78 Imagination Way, Toytown, NY 11552', '2026-01-17'),
('0005', 4, '0006', 1, '2025-12-05', '9 Adventure Ave, Actionopolis, NY 10001', '2025-12-10'),
('0006', 5, '0002', 1, '2026-02-15', '56 Gameboard Circle, Gametown, MA 02111', '2026-02-20'),
('0007', 3, '0001', 3, '2026-03-18', '78 Imagination Way, Toytown, NY 11552', '2026-03-23'),
('0008', 4, '0009', 2, '2025-11-10', '9 Adventure Ave, Actionopolis, NY 10001', '2025-11-15'),
('0009', 2, '0001', 1, '2026-01-05', '101 Lego Loop, Buildville, PA 14554', '2026-01-10'),
('0010', 6, '0008', 1, '2026-02-20', '83 Construct Blvd, Constructopia, NM 45548', NULL),
('0011', 1, '0003', 1, '2026-01-15', '12 Brick Lane, Blockville, NY 11551', NULL),
('0012', 1, '0003', 1, '2026-01-20', '500 Fun St, Playtopia, NY 11551', '2026-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `toy`
--

CREATE TABLE `toy` (
  `toyID` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `manID` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `age_range` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sold` int(11) DEFAULT '0',
  `in_stock` int(11) DEFAULT NULL,
  `img_src` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `toy`
--

INSERT INTO `toy` (`toyID`, `name`, `manID`, `price`, `age_range`, `sold`, `in_stock`, `img_src`, `description`) VALUES
('0001', 'Farm', '0001', 50.00, '2-6', 100, 300, 'https://m.media-amazon.com/images/I/71otpMmWakL._AC_UF894,1000_QL80_.jpg', 'Welcome to the bustling world of the farmyard! This playset features adorable farm animals, a barn, and fields for endless pretend play adventures.'),
('0002', 'Dollhouse', '0002', 30.00, '5-9', 100, 300, 'https://m.media-amazon.com/images/I/81nWvpYZZYL.jpg', 'Step into the world of make-believe with this beautifully crafted dollhouse. Furnished with miniature furniture, it\'s perfect for imaginative storytelling and role-playing.'),
('0003', 'AntFarm', '0004', 35.00, '6-10', 100, 300, 'https://cdn.shoplightspeed.com/shops/666253/files/54729772/1652x1652x2/ant-farm-classic-uncle-milton.jpg', 'Discover the fascinating world of ants with this interactive ant farm. Watch as your tiny inhabitants build tunnels, gather food, and create their own miniature society.'),
('0004', 'Crane', '0003', 15.00, '3-10', 100, 300, 'https://i5.walmartimages.com/seo/Crane-Toy-Construction-Truck-Diecast-Vehicles-Kids-Sandbox-Car-Boy-Birthday-Gift-Age-3-Up-Children-Toddler-Present_0211fd8d-439e-45fb-99f6-b7ca7d05441c.9fd8cc516fd98896def15fdaf9117ee3.jpeg', 'Construct, deconstruct, and reconstruct with this sturdy toy crane. Perfect for aspiring builders and engineers, it encourages creativity and hands-on problem-solving.'),
('0005', 'Bugs', '0002', 20.00, '5-10', 100, 300, 'https://m.media-amazon.com/images/I/A14qLs2OSwL.jpg', 'Get ready for a bug-tastic adventure with these lifelike insect figures. Explore the wonders of the insect world and learn about different species while having fun.'),
('0006', 'TeddyBear', '0005', 10.00, '1-100', 100, 300, 'https://m.media-amazon.com/images/I/81tkpZqGgjL._AC_UF894,1000_QL80_.jpg', 'Meet your new cuddly companion! This soft and huggable teddy bear is always ready for hugs, tea parties, and bedtime snuggles.'),
('0007', 'MonsterBed', '0005', 15.00, '5-10', 100, 300, 'https://i5.walmartimages.com/seo/Monster-High-Toys-Clawdeen-Wolf-Bedroom-Playset_78a98dc3-2d9e-4c69-bc57-fc5376f372c4.4344199142c8812a4c221a8aa4eefbd3.jpeg', 'Transform bedtime into a magical adventure with this whimsical monster bed. With its playful design and cozy comfort, it\'s sure to inspire sweet dreams.'),
('0008', 'HairSalon', '0003', 25.00, '3-12', 100, 300, 'https://assets.wfcdn.com/im/27922868/compr-r85/1597/159700163/doll-hair-salon-set.jpg', 'Unleash your inner stylist with this toy hair salon. Get creative with hair styling, makeup, and fashion, and become the ultimate glam squad!'),
('0009', 'AppleTree', '0001', 6.00, '4-12', 100, 200, 'https://static.wixstatic.com/media/7dfa47_b7691168eaab4775853860de46b7402e~mv2.jpg/v1/fill/w_480,h_404,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/7dfa47_b7691168eaab4775853860de46b7402e~mv2.jpg', 'A charming playset that lets children cultivate their imagination. Grow imaginary apples, pick them, and sell them at your make-believe market!'),
('0010', 'Monkey', '0004', 100.00, '2-25', 100, 300, 'https://i.pinimg.com/originals/2f/d8/66/2fd866e430e8ecfad4c2ce860fe5d1d2.png', 'Swing into fun and excitement with this adorable plush monkey. With its playful antics and infectious energy, it\'s the perfect companion for imaginative playtime.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custID`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `manuf`
--
ALTER TABLE `manuf`
  ADD PRIMARY KEY (`manID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `custID` (`custID`),
  ADD KEY `toyID` (`toyID`);

--
-- Indexes for table `toy`
--
ALTER TABLE `toy`
  ADD PRIMARY KEY (`toyID`),
  ADD KEY `manID` (`manID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `custID` FOREIGN KEY (`custID`) REFERENCES `customer` (`custID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `toyID` FOREIGN KEY (`toyID`) REFERENCES `toy` (`toyID`) ON UPDATE CASCADE;

--
-- Constraints for table `toy`
--
ALTER TABLE `toy`
  ADD CONSTRAINT `manID` FOREIGN KEY (`manID`) REFERENCES `manuf` (`manID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
