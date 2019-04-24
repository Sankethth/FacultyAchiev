-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2019 at 02:47 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `achiee`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `name` varchar(50) NOT NULL,
  `id` varchar(10) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `isbn` varchar(10) NOT NULL,
  `staff_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`name`, `id`, `publisher`, `isbn`, `staff_id`) VALUES
('DBMS', '341', 'Pearson', 'A3411', '1234'),
('Tryst', 'tr1234', 'Angels', 'ADF123', '1234'),
('Wings Of Fire', 'wire123', 'Pearson', 'Asdf4321', 'bks1234');

-- --------------------------------------------------------

--
-- Table structure for table `bookFaculty`
--

CREATE TABLE `bookFaculty` (
  `facultyId` varchar(50) NOT NULL,
  `bookId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookFaculty`
--

INSERT INTO `bookFaculty` (`facultyId`, `bookId`) VALUES
('1234', '341'),
('1234', 'tr1234'),
('bks1234', '341');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `dateOfBirth`, `email`, `password`) VALUES
('1234', 'Sgr', '2012-01-02', 'sgr@gmail.com', '1234'),
('2345', 'pt', '1999-01-01', 'pt@gmail.com', '1234'),
('bks1234', 'B.K Srinivas', '2019-01-09', 'bks@rvce.edu.in', '1234'),
('crm1234', 'CRM', '1965-07-07', 'crm@gmail.com', 'crm1234'),
('Emma1234', 'Evan', '2019-02-11', 'emma@gmail.com', '1234'),
('Error', 'Macey', '2017-02-23', 'buruna@mailinator.com', '1234'),
('Eum', 'Lee Goff', '1979-08-13', 'mumu@mailinator.net', 'Pa$$w0rd!'),
('Iusto', 'Levi Pre', '2000-08-19', 'xupypilud@mailinator.net', 'Pa$$w0rd!'),
('Non', 'Wynte', '1993-09-14', 'qocid@mailinator.net', 'Pa$$w0rd!'),
('Om', 'Lucia', '1984-02-17', 'kekuq@mailinator.net', '1234'),
('omk1234', 'Omkar', '2019-03-06', 'omya@gmail.com', '1234'),
('sth1234', 'sth', '2019-03-06', 'sth@1997.com', 'hggf');

-- --------------------------------------------------------

--
-- Table structure for table `patent`
--

CREATE TABLE `patent` (
  `id` varchar(15) NOT NULL,
  `title` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `author` varchar(20) NOT NULL,
  `filedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patent`
--

INSERT INTO `patent` (`id`, `title`, `status`, `author`, `filedDate`) VALUES
('Assumenda', 'Architecto', 'Ut', 'Culpa', '2003-09-25'),
('Eos magna ', 'Dolore delectus', 'In sunt q', 'Nulla tempora e', '1986-09-10'),
('Incidunt ', 'Omnis atque exc', 'Veniam no', 'Tempore nesciu', '1972-02-28'),
('Modi sunt ', 'Dicta ullam vel', 'Ipsum aut ', 'Magnam fugiat ', '1971-12-25'),
('Odit aliqu', 'Autem molestias', 'Perferendi', 'Eveniet quasi ', '2013-11-13'),
('Omnis minu', 'Laudantium omn', 'Aut est c', 'Ipsu', '1976-04-09'),
('Quia molli', 'Rerum minim', 'Lab', 'Deserunt vitae ', '1972-04-25'),
('Rerum sint', 'Voluptatem cons', 'Expedita s', 'Tenetur eos ut ', '1972-12-15'),
('Sed eius c', 'In qui ipsa nu', 'Repudianda', 'Eius aliquam ci', '1995-02-18'),
('Voluptate ', 'Nam consequatur', 'Amet qui ', 'Unde quis aliqu', '2008-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `patentFaculty`
--

CREATE TABLE `patentFaculty` (
  `facultyId` varchar(15) NOT NULL,
  `patentId` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patentFaculty`
--

