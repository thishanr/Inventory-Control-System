-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.52-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema home
--

CREATE DATABASE IF NOT EXISTS home;
USE home;

--
-- Definition of table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cno` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `Tno` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`cno`,`name`,`address`,`Tno`) VALUES 
 (1,'damith','welipenna',754437087),
 (2,'Pasan missaka','Panadura',724334010),
 (3,'Kasun Anurada','Kalaniya',784328255),
 (4,'pathma vigesuriya','kaluthara',754856287);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Definition of table `grn`
--

DROP TABLE IF EXISTS `grn`;
CREATE TABLE `grn` (
  `sno` int(10) unsigned NOT NULL,
  `pno` varchar(45) NOT NULL,
  `qty` varchar(45) NOT NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grn`
--

/*!40000 ALTER TABLE `grn` DISABLE KEYS */;
INSERT INTO `grn` (`sno`,`pno`,`qty`,`value`) VALUES 
 (1,'251','258','1232'),
 (2,'251','258','123');
/*!40000 ALTER TABLE `grn` ENABLE KEYS */;


--
-- Definition of table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `cno` int(10) unsigned NOT NULL,
  `pno` varchar(45) NOT NULL,
  `qty` varchar(45) NOT NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`cno`,`pno`,`qty`,`value`) VALUES 
 (1,'1','200','500');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;


--
-- Definition of table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `idStock` int(10) unsigned NOT NULL,
  `price` varchar(45) NOT NULL,
  `qty` varchar(45) NOT NULL,
  `mfd` varchar(45) NOT NULL,
  `epd` varchar(45) NOT NULL,
  PRIMARY KEY (`idStock`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` (`idStock`,`price`,`qty`,`mfd`,`epd`) VALUES 
 (2,'rs1000','50','2012.12.18','2014.08.06'),
 (3,'rs789','12','2014.12.18','2016.08.06');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;


--
-- Definition of table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `sno` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cno` int(10) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` (`sno`,`name`,`address`,`email`,`cno`) VALUES 
 (1,'kasun','Aluthgama','ynw@gmail.com',754437087),
 (2,'Ushan','Rathnapura','iuy@gmail.com',784437087),
 (3,'lala','mirihana','uebn@gmail.com',724334010);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
