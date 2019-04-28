CREATE DATABASE mydb;
USE mydb;
-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.5.54-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admintl`
--

DROP TABLE IF EXISTS `admintl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admintl` (
  `adminid` int(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `mobilenumber` varchar(50) DEFAULT NULL,
  `emailid` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `createdon` date DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admintl`
--

LOCK TABLES `admintl` WRITE;
/*!40000 ALTER TABLE `admintl` DISABLE KEYS */;
INSERT INTO `admintl` VALUES (1,'yphani','kumar','12345','yphanikumar111@gmail.com','phani123',NULL);
/*!40000 ALTER TABLE `admintl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advancetl`
--

DROP TABLE IF EXISTS `advancetl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advancetl` (
  `advid` int(20) NOT NULL,
  `empid` int(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `createdby` int(20) DEFAULT NULL,
  `createdon` date DEFAULT NULL,
  PRIMARY KEY (`advid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advancetl`
--

LOCK TABLES `advancetl` WRITE;
/*!40000 ALTER TABLE `advancetl` DISABLE KEYS */;
INSERT INTO `advancetl` VALUES (1,1,100,'Active',1,'2018-04-10');
/*!40000 ALTER TABLE `advancetl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billtl`
--

DROP TABLE IF EXISTS `billtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billtl` (
  `billid` int(10) unsigned NOT NULL,
  `customerid` int(11) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` datetime NOT NULL,
  PRIMARY KEY (`billid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billtl`
--

LOCK TABLES `billtl` WRITE;
/*!40000 ALTER TABLE `billtl` DISABLE KEYS */;
INSERT INTO `billtl` VALUES (1,1,'paid',1,'2018-04-10 10:54:34');
/*!40000 ALTER TABLE `billtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerpaymenttl`
--

DROP TABLE IF EXISTS `customerpaymenttl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customerpaymenttl` (
  `customerpayid` int(20) NOT NULL,
  `paidamount` double DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `createdby` int(20) DEFAULT NULL,
  `createdon` date DEFAULT NULL,
  `customerid` int(20) DEFAULT NULL,
  `billid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`customerpayid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerpaymenttl`
--

LOCK TABLES `customerpaymenttl` WRITE;
/*!40000 ALTER TABLE `customerpaymenttl` DISABLE KEYS */;
INSERT INTO `customerpaymenttl` VALUES (1,100,NULL,1,'2018-04-10',1,1),(2,50,'Paid',1,'2018-04-10',1,1);
/*!40000 ALTER TABLE `customerpaymenttl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customertl`
--

DROP TABLE IF EXISTS `customertl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customertl` (
  `customerid` int(20) NOT NULL,
  `customername` varchar(50) DEFAULT NULL,
  `customerphoto` varchar(1000) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `mobilenumber` varchar(50) DEFAULT NULL,
  `aadharnumber` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `createdby` int(20) DEFAULT NULL,
  `createdon` date DEFAULT NULL,
  `customertype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customertl`
--

LOCK TABLES `customertl` WRITE;
/*!40000 ALTER TABLE `customertl` DISABLE KEYS */;
INSERT INTO `customertl` VALUES (1,'kumar','SRS_7392.JPG','anantapur','9638527410','74185296301',NULL,1,'2018-04-10','newcustomer');
/*!40000 ALTER TABLE `customertl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emptl`
--

DROP TABLE IF EXISTS `emptl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emptl` (
  `empid` int(20) NOT NULL,
  `emptype` varchar(100) DEFAULT NULL,
  `empname` varchar(50) DEFAULT NULL,
  `photo` varchar(1000) DEFAULT NULL,
  `mobilenumber` varchar(50) DEFAULT NULL,
  `aadharnumber` varchar(50) DEFAULT NULL,
  `accountnumber` varchar(50) DEFAULT NULL,
  `ifsccode` varchar(50) DEFAULT NULL,
  `bankname` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `createdby` int(20) DEFAULT NULL,
  `createdon` date DEFAULT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emptl`
--

LOCK TABLES `emptl` WRITE;
/*!40000 ALTER TABLE `emptl` DISABLE KEYS */;
INSERT INTO `emptl` VALUES (1,'mechanic','kumar','SRS_7392.JPG','9440466635','96385274107','308017456','sbin0000456','state bank of india','anantapur','Active',1,'2018-04-10'),(2,'weaver','phani','Screenshot (2).png','12345','789','456','sbi123','sbi','atp','Active',1,'2018-06-28');
/*!40000 ALTER TABLE `emptl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emptypetl`
--

DROP TABLE IF EXISTS `emptypetl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emptypetl` (
  `emptypeid` int(20) NOT NULL AUTO_INCREMENT,
  `emptype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`emptypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emptypetl`
--

LOCK TABLES `emptypetl` WRITE;
/*!40000 ALTER TABLE `emptypetl` DISABLE KEYS */;
/*!40000 ALTER TABLE `emptypetl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loomemptl`
--

DROP TABLE IF EXISTS `loomemptl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loomemptl` (
  `loomempid` int(20) NOT NULL,
  `empid` int(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `createdby` int(20) DEFAULT NULL,
  `createdon` date DEFAULT NULL,
  `loomid` int(20) DEFAULT NULL,
  PRIMARY KEY (`loomempid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loomemptl`
--

LOCK TABLES `loomemptl` WRITE;
/*!40000 ALTER TABLE `loomemptl` DISABLE KEYS */;
INSERT INTO `loomemptl` VALUES (1,1,'active',1,'2018-04-10',1);
/*!40000 ALTER TABLE `loomemptl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loomrawtl`
--

DROP TABLE IF EXISTS `loomrawtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loomrawtl` (
  `loomrawid` int(20) NOT NULL,
  `loomid` int(20) DEFAULT NULL,
  `rawid` int(20) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `createdby` int(20) DEFAULT NULL,
  `createdon` date DEFAULT NULL,
  PRIMARY KEY (`loomrawid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loomrawtl`
--

LOCK TABLES `loomrawtl` WRITE;
/*!40000 ALTER TABLE `loomrawtl` DISABLE KEYS */;
INSERT INTO `loomrawtl` VALUES (1,1,1,5,'',1,'2018-04-10');
/*!40000 ALTER TABLE `loomrawtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loomtl`
--

DROP TABLE IF EXISTS `loomtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loomtl` (
  `loomid` int(20) NOT NULL,
  `loomaddress` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `createdby` int(20) DEFAULT NULL,
  `createdon` date DEFAULT NULL,
  `loomno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`loomid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loomtl`
--

LOCK TABLES `loomtl` WRITE;
/*!40000 ALTER TABLE `loomtl` DISABLE KEYS */;
INSERT INTO `loomtl` VALUES (1,'anantapur','Active',1,'2018-04-10','1');
/*!40000 ALTER TABLE `loomtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producttl`
--

DROP TABLE IF EXISTS `producttl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producttl` (
  `productid` int(20) NOT NULL,
  `empid` int(20) DEFAULT NULL,
  `producttype` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `quantity` int(20) unsigned DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `createdby` int(20) DEFAULT NULL,
  `createdon` date DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttl`
--

LOCK TABLES `producttl` WRITE;
/*!40000 ALTER TABLE `producttl` DISABLE KEYS */;
INSERT INTO `producttl` VALUES (1,1,'silk','500.0','saree',2,'',1,'2018-04-10');
/*!40000 ALTER TABLE `producttl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rawtl`
--

DROP TABLE IF EXISTS `rawtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rawtl` (
  `rawid` int(20) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `createdby` int(20) DEFAULT NULL,
  `createdon` date DEFAULT NULL,
  `materialname` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`rawid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rawtl`
--

LOCK TABLES `rawtl` WRITE;
/*!40000 ALTER TABLE `rawtl` DISABLE KEYS */;
INSERT INTO `rawtl` VALUES (1,'',1,'2018-04-10','silk',1000);
/*!40000 ALTER TABLE `rawtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salestl`
--

DROP TABLE IF EXISTS `salestl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salestl` (
  `salesid` int(20) NOT NULL,
  `quantity` int(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `customerid` int(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `createdby` int(20) DEFAULT NULL,
  `createdon` date DEFAULT NULL,
  `billid` int(20) unsigned DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `producttype` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`salesid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salestl`
--

LOCK TABLES `salestl` WRITE;
/*!40000 ALTER TABLE `salestl` DISABLE KEYS */;
INSERT INTO `salestl` VALUES (1,1,1000,NULL,NULL,1,'2018-04-10',1,10,'silk');
/*!40000 ALTER TABLE `salestl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-28  6:57:40