INSERT INTO `patentFaculty` (`facultyId`, `patentId`) VALUES
('bks1234', 'Incidunt '),
('1234', 'Omnis minu'),
('bks1234', 'Quia molli'),
('1234', 'Rerum sint'),
('emma1234', 'Sed eius c'),
('bks1234', 'Voluptate ');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` varchar(40) NOT NULL,
  `name` varchar(30) NOT NULL,
  `agency` varchar(40) NOT NULL,
  `amount` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `topic` varchar(40) NOT NULL,
  `field` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `agency`, `amount`, `year`, `topic`, `field`) VALUES
('Alia', 'Ross Ayers', 'Enim', 28, 2011, 'Quia', 'Enim'),
('Assumenda ', 'Preston Charles', 'Ut adipisicing deser', 98, 2003, 'Nesciunt nulla quas', 'Doloremque nesciunt'),
('gy', 'uyg', 'fyug', 231, 789, 'uyh', 'tfgh'),
('Herrod Carr', 'Herrod Carr', 'Et elit et velit se', 77, 1978, 'Dolorem tenetur quos', 'Quidem iusto sed com'),
('Iris Dennis', 'Iris Dennis', 'Debitis quia nostrud', 52, 1993, 'Et et dolor quis ius', 'Do sunt omnis in si'),
('Molestias oc', 'Leonard P', 'Vero mo', 91, 1978, 'Eu illo sit volupta', 'Id aperiam et offic'),
('Omnis re', 'Sylvia Bauer', 'Quae cum velit quae ', 35, 2007, 'Illo voluptas dicta ', 'Enim voluptatum et r'),
('Perspici', 'Clemen', 'Sequi', 22, 1990, 'Molestiae', 'Sunt ul'),
('pro123', 'myProject', 'myAgency', 1000, 2000, 'Embedded', 'System'),
('pro1234', 'myProject', 'myAgency', 1000, 1999, 'Embedded', 'System'),
('projectName', 'projectName', 'projectAgency', 1000, 1458, 'projectTopic', 'projectField'),
('Quas', 'Orla Rodgers', 'Vitae in', 88, 2014, 'Est velit fugiat in', 'Officia ab fugiat at'),
('Quia molli', 'uh', 'hb', 123, 1324, 'gb', 'kn'),
('Reiciendis', 'Neve Banks', 'Similiqu', 65, 2001, 'Sint', 'Eos co'),
('sg', 'sdf', 'sd', 123, 1234, 'dfg', 'fg'),
('Vel oc', 'Ima Willis', 'Porro', 85, 1986, 'Volupt', 'Ea');

-- --------------------------------------------------------

--
-- Table structure for table `projectFaculty`
--

CREATE TABLE `projectFaculty` (
  `facultyId` varchar(15) NOT NULL,
  `projectId` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectFaculty`
--

INSERT INTO `projectFaculty` (`facultyId`, `projectId`) VALUES
('bks1234', 'Iris Dennis'),
('bks1234', 'pro123'),
('bks1234', 'gy'),
('bks1234', 'Alia'),
('bks1234', 'Quia molli'),
('1234', 'Vel oc');

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `id` varchar(25) NOT NULL,
  `work` varchar(30) NOT NULL,
  `fundingAgency` varchar(40) NOT NULL,
  `amount` int(11) NOT NULL,
  `topic` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`id`, `work`, `fundingAgency`, `amount`, `topic`) VALUES
('Ab la', 'Quod labor', 'Laborum re', 89, 'Necess'),
('Ea venia', 'Rem et possim', 'Quae officia ', 31, 'Aliquip modi unde qu'),
('Ex au', 'Et occaeca', 'Asperiores', 100, 'Dolor prov'),
('train3', 'Working on ML', 'MLAI', 2000, 'OLD and trends'),
('train4', 'Embedded System Developememnt', 'ARM', 20000, 'Performance impr');

-- --------------------------------------------------------

--
-- Table structure for table `trainingFaculty`
--

