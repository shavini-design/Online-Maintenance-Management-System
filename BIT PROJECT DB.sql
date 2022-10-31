-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2021 at 07:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coats`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessgroup`
--

CREATE TABLE `accessgroup` (
  `AccessGroupId` int(11) NOT NULL,
  `AccessGroupCode` varchar(6) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accessgroup`
--

INSERT INTO `accessgroup` (`AccessGroupId`, `AccessGroupCode`, `Name`) VALUES
(1, 'sec01', 'admin'),
(2, 'sec02', 'manager'),
(3, 'sec03', 'engineer'),
(4, 'sec04', 'user'),
(6, 'sec05', 'technician');

-- --------------------------------------------------------

--
-- Table structure for table `costcenter`
--

CREATE TABLE `costcenter` (
  `CostCenterId` int(11) NOT NULL,
  `CostCenterCode` varchar(6) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `costcenter`
--

INSERT INTO `costcenter` (`CostCenterId`, `CostCenterCode`, `Name`) VALUES
(1, 'cc01', 'DH'),
(2, 'cc02', 'FIN'),
(3, 'cc03', 'ETP');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `UserId` int(5) NOT NULL,
  `EmpId` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `AccessGroupId` varchar(15) NOT NULL,
  `Shift` varchar(2) NOT NULL,
  `ContactNo` int(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`UserId`, `EmpId`, `Name`, `AccessGroupId`, `Shift`, `ContactNo`, `Email`, `Score`) VALUES
(1, 'EM001', 'AH Weerasiri', '2', 'G', 747483647, 'henri@gmai.com', 85),
(2, 'EM002', 'GD Perera', '6', 'C', 753356677, 'dilum@gmail.com', 87),
(3, 'EM003', 'AS Perera', '6', 'B', 770098877, 'samitha@gmai.com', 80),
(4, 'EM004', 'KP Silva', '6', 'B', 728892233, 'pasindu@gmail.com', 90),
(5, 'EM005', 'KL Fernando', '6', 'C', 719988892, 'lakmal@gmail.com', 86),
(6, 'EM006', 'BAC Rathnayake', '3', 'B', 714433448, 'Chamath@gmail.com', 76),
(7, 'EM007', 'GH Wijerathne', '3', 'D', 707766654, 'hasitha@gmail.com', 78),
(8, 'EM008', 'KI Sandakalum', '2', 'G', 764459982, 'isuru@gmail.com', 90),
(9, 'EM009', 'KDH De Silva', '3', 'A', 768832234, 'dilum@gmail.com', 80),
(10, 'EM010', 'SM Pieris', '6', 'B', 772236675, 'mathew@gmail.com', 92),
(12, 'EM011', 'LK Ranasinghe', '3', 'C', 772235569, 'luki@gmail.com', 92),
(13, 'EM012', 'FG Kesiri', '3', 'A', 772237710, 'gehan@gmail.com', 87),
(14, 'EM013', 'JS Rathnayake', '3', 'A', 765577788, 'samal@gmail.com', 88),
(17, 'EM014', 'WE Jayathilake', '3', 'C', 771167223, 'eranga@gmail.com', 80),
(18, 'EM015', 'VD Mendis', '2', 'G', 768866345, 'dineth@gmail.com', 84),
(19, 'EM016', 'WDH Silva', '3', 'A', 706632779, 'dalas@gmail.com', 88),
(20, 'EM017', 'FD Ranasinghe', '3', 'B', 778846577, 'dasun@gmail.com', 90),
(21, 'EM018', 'KSD Kuray', '3', 'A', 763345776, 'siril@gmail.com', 82),
(22, 'EM019', 'MA Sandaruwan', '3', 'A', 773444678, 'asanka@gmail.com', 90),
(23, 'EM020', 'ASF Sandakalum', '3', 'A', 722233345, 'sandeesh@gmail.com', 85),
(24, 'EM021', 'LAS Alwis', '6', 'A', 729987673, 'amara@gmail.com', 81),
(25, 'EM022', 'KR Bandara', '6', 'B', 763342567, 'rakith@gmail.com', 80),
(26, 'EM023', 'KG Weerasinghe', '6', 'D', 718897678, 'gehan@gmail.com', 86),
(27, 'EM024', 'WS Mendis', '6', 'B', 723376009, 'senaka@gmail.com', 88),
(28, 'EM025', 'MK Lakshan', '6', 'C', 716653456, 'kalana@gmail.com', 81),
(29, 'EM026', 'AK Wijerathne', '6', 'B', 718989700, 'anura@gmail.com', 87);

-- --------------------------------------------------------

--
-- Table structure for table `finishedorder`
--

CREATE TABLE `finishedorder` (
  `FinishedId` int(5) NOT NULL,
  `FinishedCode` varchar(10) NOT NULL,
  `FinishedDate` varchar(20) NOT NULL,
  `MaintenanceType` varchar(30) NOT NULL,
  `Technician1` varchar(30) NOT NULL,
  `Technician2` varchar(30) NOT NULL,
  `Supervisor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finishedorder`
--

INSERT INTO `finishedorder` (`FinishedId`, `FinishedCode`, `FinishedDate`, `MaintenanceType`, `Technician1`, `Technician2`, `Supervisor`) VALUES
(1, 'WO001', '2021-01-28', 'Break Down', 'GD Perera', 'KP Silva', 'KSD Kuray'),
(2, 'WO002', '2021-03-08', 'Planned Maintenance', 'LAS Alwis', 'AS Perera', 'FD Ranasinghe'),
(3, 'WO003', '2021-03-20', 'Break Down', 'SM Peries', 'AS Perera', 'WDH Silva'),
(4, 'WO004', '2021-03-26', 'Planned Maintenance', 'KP Silva', 'KL Fernando', 'MA Sandaruwan'),
(5, 'WO005', '2021-04-02', 'Break Down', 'AS Perera', 'KL Fernando', 'ASF Sandakalum'),
(6, 'WO006', '2021-03-30', 'Break Down', 'KR Bandara', 'KG Weerasinghe', 'LK Ranasinghe'),
(7, 'WO007', '2021-04-02', 'Break Down', 'LAS Alwis', 'GD Perera', 'WDH Silva'),
(8, 'WO008', '2021-03-27', 'Break Down', 'GD Perera', 'KL Fernando', 'WDH Silva'),
(9, 'WO009', '2021-04-02', 'Other', 'MK Lakshan', 'WS Mendis', 'KSD Kuray'),
(10, 'WO010', '2021-04-02', 'Break Down', 'AK Wijerathne', 'AS Perera', 'MA Sandaruwan'),
(11, 'WO011', '2021-04-02', 'Planned Maintenance', 'GH Perera', 'AK Wijerathne', 'LK Ranasinghe'),
(14, 'WO012', '2021-02-26', 'Break Down', 'GD Perera', 'AS Perera', 'KP Silva'),
(15, 'WO013', '2021-03-30', 'Corrective Maintenance', 'SM Pieris', 'FG Kesiri', 'KDH De Silva'),
(17, 'WO014', '2021-03-05', 'Planned Maintenance', 'GD Perera', 'KL Fernando', 'SM Pieris'),
(18, 'WO015', '2021-03-20', 'Corrective Maintenance', 'AK Wijerathne', 'FG Kesiri', 'KP Silva');

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `MachineId` int(5) NOT NULL,
  `MachineCode` varchar(15) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `SerialNumber` varchar(30) NOT NULL,
  `Manufacturer` varchar(30) NOT NULL,
  `YearOfManufactured` varchar(10) NOT NULL,
  `CostCenterId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `machine`
--

INSERT INTO `machine` (`MachineId`, `MachineCode`, `Name`, `SerialNumber`, `Manufacturer`, `YearOfManufactured`, `CostCenterId`) VALUES
(1, 'EN001', '98A', '123456', 'Firefox', '2019-10-08', '1'),
(2, 'EN002', '36C', '236789', 'Lexicon', '2019-09-05', '2'),
(3, 'EN003', '26B', '110223', 'Matrix', '2020-11-26', '2'),
(4, 'EN004', '34C', '987790', 'Astra', '2019-01-16', '3'),
(5, 'EN005', '36D', '889889', 'Caltex', '2020-02-20', '2'),
(6, 'EN006', '16E', '344788', 'Leeds', '2020-04-29', '3'),
(7, 'EN007', '90A', '800700', 'Kelton', '2020-05-27', '1'),
(8, 'EN008', '45B', '766788', 'Matrix', '2019-11-08', '2'),
(9, 'EN009', '78C', '343423', 'Dell', '2020-11-02', '1'),
(10, 'EN010', '96C', '678976', 'Maxus', '2020-07-30', '2');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `UserId` int(5) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `GroupName` varchar(20) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`UserId`, `FirstName`, `LastName`, `GroupName`, `UserName`, `Password`, `Email`, `Phone`) VALUES
(1, 'Kaveen', 'Rathnayake', 'manager', 'managerkaveen', 'manager001', 'kaveen@gmail.com', '0762679401'),
(2, 'Naveen', 'Lakmal', 'engineer', 'engnaveen', 'engineer001', 'naveen@gmail.com', '0769067811'),
(3, 'Hashan ', 'Madushan', 'engineer', 'enghashan', 'engineer002', 'hashan@gmail.com', '0773572340'),
(4, 'Malith', 'Madushan', 'engineer', 'engmalith', 'engineer004', 'malintha@gmail.com', '0768978900'),
(5, 'Pabasara', 'Balasen', 'engineer', 'engpabasara', 'engineer005', 'pabasara@gmail.com', '0763467429'),
(6, 'Kasun ', 'Fernando', 'admin', 'adminkasun', 'admin002', 'kasun@gmail.com', '0778987653'),
(7, 'Ruvan', 'Perera', 'manager', 'managerruvan', 'manager002', 'ruvan@gmail.com', '0768987626'),
(8, 'Ayesh', 'Alwis', 'engineer', 'engayesh', 'engineer006', 'ayesh@gmail.com', '0775668907'),
(11, 'Ravindu', 'Lakshitha', 'engineer', 'engravindu', 'engineer003', 'ravindu@gmail.com', '0768767962'),
(12, 'Charuka', 'Panapitiya', 'engineer', 'engcharuka', 'engineer007', 'charuka@gmail.com', '0779087645'),
(13, 'Madura', 'Perera', 'admin', 'adminmadura', 'admin001', 'madura@gmail.com', '0724567903'),
(14, 'Hasitha', 'Pieris', 'engineer', 'enghasitha', 'engineer008', 'hasitha@gmail.com', '0768900761'),
(15, 'Peter', 'Stevenson', 'engineer', 'engpeter', 'engineer009', 'steve@gmail.com', '0776568789'),
(16, 'Sahan', 'Raveesha', 'engineer', 'engsahan', 'engineer010', 'sahan@gmail.com', '0778901265'),
(17, 'Nuwan', 'Pathiraja', 'engineer', 'engnuwan', 'engineer011', 'nuwan@gmail.com', '0776655688'),
(18, 'Keshan', 'Sachintha', 'engineer', 'engkeshan', 'engineer012', 'keshan@gmail.com', '0708834432'),
(19, 'Raveen', 'Kanishka', 'engineer', 'engraveen', 'engineer013', 'raveen@gmail.com', '0772345677'),
(20, 'Deshan', 'Weerasinghe', 'manager', 'managerdeshan', 'manager003', 'deshan@gmail.com', '0723499845'),
(21, 'heshan', 'Fernando', 'manager', 'managerheshan', 'manager004', 'heshan@gmail.com', '0776765567');

