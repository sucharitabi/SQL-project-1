-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: retaildb
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CategoryID` int NOT NULL,
  `CategoryName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Clothing'),(2,'Shoes'),(3,'Electronics'),(4,'Home Appliances'),(5,'Books'),(6,'Toys'),(7,'Beauty'),(8,'Sports'),(9,'Jewelry'),(10,'Electricals'),(11,'Furniture'),(12,'Food'),(13,'Movies'),(14,'Music'),(15,'Health');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John','Doe','john.doe@example.com','123-456-7890'),(2,'Jane','Smith','jane.smith@example.com','456-789-0123'),(3,'Alice','Johnson','alice.johnson@example.com','789-012-3456'),(4,'Emily','Brown','emily.brown@example.com','234-567-8901'),(5,'James','Wilson','james.wilson@example.com','345-678-9012'),(6,'Emma','Garcia','emma.garcia@example.com','456-789-0123'),(7,'Oliver','Martinez','oliver.martinez@example.com','567-890-1234'),(8,'Sophia','Lopez','sophia.lopez@example.com','678-901-2345'),(9,'Liam','Gonzalez','liam.gonzalez@example.com','789-012-3456'),(10,'Ava','Hernandez','ava.hernandez@example.com','890-123-4567'),(11,'Noah','Torres','noah.torres@example.com','901-234-5678'),(12,'Isabella','Rivera','isabella.rivera@example.com','012-345-6789'),(13,'William','Gomez','william.gomez@example.com','123-456-7890'),(14,'Mia','Perez','mia.perez@example.com','234-567-8901'),(15,'James','Diaz','james.diaz@example.com','345-678-9012'),(16,'Amelia','Ortiz','amelia.ortiz@example.com','456-789-0123'),(17,'Benjamin','Castillo','benjamin.castillo@example.com','567-890-1234'),(18,'Charlotte','Morales','charlotte.morales@example.com','678-901-2345'),(19,'Elijah','Ramirez','elijah.ramirez@example.com','789-012-3456'),(20,'Luna','Flores','luna.flores@example.com','890-123-4567'),(21,'Lucas','Gutierrez','lucas.gutierrez@example.com','901-234-5678'),(22,'Harper','Gonzales','harper.gonzales@example.com','012-345-6789'),(23,'Alexander','Sanchez','alexander.sanchez@example.com','015-340-3467');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `DepartmentID` int NOT NULL,
  `DepartmentName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Sales'),(2,'Marketing'),(3,'Finance'),(4,'Human Resources'),(5,'IT');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeedepartments`
--

