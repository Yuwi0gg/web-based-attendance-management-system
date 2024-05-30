-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2022 at 01:55 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbattendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `AutoID` int(11) NOT NULL,
  `AutoStart` varchar(30) NOT NULL,
  `AutoEnd` int(11) NOT NULL,
  `AutoInc` int(11) NOT NULL,
  `AutoType` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`AutoID`, `AutoStart`, `AutoEnd`, `AutoInc`, `AutoType`) VALUES
(1, '2017', 56, 1, 'AuthPrint');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `CourseID` int(11) NOT NULL,
  `CourseCode` varchar(30) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `DepartmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`CourseID`, `CourseCode`, `Description`, `DepartmentID`) VALUES
(3, 'BSIT', 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY', 1),
(4, 'BEED', 'BACHELOR OF SCIENCE IN ELEMENTARY EDUCATION', 4),
(5, 'BSBA Financial Management', 'BACHELOR OF SCIENCE IN BUSINES ADMINISTRATION', 3),
(6, 'BSED', 'BACHELOR  OF SCIENCE IN SECONDARY EDUCATION', 4),
(7, 'BSC', 'BACHELOR IN SOFTWARE ENGINEERING', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE `tbldepartment` (
  `DepartmentID` int(11) NOT NULL,
  `Department` varchar(30) NOT NULL,
  `Description` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`DepartmentID`, `Department`, `Description`) VALUES
(1, 'ITE', 'IT DEPARTMENT'),
(3, 'BITE', 'BUSINESS AND IT EDUCATION'),
(4, 'TEA', 'TEACHER EDUCATION DEPARTMENT');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogs`
--