-- --------------------------------------------------------

--
-- Table structure for table `sparepart`
--

CREATE TABLE `sparepart` (
  `SparepartId` int(10) NOT NULL,
  `SparepartCode` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `DateUsed` varchar(20) NOT NULL,
  `WorkOrderCode` varchar(10) NOT NULL,
  `JobCovered` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sparepart`
--

INSERT INTO `sparepart` (`SparepartId`, `SparepartCode`, `Name`, `DateUsed`, `WorkOrderCode`, `JobCovered`) VALUES
(1, 'SP001', 'copper', '2021-01-22', 'WO001', 'Steam Leak'),
(2, 'SP002', 'wire', '2021-02-10', 'WO003', 'Dye Leak'),
(3, 'SP003', 'iron', '2021-02-15', 'WO005', 'Uneven'),
(4, 'SP004', 'leather', '2021-03-05', 'WO002', 'No Cold Drain'),
(5, 'SP005', 'glass', '2021-02-12', 'WO002', 'No Cold Drain'),
(6, 'SP006', 'metal', '2021-02-21', 'WO005', 'Dye Leak'),
(7, 'SP007', 'fibre', '2021-02-02', 'WO004', 'Uneven'),
(8, 'SP008', 'rubber', '2021-02-28', 'WO005', 'Uneven'),
(9, 'SP009', 'plastic', '2021-01-23', 'WO001', 'Temperature Deviation'),
(10, 'SP010', 'paper', '2021-03-12', 'WO005', 'Wet Leak'),
(11, 'SP011', 'wire', '2021-03-25', 'WO007', 'Uneven'),
(12, 'SP012', 'glass', '2021-02-28', 'WO004', 'High Pressure'),
(13, 'SP013', 'aluminium', '2021-03-26', 'WO007', 'Temperature Deviation'),
(14, 'SP014', 'tin', '2021-03-25', 'WO008', 'Dye Leak'),
(15, 'SP015', 'cardboard', '2021-02-15', 'WO006', 'Uneven'),
(16, 'SP016', 'woods', '2021-04-20', 'WO005', 'Pressure Leak'),
(21, 'SP017', 'PVC', '2021-03-26', 'WO008', 'Wet Leak'),
(22, 'SP018', 'gutter', '2021-05-25', 'WO009', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `workorder`
--

CREATE TABLE `workorder` (
  `OrderId` int(11) NOT NULL,
  `OrderCode` varchar(10) NOT NULL,
  `StartDate` varchar(20) NOT NULL,
  `Shift` varchar(2) NOT NULL,
  `MachineId` varchar(10) NOT NULL,
  `FaultOrJob` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workorder`
--

INSERT INTO `workorder` (`OrderId`, `OrderCode`, `StartDate`, `Shift`, `MachineId`, `FaultOrJob`) VALUES
(1, 'WO001', '2021-01-20', 'A', 'EN002', 'High Pressure'),
(2, 'WO002', '2021-02-08', 'C', 'EN001', 'Pressure Leak'),
(3, 'WO003', '2021-02-12', 'A', 'EN002', 'Steam Leak'),
(4, 'WO004', '2021-01-30', 'A', 'EN001', 'No Hot Drain'),
(5, 'WO005', '2021-02-10', 'A', 'EN010', 'Other'),
(6, 'WO006', '2021-02-10', 'G', 'EN006', 'Dye Leak'),
(7, 'WO007', '2021-03-23', 'A', 'EN008', 'Wet Leak'),
(8, 'WO008', '2021-03-23', 'A', 'EN001', 'Temperature Deviation'),
(9, 'WO009', '2021-03-07', 'C', 'EN002', 'Uneven'),
(10, 'WO010', '2021-02-28', 'A', 'EN002', 'Pressure Leak'),
(11, 'WO011', '2021-02-05', 'A', 'EN004', 'High Pressure'),
(12, 'WO012', '2021-02-17', 'A', 'EN004', 'Temperature Not Rise'),
(13, 'WO013', '2021-02-11', 'A', 'EN001', 'Uneven'),
(14, 'WO014', '2021-02-28', 'A', 'EN007', 'select'),
(15, 'WO015', '2021-03-30', 'C', 'EN001', 'Dye Leak'),
(16, 'WO016', '2021-03-21', 'A', 'EN010', 'Temperature Deviation'),
(18, 'WO017', '2021-02-10', 'B', 'EN010', 'Steam Leak'),
(24, 'WO018', '2021-04-08', 'C', 'EN009', 'DyeLeak'),
(25, 'WO019', '2021-04-20', 'B', 'EN002', 'Other'),
(26, 'WO020', '2021-04-20', 'G', 'EN001', 'Temperature Deviation'),
(27, 'WO021', '2021-03-05', 'A', 'EN010', 'DyeLeak'),
(28, 'WO025', '2021-03-21', 'A', 'EN001', 'DyeLeak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessgroup`
--
ALTER TABLE `accessgroup`
  ADD PRIMARY KEY (`AccessGroupId`);

--
-- Indexes for table `costcenter`
--
ALTER TABLE `costcenter`
  ADD PRIMARY KEY (`CostCenterId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `finishedorder`
--
ALTER TABLE `finishedorder`
  ADD PRIMARY KEY (`FinishedId`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`MachineId`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `sparepart`
--
ALTER TABLE `sparepart`
  ADD PRIMARY KEY (`SparepartId`);

--
-- Indexes for table `workorder`
--
ALTER TABLE `workorder`
  ADD PRIMARY KEY (`OrderId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessgroup`
--
ALTER TABLE `accessgroup`
  MODIFY `AccessGroupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `costcenter`
--
ALTER TABLE `costcenter`
  MODIFY `CostCenterId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `UserId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `finishedorder`
--
ALTER TABLE `finishedorder`
  MODIFY `FinishedId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `machine`
--
ALTER TABLE `machine`
  MODIFY `MachineId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `UserId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sparepart`
--
ALTER TABLE `sparepart`
  MODIFY `SparepartId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `workorder`
--
ALTER TABLE `workorder`
  MODIFY `OrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