DROP TABLE IF EXISTS `employeedepartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeedepartments` (
  `EmployeeDepartmentID` int NOT NULL AUTO_INCREMENT,
  `EmployeeID` int DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  PRIMARY KEY (`EmployeeDepartmentID`),
  KEY `EmployeeID` (`EmployeeID`),
  KEY `DepartmentID` (`DepartmentID`),
  CONSTRAINT `employeedepartments_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  CONSTRAINT `employeedepartments_ibfk_2` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeedepartments`
--

LOCK TABLES `employeedepartments` WRITE;
/*!40000 ALTER TABLE `employeedepartments` DISABLE KEYS */;
INSERT INTO `employeedepartments` VALUES (1,1,1,'2023-01-01',NULL),(2,2,2,'2023-01-01',NULL),(3,3,3,'2023-01-01',NULL),(4,4,4,'2023-01-01',NULL),(5,5,5,'2023-01-01',NULL),(6,6,1,'2023-01-01',NULL),(7,7,2,'2023-01-01',NULL),(8,8,3,'2023-01-01',NULL),(9,9,4,'2023-01-01',NULL),(10,10,5,'2023-01-01',NULL);
/*!40000 ALTER TABLE `employeedepartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` int NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `DepartmentID` (`DepartmentID`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Michael','Smith','michael.smith@example.com','2010-01-15',1),(2,'Sarah','Johnson','sarah.johnson@example.com','2011-05-20',2),(3,'David','Williams','david.williams@example.com','2012-08-10',1),(4,'Emma','Brown','emma.brown@example.com','2013-11-25',3),(5,'Matthew','Jones','matthew.jones@example.com','2014-09-30',1),(6,'Olivia','Garcia','olivia.garcia@example.com','2015-07-15',2),(7,'Daniel','Martinez','daniel.martinez@example.com','2016-04-20',3),(8,'Sophia','Davis','sophia.davis@example.com','2017-02-05',1),(9,'William','Rodriguez','william.rodriguez@example.com','2018-08-10',2),(10,'Isabella','Lopez','isabella.lopez@example.com','2019-06-25',3);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `OrderDetailID` int NOT NULL,
  `OrderID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `TotalPrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderDetailID`),
  KEY `OrderID` (`OrderID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (3,2,2,1,39.99),(4,3,5,1,499.99),(5,4,10,2,19.98),(6,4,11,1,14.99),(7,5,12,1,29.99),(8,5,13,1,169.99),(9,6,14,1,14.99),(10,6,15,1,29.99),(11,7,16,1,19.99),(12,7,17,1,999.99),(13,8,18,1,14.99),(14,8,19,1,499.99),(15,9,20,1,299.99),(16,9,21,1,39.99),(17,10,22,1,9.99),(18,11,23,1,12.99),(19,12,24,1,9.99),(20,13,25,1,19.99),(21,14,26,1,69.99),(22,15,27,1,299.99),(23,16,28,1,49.99);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2024-04-06'),(2,2,'2024-04-05'),(3,3,'2024-04-04'),(4,4,'2024-04-03'),(5,5,'2024-04-02'),(6,6,'2024-04-01'),(7,7,'2024-03-31'),(8,8,'2024-03-30'),(9,9,'2024-03-29'),(10,10,'2024-03-28'),(11,11,'2024-03-27'),(12,12,'2024-03-26'),(13,13,'2024-03-25'),(14,14,'2024-03-24'),(15,15,'2024-03-23'),(16,16,'2024-03-22'),(17,17,'2024-03-21'),(18,18,'2024-03-20'),(19,19,'2024-03-19'),(20,20,'2024-03-18'),(21,21,'2024-03-17'),(22,22,'2024-03-16'),(23,23,'2024-03-15');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'T-shirt',1,19.99),(2,'Jeans',1,39.99),(3,'Sneakers',2,59.99),(4,'Dress Shoes',2,79.99),(5,'Smartphone',3,499.99),(6,'Laptop',3,899.99),(7,'Refrigerator',4,799.99),(8,'Washing Machine',4,499.99),(9,'Microwave Oven',4,199.99),(10,'The Great Gatsby',5,9.99),(11,'Harry Potter and the Sorcerer\'s Stone',5,14.99),(12,'LEGO Classic Medium Creative Brick Box',6,29.99),(13,'Barbie Dreamhouse',6,169.99),(14,'Lipstick',7,14.99),(15,'Basketball',8,29.99),(16,'Soccer Ball',8,19.99),(17,'Diamond Ring',9,999.99),(18,'LED Light Bulbs (Pack of 4)',10,14.99),(19,'Queen Bed',11,499.99),(20,'Dining Table Set',11,299.99),(21,'Pizza Maker',12,39.99),(22,'The Shawshank Redemption (DVD)',13,9.99),(23,'Greatest Hits (CD)',14,12.99),(24,'Vitamin C Supplement',15,9.99),(25,'Yoga Mat',8,19.99),(26,'Running Shoes',2,69.99),(27,'Digital Camera',3,299.99),(28,'Blender',4,49.99),(29,'Coffee Maker',4,29.99),(30,'Desk Lamp',10,19.99),(31,'Office Chair',11,199.99),(32,'TV Stand',11,149.99),(33,'Couch',11,599.99),(34,'Bedside Table',11,59.99),(35,'Dumbbell Set',8,49.99),(36,'Fitness Tracker',15,79.99),(37,'Protein Powder',15,29.99),(38,'Cookbook',12,19.99),(39,'Action Figure',6,9.99),(40,'Board Game',6,24.99);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'retaildb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-09 10:09:17