CREATE TABLE `tbllogs` (
  `LOGID` int(11) NOT NULL,
  `USERID` int(11) NOT NULL,
  `LOGDATETIME` datetime NOT NULL,
  `LOGROLE` varchar(30) NOT NULL,
  `LOGMODE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogs`
--

INSERT INTO `tbllogs` (`LOGID`, `USERID`, `LOGDATETIME`, `LOGROLE`, `LOGMODE`) VALUES
(161, 1, '2022-03-31 13:58:08', 'Administrator', 'Logged in'),
(162, 1, '2022-03-31 13:59:28', 'Administrator', 'Logged out'),
(163, 1, '2022-03-31 13:59:49', 'Administrator', 'Logged in'),
(164, 1, '2022-04-29 08:39:08', 'Administrator', 'Logged out'),
(165, 1, '2022-04-29 08:39:13', 'Administrator', 'Logged in'),
(166, 1, '2022-04-29 09:21:16', 'Administrator', 'Logged out'),
(167, 1, '2022-04-29 09:21:28', 'Administrator', 'Logged in'),
(168, 1, '2022-04-29 09:38:59', 'Administrator', 'Logged out'),
(169, 1, '2022-04-29 09:39:05', 'Administrator', 'Logged in'),
(170, 1, '2022-04-29 10:52:44', 'Administrator', 'Logged out'),
(171, 1, '2022-04-29 10:53:17', 'Administrator', 'Logged in'),
(172, 1, '2022-05-01 20:19:17', 'Administrator', 'Logged out'),
(173, 1, '2022-05-06 10:00:11', 'Administrator', 'Logged in');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(11) NOT NULL,
  `StudentID` varchar(30) NOT NULL,
  `Firstname` varchar(99) NOT NULL,
  `Lastname` varchar(99) NOT NULL,
  `Middlename` varchar(99) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `BirthDate` date NOT NULL,
  `Age` int(11) NOT NULL,
  `ContactNo` varchar(30) NOT NULL,
  `YearLevel` varchar(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `StudPhoto` varchar(255) NOT NULL,
  `Cand_Status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentID`, `Firstname`, `Lastname`, `Middlename`, `Address`, `Gender`, `BirthDate`, `Age`, `ContactNo`, `YearLevel`, `CourseID`, `StudPhoto`, `Cand_Status`) VALUES
(1, '023256469', 'TOM', 'CRUISE', 'D', 'AMERICA', 'Male', '1992-11-20', 29, '0232546886', 'Second', 3, 'photo/Screenshot_20210523-204559.jpg', 'Candidate'),
(2, '12312312', 'LI', 'LING', 'Y', 'CHINA', 'Female', '1990-11-11', 31, '12312312312', 'Second', 4, 'photo/Aoi.jpg', 'Candidate'),
(3, '8583362', 'JENNIE', 'ANNE', 'R', 'CANADA', 'Female', '1991-08-16', 30, '12312312312', 'First', 3, 'photo/OPQfsSdk.jpeg', 'Candidate'),
(4, '0010266936', 'YUWANTHA', 'HERUPPAGE', 'RASHMIIKA', 'SRI LANKA', 'Male', '1997-04-30', 24, '123456789', 'Fourth', 3, 'photo/170022648_3729588417152000_6811278081615236129_n.jpg', 'Candidate'),
(5, '8798794', 'ALMA', 'RECARDO', 'TORRES', 'NEPAL', 'Female', '1989-04-26', 33, '09047894777', 'Second', 4, '', ''),
(6, '8675543', 'CHESKA', 'RAMIREZ', 'UY', 'INDIA', 'Female', '1990-01-31', 32, '09567435788', 'Third', 5, '', ''),
(7, '1253235', 'GOTA', 'GOBBAYA', 'R', 'SRI LANKA', 'Male', '1953-02-17', 69, '09567453453', 'Third', 3, 'photo/Sri-Lankan-President-Gotabaya-Rajapaksa-ready-to-discuss-formation-of.jpeg', ''),
(8, '654567896', 'RYAN', 'SENEVIRATHNA', 'D', 'SWITZERLAND', 'Male', '2001-04-01', 21, '09457545699', 'First', 5, 'photo/2020-06-08_032bd012e59b59afa2cdfecbad25bcd9.jpg', ''),
(9, '5434689', 'KENMARK', 'REYES', 'DELA CRUZ', 'AUSTRALIA', 'Male', '1992-11-16', 29, '09567534689', 'First', 6, '', ''),
(10, '57053590', 'MAHELA', 'JAYAWARDENA', 'P', 'SRI LANKA', 'Male', '1990-05-25', 31, '09206543456', 'Second', 3, 'photo/20140522043211.jpeg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbltimetable`
--

CREATE TABLE `tbltimetable` (
  `TimeTableID` int(11) NOT NULL,
  `StudentID` varchar(90) NOT NULL,
  `TimeInAM` varchar(30) NOT NULL,
  `TimeOutAM` varchar(30) NOT NULL,
  `TimeInPM` varchar(30) NOT NULL,
  `TimeOutPM` varchar(30) NOT NULL,
  `AttendDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltimetable`
--

INSERT INTO `tbltimetable` (`TimeTableID`, `StudentID`, `TimeInAM`, `TimeOutAM`, `TimeInPM`, `TimeOutPM`, `AttendDate`) VALUES
(2, '0010266936', '', '', '01:14 PM', '01:18 PM', '2022-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `tblverifytimeintimeout`
--

CREATE TABLE `tblverifytimeintimeout` (
  `VerifyID` int(11) NOT NULL,
  `StudentID` varchar(90) NOT NULL,
  `TimeIn` varchar(30) NOT NULL,
  `TimeOut` varchar(30) NOT NULL,
  `Verification` varchar(90) NOT NULL,
  `DateValidation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblverifytimeintimeout`
--

INSERT INTO `tblverifytimeintimeout` (`VerifyID`, `StudentID`, `TimeIn`, `TimeOut`, `Verification`, `DateValidation`) VALUES
(1, '0010266936', '01:15 PM', '01:14 PM', 'TimeIn', '2022-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL,
  `EMPID` int(11) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`ACCOUNT_ID`, `ACCOUNT_NAME`, `ACCOUNT_USERNAME`, `ACCOUNT_PASSWORD`, `ACCOUNT_TYPE`, `EMPID`, `USERIMAGE`) VALUES
(1, 'Yuwantha Rashmika', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 1234, 'photos/import2.png'),
(5, 'Yuwi', 'yuwi', '474ba67bdb289c6263b36dfd8a7bed6c85b04943', 'Administrator', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`AutoID`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`CourseID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `tbllogs`
--
ALTER TABLE `tbllogs`
  ADD PRIMARY KEY (`LOGID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `StudentID` (`StudentID`);

--
-- Indexes for table `tbltimetable`
--
ALTER TABLE `tbltimetable`
  ADD PRIMARY KEY (`TimeTableID`);

--
-- Indexes for table `tblverifytimeintimeout`
--
ALTER TABLE `tblverifytimeintimeout`
  ADD PRIMARY KEY (`VerifyID`),
  ADD UNIQUE KEY `StudentID` (`StudentID`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`ACCOUNT_ID`),
  ADD UNIQUE KEY `ACCOUNT_USERNAME` (`ACCOUNT_USERNAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `AutoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `CourseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `LOGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbltimetable`
--
ALTER TABLE `tbltimetable`
  MODIFY `TimeTableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblverifytimeintimeout`
--
ALTER TABLE `tblverifytimeintimeout`
  MODIFY `VerifyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