CREATE TABLE `trainingFaculty` (
  `trainingId` varchar(15) NOT NULL,
  `facultyId` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainingFaculty`
--

INSERT INTO `trainingFaculty` (`trainingId`, `facultyId`) VALUES
('Ab la', '1234'),
('Ex au', '1234'),
('train4', '1234'),
('Ea venia', 'bks1234'),
('train3', 'bks1234');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `id` varchar(15) NOT NULL,
  `details` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `noOfStudents` int(11) NOT NULL,
  `noOfFaculties` int(11) NOT NULL,
  `noOfIndustries` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workshop`
--

INSERT INTO `workshop` (`id`, `details`, `date`, `noOfStudents`, `noOfFaculties`, `noOfIndustries`) VALUES
('Conseq', 'Volupta', '2017-10-23', 57, 96, 1000),
('Dese', 'S', '1997-02-24', 58, 92, 1000),
('Illum of', 'Ut simili', '2002-04-02', 65, 87, 1000),
('Non s', 'Ipsam ex ', '2007-10-19', 98, 57, 1000),
('Non sdf', 'Ipsam', '2007-10-19', 100, 57, 1001),
('Non sit', 'Ipsam ex ', '2007-10-19', 97, 56, 1000),
('Quis', 'Rep', '1971-06-11', 44, 73, 100),
('Ut aut', 'Aliquid ', '1976-01-20', 41, 66, 1000),
('Ut iure mag', 'Ipsum', '2015-12-15', 27, 82, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `workshopFaculty`
--

CREATE TABLE `workshopFaculty` (
  `facultyId` varchar(15) NOT NULL,
  `workshopId` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workshopFaculty`
--

INSERT INTO `workshopFaculty` (`facultyId`, `workshopId`) VALUES
('1234', 'Quis'),
('bks1234', 'Conseq'),
('bks1234', 'Dese'),
('bks1234', 'Illum of'),
('bks1234', 'Non sdf'),
('bks1234', 'Ut aut');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookFaculty`
--
ALTER TABLE `bookFaculty`
  ADD KEY `facultyId` (`facultyId`),
  ADD KEY `bookId` (`bookId`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patent`
--
ALTER TABLE `patent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patentFaculty`
--
ALTER TABLE `patentFaculty`
  ADD PRIMARY KEY (`facultyId`,`patentId`),
  ADD KEY `patentId` (`patentId`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectFaculty`
--
ALTER TABLE `projectFaculty`
  ADD KEY `projectId` (`projectId`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainingFaculty`
--
ALTER TABLE `trainingFaculty`
  ADD PRIMARY KEY (`trainingId`,`facultyId`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workshopFaculty`
--
ALTER TABLE `workshopFaculty`
  ADD PRIMARY KEY (`workshopId`,`facultyId`),
  ADD KEY `facultyId` (`facultyId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookFaculty`
--
ALTER TABLE `bookFaculty`
  ADD CONSTRAINT `bookFaculty_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`id`),
  ADD CONSTRAINT `bookFaculty_ibfk_2` FOREIGN KEY (`bookId`) REFERENCES `book` (`id`);

--
-- Constraints for table `patentFaculty`
--
ALTER TABLE `patentFaculty`
  ADD CONSTRAINT `patentFaculty_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`id`),
  ADD CONSTRAINT `patentFaculty_ibfk_2` FOREIGN KEY (`patentId`) REFERENCES `patent` (`id`);

--
-- Constraints for table `projectFaculty`
--
ALTER TABLE `projectFaculty`
  ADD CONSTRAINT `projectFaculty_ibfk_1` FOREIGN KEY (`projectId`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projectFaculty_ibfk_2` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trainingFaculty`
--
ALTER TABLE `trainingFaculty`
  ADD CONSTRAINT `trainingFaculty_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trainingFaculty_ibfk_2` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`id`),
  ADD CONSTRAINT `trainingFaculty_ibfk_3` FOREIGN KEY (`trainingId`) REFERENCES `training` (`id`);

--
-- Constraints for table `workshopFaculty`
--
ALTER TABLE `workshopFaculty`
  ADD CONSTRAINT `workshopFaculty_ibfk_1` FOREIGN KEY (`facultyId`) REFERENCES `faculty` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `workshopFaculty_ibfk_2` FOREIGN KEY (`workshopId`) REFERENCES `workshop` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
