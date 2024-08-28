CREATE DATABASE  IF NOT EXISTS `proyecto_remiseria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyecto_remiseria`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_remiseria
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `autos`
--

DROP TABLE IF EXISTS `autos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autos` (
  `ID_Auto` int NOT NULL AUTO_INCREMENT,
  `Patente` varchar(200) DEFAULT NULL,
  `Marca` varchar(200) DEFAULT NULL,
  `Modelo` varchar(200) DEFAULT NULL,
  `ID_Conductor` int DEFAULT NULL,
  PRIMARY KEY (`ID_Auto`),
  KEY `ID_Conductor` (`ID_Conductor`),
  CONSTRAINT `autos_ibfk_1` FOREIGN KEY (`ID_Conductor`) REFERENCES `conductores` (`ID_Conductor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autos`
--

LOCK TABLES `autos` WRITE;
/*!40000 ALTER TABLE `autos` DISABLE KEYS */;
INSERT INTO `autos` VALUES (1,'AA000BB','Toyota','Corolla',1),(2,'CC111DD','Chevrolet','Corsa',2),(3,'EE222FF','Ford','Focus',3),(4,'GG333HH','Fiat','Cronos',4),(5,'II444JJ','Fiat','Siena',5),(6,'KK555LL','Renault','Logan',6),(7,'MM666NN','Fiat','Mobi',7),(8,'OO777PP','Chevrolet','Joy',8),(9,'QQ888RR','Renault','Kwid',9),(10,'SS999TT','Fiat','Palio',10);
/*!40000 ALTER TABLE `autos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `ID_Cliente` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Cuil` varchar(200) NOT NULL,
  PRIMARY KEY (`ID_Cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan','Perez','123456789','juan.perez@hotmail.com','20-12345678-9'),(2,'Ana','Gomez','987654321','ana.gomez@hotmail.com','20-98765432-1'),(3,'Carlos','Lopez','456123789','carlos.lopez@hotmail.com','20-45612378-9'),(4,'Maria','Martinez','321654987','maria.martinez@hotmail.com','20-32165498-7'),(5,'Luis','Garcia','789456123','luis.garcia@hotmail.com','20-78945612-3'),(6,'Laura','Fernandez','654789321','laura.fernandez@hotmail.com','20-65478932-1'),(7,'Jorge','Rodriguez','852963741','jorge.rodriguez@hotmail.com','20-85296374-1'),(8,'Sofia','Sanchez','159753486','sofia.sanchez@hotmail.com','20-15975348-6'),(9,'Roberto','Torres','951753852','roberto.torres@hotmail.com','20-95175385-2'),(10,'Elena','Diaz','753951486','elena.diaz@hotmail.com','20-75395148-6'),(11,'Pedro','Molina','123789456','pedro.molina@hotmail.com','20-12378945-6'),(12,'Susana','Ramos','789321654','susana.ramos@hotmail.com','20-78932165-4'),(13,'Miguel','Silva','321987654','miguel.silva@hotmail.com','20-32198765-4'),(14,'Patricia','Mendoza','654123987','patricia.mendoza@hotmail.com','20-65412398-7'),(15,'Juan','Romero','987321456','juan.romero@hotmail.com','20-98732145-6'),(16,'Gabriela','Castro','456789123','gabriela.castro@hotmail.com','20-45678912-3'),(17,'Jose','Ortiz','951753486','jose.ortiz@hotmail.com','20-95175348-6'),(18,'Fernanda','Guzman','753159486','fernanda.guzman@hotmail.com','20-75315948-6'),(19,'Luis','Vega','159357486','luis.vega@hotmail.com','20-15935748-6'),(20,'Monica','Moreno','357951486','monica.moreno@hotmail.com','20-35795148-6'),(21,'Alberto','Ruiz','789654123','alberto.ruiz@hotmail.com','20-78965412-3'),(22,'Clara','Cruz','951357486','clara.cruz@hotmail.com','20-95135748-6'),(23,'Eduardo','Benitez','159753852','eduardo.benitez@hotmail.com','20-15975385-2'),(24,'Daniela','Herrera','357159486','daniela.herrera@hotmail.com','20-35715948-6'),(25,'Julian','Blanco','951159753','julian.blanco@hotmail.com','20-95115975-3'),(26,'Isabel','Navarro','357951753','isabel.navarro@hotmail.com','20-35795175-3'),(27,'Diego','Paredes','753357159','diego.paredes@hotmail.com','20-75335715-9'),(28,'Lucia','Farias','951753357','lucia.farias@hotmail.com','20-95175335-7'),(29,'Andres','Vargas','159357753','andres.vargas@hotmail.com','20-15935775-3'),(30,'Paula','Campos','753951357','paula.campos@hotmail.com','20-75395135-7'),(31,'Sergio','Cabrera','159753357','sergio.cabrera@hotmail.com','20-15975335-7'),(32,'Andrea','Villalba','753159951','andrea.villalba@hotmail.com','20-75315995-1'),(33,'Ricardo','Salinas','357951159','ricardo.salinas@hotmail.com','20-35795115-9'),(34,'Mariana','Rios','951753159','mariana.rios@hotmail.com','20-95175315-9'),(35,'Victor','Aguilar','159357951','victor.aguilar@hotmail.com','20-15935795-1'),(36,'Cecilia','Sandoval','753159357','cecilia.sandoval@hotmail.com','20-75315935-7'),(37,'Hugo','Dominguez','951357159','hugo.dominguez@hotmail.com','20-95135715-9'),(38,'Valeria','Fuentes','357159951','valeria.fuentes@hotmail.com','20-35715995-1'),(39,'Guillermo','Montes','159753951','guillermo.montes@hotmail.com','20-15975395-1'),(40,'Pilar','Carrizo','753951159','pilar.carrizo@hotmail.com','20-75395115-9'),(41,'Mauricio','Bravo','357159753','mauricio.bravo@hotmail.com','20-35715975-3'),(42,'Lourdes','Cortez','951159357','lourdes.cortez@hotmail.com','20-95115935-7'),(43,'Martin','Flores','159951357','martin.flores@hotmail.com','20-15995135-7'),(44,'Tamara','Peña','753357951','tamara.pena@hotmail.com','20-75335795-1'),(45,'Oscar','Alvarez','951357753','oscar.alvarez@hotmail.com','20-95135775-3'),(46,'Nadia','Luna','159753951','nadia.luna@hotmail.com','20-15975395-1'),(47,'Cristian','Morales','357159357','cristian.morales@hotmail.com','20-35715935-7'),(48,'Florencia','Soto','951753357','florencia.soto@hotmail.com','20-95175335-7'),(49,'Gustavo','Mendez','159357159','gustavo.mendez@hotmail.com','20-15935715-9'),(50,'Marta','Villar','753159159','marta.villar@hotmail.com','20-75315915-9'),(51,'Ramiro','Gil','357951951','ramiro.gil@hotmail.com','20-35795195-1'),(52,'Elisa','Castillo','951159951','elisa.castillo@hotmail.com','20-95115995-1'),(53,'Emilio','Lozano','159357951','emilio.lozano@hotmail.com','20-15935795-1'),(54,'Teresa','Gomez','753951753','teresa.gomez@hotmail.com','20-75395175-3'),(55,'Nicolas','Peralta','357159159','nicolas.peralta@hotmail.com','20-35715915-9'),(56,'Rosario','Rios','951357951','rosario.rios@hotmail.com','20-95135795-1'),(57,'Hernan','Rojas','159951753','hernan.rojas@hotmail.com','20-15995175-3'),(58,'Silvia','Maldonado','753159951','silvia.maldonado@hotmail.com','20-75315995-1'),(59,'Fabian','Sanchez','357951753','fabian.sanchez@hotmail.com','20-35795175-3'),(60,'Sabrina','Espinoza','951159159','sabrina.espinoza@hotmail.com','20-95115915-9'),(61,'Ariel','Gonzalez','159357159','ariel.gonzalez@hotmail.com','20-15935715-9'),(62,'Belen','Paz','753951951','belen.paz@hotmail.com','20-75395195-1'),(63,'Rodrigo','Caceres','357159951','rodrigo.caceres@hotmail.com','20-35715995-1'),(64,'Liliana','Ibanez','951357357','liliana.ibanez@hotmail.com','20-95135735-7'),(65,'Esteban','Moya','159753357','esteban.moya@hotmail.com','20-15975335-7'),(66,'Veronica','Munoz','753159753','veronica.munoz@hotmail.com','20-75315975-3'),(67,'Marcos','Perez','357951357','marcos.perez@hotmail.com','20-35795135-7'),(68,'Adriana','Diaz','951159753','adriana.diaz@hotmail.com','20-95115975-3'),(69,'Sebastian','Molina','159357753','sebastian.molina@hotmail.com','20-15935775-3'),(70,'Lorena','Franco','753951357','lorena.franco@hotmail.com','20-75395135-7'),(71,'Matias','Figueroa','357159753','matias.figueroa@hotmail.com','20-35715975-3'),(72,'Carolina','Ledesma','951357951','carolina.ledesma@hotmail.com','20-95135795-1'),(73,'Javier','Lopez','159753159','javier.lopez@hotmail.com','20-15975315-9'),(74,'Rocio','Medina','753159357','rocio.medina@hotmail.com','20-75315935-7'),(75,'Ivan','Torres','357951951','ivan.torres@hotmail.com','20-35795195-1'),(76,'Florencia','Ortiz','951159357','florencia.ortiz@hotmail.com','20-95115935-7'),(77,'Gonzalo','Campos','159357951','gonzalo.campos@hotmail.com','20-15935795-1'),(78,'Julieta','Saenz','753951951','julieta.saenz@hotmail.com','20-75395195-1'),(79,'Felipe','Nuñez','357159357','felipe.nunez@hotmail.com','20-35715935-7'),(80,'Marina','Herrera','951357753','marina.herrera@hotmail.com','20-95135775-3'),(81,'Damian','Ruiz','159753951','damian.ruiz@hotmail.com','20-15975395-1'),(82,'Noelia','Reyes','753159753','noelia.reyes@hotmail.com','20-75315975-3'),(83,'Natalia','Riquelme','951753159','natalia.riquelme@hotmail.com','20-95175315-9'),(84,'Ricardo','Leiva','159357951','ricardo.leiva@hotmail.com','20-15935795-1'),(85,'Carmen','Castro','753951357','carmen.castro@hotmail.com','20-75395135-7'),(86,'Mario','Gomez','357159357','mario.gomez@hotmail.com','20-35715935-7'),(87,'Luciana','Ramos','951753951','luciana.ramos@hotmail.com','20-95175395-1'),(88,'Federico','Vargas','159357357','federico.vargas@hotmail.com','20-15935735-7'),(89,'Elena','Dominguez','753951753','elena.dominguez@hotmail.com','20-75395175-3'),(90,'Daniel','Luna','357159159','daniel.luna@hotmail.com','20-35715915-9'),(91,'Graciela','Farias','951357951','graciela.farias@hotmail.com','20-95135795-1'),(92,'Alejandro','Ruiz','159753357','alejandro.ruiz@hotmail.com','20-15975335-7'),(93,'Marta','Ibanez','753159753','marta.ibanez@hotmail.com','20-75315975-3'),(94,'Hugo','Perez','357951357','hugo.perez@hotmail.com','20-35795135-7'),(95,'Viviana','Diaz','951159753','viviana.diaz@hotmail.com','20-95115975-3'),(96,'Lucas','Figueroa','159357753','lucas.figueroa@hotmail.com','20-15935775-3'),(97,'Paula','Franco','753951357','paula.franco@hotmail.com','20-75395135-7'),(98,'Ignacio','Saenz','357159753','ignacio.saenz@hotmail.com','20-35715975-3'),(99,'Eva','Ledesma','951357951','eva.ledesma@hotmail.com','20-95135795-1'),(100,'Nicolas','Torres','159753159','nicolas.torres@hotmail.com','20-15975315-9'),(101,'Rodrigo','Nunez','3541625879','rodrigo.nunez@gmail.com','20-43924708-9'),(102,'Gladys','Ruiz Diaz','3704329447','<gladys.ruizdiaz@gmail.com','20-20990091-9');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `unique_client_email` BEFORE INSERT ON `clientes` FOR EACH ROW BEGIN
    DECLARE email_count INT;

    SELECT COUNT(*)
    INTO email_count
    FROM Clientes
    WHERE Email = NEW.Email;

    IF email_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El email ya está en uso.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `ID_Comentario` int NOT NULL AUTO_INCREMENT,
  `ID_Cliente` int DEFAULT NULL,
  `ID_Conductor` int DEFAULT NULL,
  `Comentario` text,
  `Fecha_Comentario` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_Comentario`),
  KEY `ID_Cliente` (`ID_Cliente`),
  KEY `ID_Conductor` (`ID_Conductor`),
  CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`),
  CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`ID_Conductor`) REFERENCES `conductores` (`ID_Conductor`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,1,1,'Excelente servicio, muy puntual.','2024-07-23 10:30:00'),(2,2,1,'Conductor muy amable.','2024-07-23 11:45:00'),(3,3,1,'El auto estaba limpio y en buen estado.','2024-07-23 12:35:00'),(4,4,1,'Muy buena experiencia.','2024-07-23 13:20:00'),(5,5,1,'Recomendado.','2024-07-23 14:50:00'),(6,6,1,'Todo perfecto pero no fue puntual.','2024-07-23 15:40:00'),(7,7,1,'Muy buen servicio.','2024-07-23 16:25:00'),(8,8,1,'Conductor muy profesional.','2024-07-23 17:35:00'),(9,9,1,'Muy satisfecho con el viaje.','2024-07-23 18:20:00'),(10,10,1,'Excelente.','2024-07-23 20:00:00'),(11,11,2,'Excelente servicio, muy puntual.','2024-07-23 10:30:00'),(12,12,2,'Conductor muy amable.','2024-07-23 11:45:00'),(13,13,2,'El auto estaba limpio y en buen estado.','2024-07-23 12:35:00'),(14,14,2,'Muy buena experiencia.','2024-07-23 13:20:00'),(15,15,2,'Recomendado.','2024-07-23 14:50:00'),(16,16,2,'Todo perfecto pero no fue puntual.','2024-07-23 15:40:00'),(17,17,2,'Muy buen servicio.','2024-07-23 16:25:00'),(18,18,2,'Conductor muy profesional.','2024-07-23 17:35:00'),(19,19,2,'Muy satisfecho con el viaje.','2024-07-23 18:20:00'),(20,20,2,'Excelente.','2024-07-23 20:00:00'),(21,21,3,'Excelente servicio, muy puntual.','2024-07-23 10:30:00'),(22,22,3,'Conductor muy amable.','2024-07-23 11:45:00'),(23,23,3,'El auto estaba limpio y en buen estado.','2024-07-23 12:35:00'),(24,24,3,'Muy buena experiencia.','2024-07-23 13:20:00'),(25,25,3,'Recomendado.','2024-07-23 14:50:00'),(26,26,3,'Todo perfecto pero no fue puntual.','2024-07-23 15:40:00'),(27,27,3,'Muy buen servicio.','2024-07-23 16:25:00'),(28,28,3,'Conductor muy profesional.','2024-07-23 17:35:00'),(29,29,3,'Muy satisfecho con el viaje.','2024-07-23 18:20:00'),(30,30,3,'Excelente.','2024-07-23 20:00:00'),(31,31,4,'Excelente servicio, muy puntual.','2024-07-23 10:30:00'),(32,32,4,'Conductor muy amable.','2024-07-23 11:45:00'),(33,33,4,'El auto estaba limpio y en buen estado.','2024-07-23 12:35:00'),(34,34,4,'Muy buena experiencia.','2024-07-23 13:20:00'),(35,35,4,'Recomendado.','2024-07-23 14:50:00'),(36,36,4,'Todo perfecto pero no fue puntual.','2024-07-23 15:40:00'),(37,37,4,'Muy buen servicio.','2024-07-23 16:25:00'),(38,38,4,'Conductor muy profesional.','2024-07-23 17:35:00'),(39,39,4,'Muy satisfecho con el viaje.','2024-07-23 18:20:00'),(40,40,4,'Excelente.','2024-07-23 20:00:00'),(41,41,5,'Excelente servicio, muy puntual.','2024-07-23 10:30:00'),(42,42,5,'Conductor muy amable.','2024-07-23 11:45:00'),(43,43,5,'El auto estaba limpio y en buen estado.','2024-07-23 12:35:00'),(44,44,5,'Muy buena experiencia.','2024-07-23 13:20:00'),(45,45,5,'Recomendado.','2024-07-23 14:50:00'),(46,46,5,'Todo perfecto pero no fue puntual.','2024-07-23 15:40:00'),(47,47,5,'Muy buen servicio.','2024-07-23 16:25:00'),(48,48,5,'Conductor muy profesional.','2024-07-23 17:35:00'),(49,49,5,'Muy satisfecho con el viaje.','2024-07-23 18:20:00'),(50,50,5,'Excelente.','2024-07-23 20:00:00'),(51,51,6,'Excelente servicio, muy puntual.','2024-07-23 10:30:00'),(52,52,6,'Conductor muy amable.','2024-07-23 11:45:00'),(53,53,6,'El auto estaba limpio y en buen estado.','2024-07-23 12:35:00'),(54,54,6,'Muy buena experiencia.','2024-07-23 13:20:00'),(55,55,6,'Recomendado.','2024-07-23 14:50:00'),(56,56,6,'Todo perfecto pero no fue puntual.','2024-07-23 15:40:00'),(57,57,6,'Muy buen servicio.','2024-07-23 16:25:00'),(58,58,6,'Conductor muy profesional.','2024-07-23 17:35:00'),(59,59,6,'Muy satisfecho con el viaje.','2024-07-23 18:20:00'),(60,60,6,'Excelente.','2024-07-23 20:00:00'),(61,61,7,'Excelente servicio, muy puntual.','2024-07-23 10:30:00'),(62,62,7,'Conductor muy amable.','2024-07-23 11:45:00'),(63,63,7,'El auto estaba limpio y en buen estado.','2024-07-23 12:35:00'),(64,64,7,'Muy buena experiencia.','2024-07-23 13:20:00'),(65,65,7,'Recomendado.','2024-07-23 14:50:00'),(66,66,7,'Todo perfecto pero no fue puntual.','2024-07-23 15:40:00'),(67,67,7,'Muy buen servicio.','2024-07-23 16:25:00'),(68,68,7,'Conductor muy profesional.','2024-07-23 17:35:00'),(69,69,7,'Muy satisfecho con el viaje.','2024-07-23 18:20:00'),(70,70,7,'Excelente.','2024-07-23 20:00:00'),(71,71,8,'Excelente servicio, muy puntual.','2024-07-23 10:30:00'),(72,72,8,'Conductor muy amable.','2024-07-23 11:45:00'),(73,73,8,'El auto estaba limpio y en buen estado.','2024-07-23 12:35:00'),(74,74,8,'Muy buena experiencia.','2024-07-23 13:20:00'),(75,75,8,'Recomendado.','2024-07-23 14:50:00'),(76,76,8,'Todo perfecto pero no fue puntual.','2024-07-23 15:40:00'),(77,77,8,'Muy buen servicio.','2024-07-23 16:25:00'),(78,78,8,'Conductor muy profesional.','2024-07-23 17:35:00'),(79,79,8,'Muy satisfecho con el viaje.','2024-07-23 18:20:00'),(80,80,8,'Excelente.','2024-07-23 20:00:00'),(81,81,9,'Excelente servicio, muy puntual.','2024-07-23 10:30:00'),(82,82,9,'Conductor muy amable.','2024-07-23 11:45:00'),(83,83,9,'El auto estaba limpio y en buen estado.','2024-07-23 12:35:00'),(84,84,9,'Muy buena experiencia.','2024-07-23 13:20:00'),(85,85,9,'Recomendado.','2024-07-23 14:50:00'),(86,86,9,'Todo perfecto pero no fue puntual.','2024-07-23 15:40:00'),(87,87,9,'Muy buen servicio.','2024-07-23 16:25:00'),(88,88,9,'Conductor muy profesional.','2024-07-23 17:35:00'),(89,89,9,'Muy satisfecho con el viaje.','2024-07-23 18:20:00'),(90,90,9,'Excelente.','2024-07-23 20:00:00'),(91,91,10,'Excelente servicio, muy puntual.','2024-07-23 10:30:00'),(92,92,10,'Conductor muy amable.','2024-07-23 11:45:00'),(93,93,10,'El auto estaba limpio y en buen estado.','2024-07-23 12:35:00'),(94,94,10,'Muy buena experiencia.','2024-07-23 13:20:00'),(95,95,10,'Recomendado.','2024-07-23 14:50:00'),(96,96,10,'Todo perfecto pero no fue puntual.','2024-07-23 15:40:00'),(97,97,10,'Muy buen servicio.','2024-07-23 16:25:00'),(98,98,10,'Conductor muy profesional.','2024-07-23 17:35:00'),(99,99,10,'Muy satisfecho con el viaje.','2024-07-23 18:20:00'),(100,100,10,'Excelente.','2024-07-23 20:00:00');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conductores`
--

DROP TABLE IF EXISTS `conductores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conductores` (
  `ID_Conductor` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(200) DEFAULT NULL,
  `Apellido` varchar(200) DEFAULT NULL,
  `Telefono` varchar(200) NOT NULL,
  `Email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_Conductor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conductores`
--

LOCK TABLES `conductores` WRITE;
/*!40000 ALTER TABLE `conductores` DISABLE KEYS */;
INSERT INTO `conductores` VALUES (1,'Mario','Gonzalez','123123123','mario.gonzalez@gmail.com'),(2,'Paula','Hernandez','321321321','paula.hernandez@gmail.com'),(3,'Andres','Gutierrez','456456456','andres.gutierrez@gmail.com'),(4,'Claudia','Jimenez','789789789','claudia.jimenez@gmail.com'),(5,'Fernando','Morales','147147147','fernando.morales@gmail.com'),(6,'Natalia','Rojas','258258258','natalia.rojas@gmail.com'),(7,'Ricardo','Cruz','369369369','ricardo.cruz@gmail.com'),(8,'Valeria','Ortiz','159159159','valeria.ortiz@gmail.com'),(9,'Diego','Medina','753753753','diego.medina@gmail.com'),(10,'Monica','Chavez','951951951','monica.chavez@gmail.com');
/*!40000 ALTER TABLE `conductores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_precios`
--

DROP TABLE IF EXISTS `historial_precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_precios` (
  `ID_Historial` int NOT NULL AUTO_INCREMENT,
  `ID_Tarifa` int DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Historial`),
  KEY `ID_Tarifa` (`ID_Tarifa`),
  CONSTRAINT `historial_precios_ibfk_1` FOREIGN KEY (`ID_Tarifa`) REFERENCES `tarifas` (`ID_Tarifa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_precios`
--

LOCK TABLES `historial_precios` WRITE;
/*!40000 ALTER TABLE `historial_precios` DISABLE KEYS */;
INSERT INTO `historial_precios` VALUES (1,1,'2024-01-01',10.00),(2,2,'2024-02-01',12.00),(3,3,'2024-03-01',15.00),(4,4,'2024-04-01',8.00),(5,5,'2024-05-01',20.00),(6,6,'2024-06-01',7.00),(7,7,'2024-07-01',25.00),(8,8,'2024-08-01',13.00),(9,9,'2024-09-01',11.00),(10,10,'2024-10-01',18.00);
/*!40000 ALTER TABLE `historial_precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantenimiento`
--

DROP TABLE IF EXISTS `mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantenimiento` (
  `ID_Mantenimiento` int NOT NULL AUTO_INCREMENT,
  `ID_Auto` int DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Costo` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Mantenimiento`),
  KEY `ID_Auto` (`ID_Auto`),
  CONSTRAINT `mantenimiento_ibfk_1` FOREIGN KEY (`ID_Auto`) REFERENCES `autos` (`ID_Auto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimiento`
--

LOCK TABLES `mantenimiento` WRITE;
/*!40000 ALTER TABLE `mantenimiento` DISABLE KEYS */;
INSERT INTO `mantenimiento` VALUES (1,1,'2024-06-01','Cambio de aceite',50.00),(2,2,'2024-06-05','Revisión de frenos',75.00),(3,3,'2024-06-10','Cambio de neumáticos',200.00),(4,4,'2024-06-15','Revisión general',150.00),(5,5,'2024-06-20','Cambio de filtros',60.00),(6,6,'2024-06-25','Alineación y balanceo',80.00),(7,7,'2024-06-30','Reparación de motor',300.00),(8,8,'2024-07-05','Cambio de batería',100.00),(9,9,'2024-07-10','Revisión de suspensión',120.00),(10,10,'2024-07-15','Reparación de transmisión',250.00);
/*!40000 ALTER TABLE `mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multas`
--

DROP TABLE IF EXISTS `multas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multas` (
  `ID_Multa` int NOT NULL AUTO_INCREMENT,
  `ID_Conductor` int DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Monto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Multa`),
  KEY `ID_Conductor` (`ID_Conductor`),
  CONSTRAINT `multas_ibfk_1` FOREIGN KEY (`ID_Conductor`) REFERENCES `conductores` (`ID_Conductor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multas`
--

LOCK TABLES `multas` WRITE;
/*!40000 ALTER TABLE `multas` DISABLE KEYS */;
INSERT INTO `multas` VALUES (1,1,'2024-05-01','Exceso de velocidad',100.00),(2,2,'2024-05-05','Estacionamiento indebido',50.00),(3,3,'2024-05-10','Conducir sin cinturón',75.00),(4,4,'2024-05-15','Pasar semáforo en rojo',150.00),(5,5,'2024-05-20','Uso del celular',80.00),(6,6,'2024-05-25','Conducir ebrio',500.00),(7,7,'2024-05-30','No respetar señal de alto',90.00),(8,8,'2024-06-05','Conducir sin licencia',200.00),(9,9,'2024-06-10','Exceso de velocidad',100.00),(10,10,'2024-06-15','Pasar semáforo en rojo',150.00);
/*!40000 ALTER TABLE `multas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofertas`
--

DROP TABLE IF EXISTS `ofertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofertas` (
  `ID_Oferta` int NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Descuento` decimal(10,2) DEFAULT NULL,
  `Fecha_Inicio` date DEFAULT NULL,
  `Fecha_Fin` date DEFAULT NULL,
  PRIMARY KEY (`ID_Oferta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofertas`
--

LOCK TABLES `ofertas` WRITE;
/*!40000 ALTER TABLE `ofertas` DISABLE KEYS */;
INSERT INTO `ofertas` VALUES (1,'Descuento Verano',10.00,'2023-06-01','2023-08-31'),(2,'Oferta Especial Navidad',20.00,'2023-12-01','2023-12-31'),(3,'Promoción Fin de Año',15.00,'2023-12-25','2024-01-01'),(4,'Descuento por Fidelidad',5.00,'2023-01-01','2023-12-31'),(5,'Oferta Semana Santa',12.00,'2023-04-10','2023-04-17'),(6,'Descuento Primavera',8.00,'2023-09-21','2023-12-21'),(7,'Promoción Aniversario',18.00,'2023-07-15','2023-07-22'),(8,'Descuento Black Friday',25.00,'2023-11-24','2023-11-25'),(9,'Oferta San Valentín',14.00,'2023-02-14','2023-02-14'),(10,'Descuento por Referencia',10.00,'2023-01-01','2023-12-31');
/*!40000 ALTER TABLE `ofertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `ID_Pago` int NOT NULL AUTO_INCREMENT,
  `ID_Reserva` int DEFAULT NULL,
  `ID_Cliente` int DEFAULT NULL,
  `Fecha_Pago` datetime DEFAULT NULL,
  `Monto` decimal(10,2) DEFAULT NULL,
  `Metodo_Pago` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Pago`),
  KEY `ID_Reserva` (`ID_Reserva`),
  KEY `ID_Cliente` (`ID_Cliente`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`ID_Reserva`) REFERENCES `reservas` (`ID_Reserva`),
  CONSTRAINT `pagos_ibfk_2` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,1,1,'2024-07-23 10:30:00',50.00,'Efectivo'),(2,2,2,'2024-07-23 11:45:00',125.00,'Tarjeta de Crédito'),(3,3,3,'2024-07-23 12:35:00',78.00,'Tarjeta de Débito'),(4,4,4,'2024-07-23 13:20:00',36.00,'Efectivo'),(5,5,5,'2024-07-23 14:50:00',82.00,'Transferencia Bancaria'),(6,6,6,'2024-07-23 15:40:00',100.00,'Tarjeta de Crédito'),(7,7,7,'2024-07-23 16:25:00',43.00,'Efectivo'),(8,8,8,'2024-07-23 17:35:00',67.00,'Tarjeta de Débito'),(9,9,9,'2024-07-23 18:20:00',29.00,'Efectivo'),(10,10,10,'2024-07-23 20:00:00',150.00,'Tarjeta de Crédito');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_pago_monto` BEFORE INSERT ON `pagos` FOR EACH ROW BEGIN
    IF NEW.Monto < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El monto del pago no puede ser negativo.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `ID_Reserva` int NOT NULL AUTO_INCREMENT,
  `ID_Cliente` int DEFAULT NULL,
  `ID_Auto` int DEFAULT NULL,
  `ID_Zona` int DEFAULT NULL,
  `ID_Tarifa` int DEFAULT NULL,
  `ID_Ruta` int DEFAULT NULL,
  `ID_Oferta` int DEFAULT NULL,
  `ID_Conductor` int DEFAULT NULL,
  `Fecha_Hora` datetime DEFAULT NULL,
  `Origen` varchar(100) DEFAULT NULL,
  `Destino` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Reserva`),
  KEY `ID_Cliente` (`ID_Cliente`),
  KEY `ID_Auto` (`ID_Auto`),
  KEY `ID_Zona` (`ID_Zona`),
  KEY `ID_Tarifa` (`ID_Tarifa`),
  KEY `ID_Ruta` (`ID_Ruta`),
  KEY `ID_Oferta` (`ID_Oferta`),
  KEY `ID_Conductor` (`ID_Conductor`),
  CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`),
  CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`ID_Auto`) REFERENCES `autos` (`ID_Auto`),
  CONSTRAINT `reservas_ibfk_3` FOREIGN KEY (`ID_Zona`) REFERENCES `zonas` (`ID_Zona`),
  CONSTRAINT `reservas_ibfk_4` FOREIGN KEY (`ID_Tarifa`) REFERENCES `tarifas` (`ID_Tarifa`),
  CONSTRAINT `reservas_ibfk_5` FOREIGN KEY (`ID_Ruta`) REFERENCES `rutas` (`ID_Ruta`),
  CONSTRAINT `reservas_ibfk_6` FOREIGN KEY (`ID_Oferta`) REFERENCES `ofertas` (`ID_Oferta`),
  CONSTRAINT `reservas_ibfk_7` FOREIGN KEY (`ID_Conductor`) REFERENCES `conductores` (`ID_Conductor`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,1,1,1,1,1,1,1,'2023-01-01 12:00:00','Plaza Mayor','Estación Central'),(2,2,2,2,2,2,2,2,'2023-01-02 13:00:00','Aeropuerto','Hotel Hilton'),(3,3,3,3,3,3,3,3,'2023-01-03 14:00:00','Universidad','Centro Comercial'),(4,4,4,4,4,4,4,4,'2023-01-04 15:00:00','Parque Principal','Museo de Arte'),(5,5,5,5,5,5,5,5,'2023-01-05 16:00:00','Hospital General','Biblioteca'),(6,6,6,6,6,6,6,6,'2023-01-06 17:00:00','Estadio','Terminal de Colectivos'),(7,7,7,7,7,7,7,7,'2023-01-07 18:00:00','Teatro Nacional','Casa de Gobierno'),(8,8,8,8,8,8,8,8,'2023-01-08 19:00:00','Zoológico','Jardín Botánico'),(9,9,9,9,9,9,9,9,'2023-01-09 20:00:00','Catedral','Mercado Central'),(10,10,10,10,10,10,10,10,'2023-01-10 21:00:00','Centro de Convenciones','Playas'),(11,11,1,1,1,2,1,2,'2023-01-11 22:00:00','Plaza Mayor','Estación Central'),(12,12,2,2,2,3,2,3,'2023-01-12 23:00:00','Aeropuerto','Hotel Hilton'),(13,13,3,3,3,4,3,4,'2023-01-13 00:00:00','Universidad','Centro Comercial'),(14,14,4,4,4,5,4,5,'2023-01-14 01:00:00','Parque Principal','Museo de Arte'),(15,15,5,5,5,6,5,6,'2023-01-15 02:00:00','Hospital General','Biblioteca'),(16,16,6,6,6,7,6,7,'2023-01-16 03:00:00','Estadio','Terminal de Colectivos'),(17,17,7,7,7,8,7,8,'2023-01-17 04:00:00','Teatro Nacional','Casa de Gobierno'),(18,18,8,8,8,9,8,9,'2023-01-18 05:00:00','Zoológico','Jardín Botánico'),(19,19,9,9,9,10,9,10,'2023-01-19 06:00:00','Catedral','Mercado Central'),(20,20,10,10,10,1,10,1,'2023-01-20 07:00:00','Centro de Convenciones','Playas'),(21,1,1,1,1,2,1,2,'2023-01-21 08:00:00','Plaza Mayor','Estación Central'),(22,2,2,2,2,3,2,3,'2023-01-22 09:00:00','Aeropuerto','Hotel Hilton'),(23,3,3,3,3,4,3,4,'2023-01-23 10:00:00','Universidad','Centro Comercial'),(24,4,4,4,4,5,4,5,'2023-01-24 11:00:00','Parque Principal','Museo de Arte'),(25,5,5,5,5,6,5,6,'2023-01-25 12:00:00','Hospital General','Biblioteca'),(26,6,6,6,6,7,6,7,'2023-01-26 13:00:00','Estadio','Terminal de Colectivos'),(27,7,7,7,7,8,7,8,'2023-01-27 14:00:00','Teatro Nacional','Casa de Gobierno'),(28,8,8,8,8,9,8,9,'2023-01-28 15:00:00','Zoológico','Jardín Botánico'),(29,9,9,9,9,10,9,10,'2023-01-29 16:00:00','Catedral','Mercado Central'),(30,10,10,10,10,1,10,1,'2023-01-30 17:00:00','Centro de Convenciones','Playas'),(31,11,1,1,1,2,1,2,'2023-02-01 18:00:00','Plaza Mayor','Estación Central'),(32,12,2,2,2,3,2,3,'2023-02-02 19:00:00','Aeropuerto','Hotel Hilton'),(33,13,3,3,3,4,3,4,'2023-02-03 20:00:00','Universidad','Centro Comercial'),(34,14,4,4,4,5,4,5,'2023-02-04 21:00:00','Parque Principal','Museo de Arte'),(35,15,5,5,5,6,5,6,'2023-02-05 22:00:00','Hospital General','Biblioteca'),(36,16,6,6,6,7,6,7,'2023-02-06 23:00:00','Estadio','Terminal de Colectivos'),(37,17,7,7,7,8,7,8,'2023-02-07 00:00:00','Teatro Nacional','Casa de Gobierno'),(38,18,8,8,8,9,8,9,'2023-02-08 01:00:00','Zoológico','Jardín Botánico'),(39,19,9,9,9,10,9,10,'2023-02-09 02:00:00','Catedral','Mercado Central'),(40,20,10,10,10,1,10,1,'2023-02-10 03:00:00','Centro de Convenciones','Playas'),(41,1,1,1,1,2,1,2,'2023-02-11 04:00:00','Plaza Mayor','Estación Central'),(42,2,2,2,2,3,2,3,'2023-02-12 05:00:00','Aeropuerto','Hotel Hilton'),(43,3,3,3,3,4,3,4,'2023-02-13 06:00:00','Universidad','Centro Comercial'),(44,4,4,4,4,5,4,5,'2023-02-14 07:00:00','Parque Principal','Museo de Arte'),(45,5,5,5,5,6,5,6,'2023-02-15 08:00:00','Hospital General','Biblioteca'),(46,6,6,6,6,7,6,7,'2023-02-16 09:00:00','Estadio','Terminal de Colectivos'),(47,7,7,7,7,8,7,8,'2023-02-17 10:00:00','Teatro Nacional','Casa de Gobierno'),(48,8,8,8,8,9,8,9,'2023-02-18 11:00:00','Zoológico','Jardín Botánico'),(49,9,9,9,9,10,9,10,'2023-02-19 12:00:00','Catedral','Mercado Central'),(50,10,10,10,10,1,10,1,'2023-02-20 13:00:00','Centro de Convenciones','Playas');
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutas`
--

DROP TABLE IF EXISTS `rutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutas` (
  `ID_Ruta` int NOT NULL AUTO_INCREMENT,
  `Origen` varchar(100) DEFAULT NULL,
  `Destino` varchar(100) DEFAULT NULL,
  `Distancia_Km` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Ruta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutas`
--

LOCK TABLES `rutas` WRITE;
/*!40000 ALTER TABLE `rutas` DISABLE KEYS */;
INSERT INTO `rutas` VALUES (1,'Plaza Mayor','Estación Central',5.00),(2,'Aeropuerto','Hotel Hilton',12.50),(3,'Universidad','Centro Comercial',7.80),(4,'Parque Principal','Museo de Arte',3.60),(5,'Hospital General','Biblioteca',8.20),(6,'Estadio','Terminal de Colectivos',10.00),(7,'Teatro Nacional','Casa de Gobierno',4.30),(8,'Zoológico','Jardín Botánico',6.70),(9,'Catedral','Mercado Central',2.90),(10,'Centro de Convenciones','Playas',15.00);
/*!40000 ALTER TABLE `rutas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguros`
--

DROP TABLE IF EXISTS `seguros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguros` (
  `ID_Seguro` int NOT NULL AUTO_INCREMENT,
  `ID_Auto` int DEFAULT NULL,
  `Empresa` varchar(50) DEFAULT NULL,
  `Poliza` varchar(50) DEFAULT NULL,
  `Fecha_Vencimiento` date DEFAULT NULL,
  PRIMARY KEY (`ID_Seguro`),
  KEY `ID_Auto` (`ID_Auto`),
  CONSTRAINT `seguros_ibfk_1` FOREIGN KEY (`ID_Auto`) REFERENCES `autos` (`ID_Auto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguros`
--

LOCK TABLES `seguros` WRITE;
/*!40000 ALTER TABLE `seguros` DISABLE KEYS */;
INSERT INTO `seguros` VALUES (1,1,'Seguro S.A.','ABC123','2024-12-31'),(2,2,'Aseguradora XYZ','DEF456','2024-11-30'),(3,3,'Protección Total','GHI789','2024-10-31'),(4,4,'Cobertura Integral','JKL012','2024-09-30'),(5,5,'Seguro Premium','MNO345','2024-08-31'),(6,6,'Asegura Fácil','PQR678','2024-07-31'),(7,7,'Seguridad Completa','STU901','2024-06-30'),(8,8,'Cobertura Básica','VWX234','2024-05-31'),(9,9,'Aseguradora Alfa','YZA567','2024-04-30'),(10,10,'Seguros Beta','BCD890','2024-03-31');
/*!40000 ALTER TABLE `seguros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifas`
--

DROP TABLE IF EXISTS `tarifas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarifas` (
  `ID_Tarifa` int NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Precio_Kilometro` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Tarifa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifas`
--

LOCK TABLES `tarifas` WRITE;
/*!40000 ALTER TABLE `tarifas` DISABLE KEYS */;
INSERT INTO `tarifas` VALUES (1,'Tarifa Básica',10.00),(2,'Tarifa Nocturna',12.00),(3,'Tarifa Festivos',15.00),(4,'Tarifa Larga Distancia',8.00),(5,'Tarifa Especial',20.00),(6,'Tarifa Económica',7.00),(7,'Tarifa VIP',25.00),(8,'Tarifa Fin de Semana',13.00),(9,'Tarifa Madrugada',11.00),(10,'Tarifa Ejecutiva',18.00);
/*!40000 ALTER TABLE `tarifas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes`
--

DROP TABLE IF EXISTS `viajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes` (
  `ID_Viaje` int NOT NULL AUTO_INCREMENT,
  `ID_Reserva` int DEFAULT NULL,
  `ID_Oferta` int DEFAULT NULL,
  `Fecha_Hora_Inicio` datetime DEFAULT NULL,
  `Fecha_Hora_Fin` datetime DEFAULT NULL,
  `Kilometraje` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Viaje`),
  KEY `ID_Reserva` (`ID_Reserva`),
  KEY `ID_Oferta` (`ID_Oferta`),
  CONSTRAINT `viajes_ibfk_1` FOREIGN KEY (`ID_Reserva`) REFERENCES `reservas` (`ID_Reserva`),
  CONSTRAINT `viajes_ibfk_2` FOREIGN KEY (`ID_Oferta`) REFERENCES `ofertas` (`ID_Oferta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes`
--

LOCK TABLES `viajes` WRITE;
/*!40000 ALTER TABLE `viajes` DISABLE KEYS */;
INSERT INTO `viajes` VALUES (1,1,1,'2024-07-23 10:00:00','2024-07-23 10:30:00',5.00),(2,2,2,'2024-07-23 11:00:00','2024-07-23 11:45:00',12.50),(3,3,3,'2024-07-23 12:00:00','2024-07-23 12:35:00',7.80),(4,4,4,'2024-07-23 13:00:00','2024-07-23 13:20:00',3.60),(5,5,5,'2024-07-23 14:00:00','2024-07-23 14:50:00',8.20),(6,6,6,'2024-07-23 15:00:00','2024-07-23 15:40:00',10.00),(7,7,7,'2024-07-23 16:00:00','2024-07-23 16:25:00',4.30),(8,8,8,'2024-07-23 17:00:00','2024-07-23 17:35:00',6.70),(9,9,9,'2024-07-23 18:00:00','2024-07-23 18:20:00',2.90),(10,10,10,'2024-07-23 19:00:00','2024-07-23 20:00:00',15.00);
/*!40000 ALTER TABLE `viajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_autos`
--

DROP TABLE IF EXISTS `vista_autos`;
/*!50001 DROP VIEW IF EXISTS `vista_autos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_autos` AS SELECT 
 1 AS `Patente`,
 1 AS `ID_Conductor`,
 1 AS `Nombre_Conductor`,
 1 AS `Apellido_Conductor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_clientes`
--

DROP TABLE IF EXISTS `vista_clientes`;
/*!50001 DROP VIEW IF EXISTS `vista_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_clientes` AS SELECT 
 1 AS `Nombre`,
 1 AS `Apellido`,
 1 AS `Telefono`,
 1 AS `Cuil`,
 1 AS `Origen`,
 1 AS `Destino`,
 1 AS `Fecha_Hora`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_comentarios`
--

DROP TABLE IF EXISTS `vista_comentarios`;
/*!50001 DROP VIEW IF EXISTS `vista_comentarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_comentarios` AS SELECT 
 1 AS `Comentario`,
 1 AS `Nombre_Cliente`,
 1 AS `Apellido_Cliente`,
 1 AS `Nombre_Conductor`,
 1 AS `Apellido_Conductor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_conductores`
--

DROP TABLE IF EXISTS `vista_conductores`;
/*!50001 DROP VIEW IF EXISTS `vista_conductores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_conductores` AS SELECT 
 1 AS `Nombre`,
 1 AS `Apellido`,
 1 AS `Telefono`,
 1 AS `Patente`,
 1 AS `Marca`,
 1 AS `Modelo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_reservas`
--

DROP TABLE IF EXISTS `vista_reservas`;
/*!50001 DROP VIEW IF EXISTS `vista_reservas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_reservas` AS SELECT 
 1 AS `Origen`,
 1 AS `Destino`,
 1 AS `Fecha_Hora`,
 1 AS `Nombre_Cliente`,
 1 AS `Apellido_Cliente`,
 1 AS `Nombre_Conductor`,
 1 AS `Apellido_Conductor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_rutas`
--

DROP TABLE IF EXISTS `vista_rutas`;
/*!50001 DROP VIEW IF EXISTS `vista_rutas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_rutas` AS SELECT 
 1 AS `Origen`,
 1 AS `Destino`,
 1 AS `Distancia_Km`,
 1 AS `Fecha_Hora`,
 1 AS `ID_Cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `zonas`
--

DROP TABLE IF EXISTS `zonas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zonas` (
  `ID_Zona` int NOT NULL AUTO_INCREMENT,
  `Nombre_Zona` varchar(50) DEFAULT NULL,
  `Tarifa_Base` decimal(10,2) DEFAULT NULL,
  `ID_Tarifa` int DEFAULT NULL,
  PRIMARY KEY (`ID_Zona`),
  KEY `ID_Tarifa` (`ID_Tarifa`),
  CONSTRAINT `zonas_ibfk_1` FOREIGN KEY (`ID_Tarifa`) REFERENCES `tarifas` (`ID_Tarifa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zonas`
--

LOCK TABLES `zonas` WRITE;
/*!40000 ALTER TABLE `zonas` DISABLE KEYS */;
INSERT INTO `zonas` VALUES (1,'Zona Centro',5.00,1),(2,'Zona Norte',6.00,2),(3,'Zona Sur',4.00,3),(4,'Zona Este',5.50,4),(5,'Zona Oeste',4.50,5),(6,'Zona Alta',6.50,6),(7,'Zona Baja',3.50,7),(8,'Zona Residencial',5.25,8),(9,'Zona Comercial',6.75,9),(10,'Zona Industrial',7.25,10);
/*!40000 ALTER TABLE `zonas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyecto_remiseria'
--

--
-- Dumping routines for database 'proyecto_remiseria'
--
/*!50003 DROP FUNCTION IF EXISTS `total_comentarios_conductor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `total_comentarios_conductor`(
    p_Nombre_Conductor VARCHAR(50),
    p_Apellido_Conductor VARCHAR(50)
) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE v_Total INT;

    SELECT COUNT(C.ID_Comentario) INTO v_Total
    FROM Comentarios C
    JOIN Conductores Co ON C.ID_Conductor = Co.ID_Conductor
    WHERE Co.Nombre = p_Nombre_Conductor
      AND Co.Apellido = p_Apellido_Conductor;

    RETURN IFNULL(v_Total, 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `total_viajes_conductor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `total_viajes_conductor`(
    p_Nombre_Conductor VARCHAR(50),
    p_Apellido_Conductor VARCHAR(50)
) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE v_Total INT;

    SELECT COUNT(V.ID_Viaje) INTO v_Total
    FROM Viajes V
    JOIN Reservas R ON V.ID_Reserva = R.ID_Reserva
    JOIN Autos A ON R.ID_Auto = A.ID_Auto
    JOIN Conductores Co ON A.ID_Conductor = Co.ID_Conductor
    WHERE Co.Nombre = p_Nombre_Conductor
      AND Co.Apellido = p_Apellido_Conductor;

    RETURN IFNULL(v_Total, 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarCliente`(
    IN p_Nombre VARCHAR(200),
    IN p_Apellido VARCHAR(200),
    IN p_Telefono VARCHAR(200),
    IN p_Email VARCHAR(200),
    IN p_Cuil VARCHAR(20)
)
BEGIN
    INSERT INTO Clientes (Nombre, Apellido, Telefono, Email, Cuil)
    VALUES (p_Nombre, p_Apellido, p_Telefono, p_Email, p_Cuil);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerReservasPorConductor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerReservasPorConductor`(
    IN p_NombreConductor VARCHAR(50),
    IN p_ApellidoConductor VARCHAR(50)
)
BEGIN
    SELECT r.ID_Reserva, r.ID_Cliente, r.ID_Auto, r.ID_Zona, r.ID_Tarifa, r.ID_Ruta, r.ID_Oferta, r.Fecha_Hora, r.Origen, r.Destino
    FROM Reservas r
    JOIN Autos a ON r.ID_Auto = a.ID_Auto
    JOIN Conductores c ON a.ID_Conductor = c.ID_Conductor
    WHERE c.Nombre = p_NombreConductor AND c.Apellido = p_ApellidoConductor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vista_autos`
--

/*!50001 DROP VIEW IF EXISTS `vista_autos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_autos` AS select `a`.`Patente` AS `Patente`,`a`.`ID_Conductor` AS `ID_Conductor`,`c`.`Nombre` AS `Nombre_Conductor`,`c`.`Apellido` AS `Apellido_Conductor` from (`autos` `a` join `conductores` `c` on((`a`.`ID_Conductor` = `c`.`ID_Conductor`))) limit 100 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vista_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_clientes` AS select `c`.`Nombre` AS `Nombre`,`c`.`Apellido` AS `Apellido`,`c`.`Telefono` AS `Telefono`,`c`.`Cuil` AS `Cuil`,`r`.`Origen` AS `Origen`,`r`.`Destino` AS `Destino`,`r`.`Fecha_Hora` AS `Fecha_Hora` from (`clientes` `c` left join `reservas` `r` on((`c`.`ID_Cliente` = `r`.`ID_Cliente`))) limit 100 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_comentarios`
--

/*!50001 DROP VIEW IF EXISTS `vista_comentarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_comentarios` AS select `co`.`Comentario` AS `Comentario`,`cl`.`Nombre` AS `Nombre_Cliente`,`cl`.`Apellido` AS `Apellido_Cliente`,`con`.`Nombre` AS `Nombre_Conductor`,`con`.`Apellido` AS `Apellido_Conductor` from ((`comentarios` `co` join `clientes` `cl` on((`co`.`ID_Cliente` = `cl`.`ID_Cliente`))) join `conductores` `con` on((`co`.`ID_Conductor` = `con`.`ID_Conductor`))) limit 100 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_conductores`
--

/*!50001 DROP VIEW IF EXISTS `vista_conductores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_conductores` AS select `c`.`Nombre` AS `Nombre`,`c`.`Apellido` AS `Apellido`,`c`.`Telefono` AS `Telefono`,`a`.`Patente` AS `Patente`,`a`.`Marca` AS `Marca`,`a`.`Modelo` AS `Modelo` from (`conductores` `c` left join `autos` `a` on((`c`.`ID_Conductor` = `a`.`ID_Conductor`))) limit 100 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_reservas`
--

/*!50001 DROP VIEW IF EXISTS `vista_reservas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_reservas` AS select `r`.`Origen` AS `Origen`,`r`.`Destino` AS `Destino`,`r`.`Fecha_Hora` AS `Fecha_Hora`,`cl`.`Nombre` AS `Nombre_Cliente`,`cl`.`Apellido` AS `Apellido_Cliente`,`con`.`Nombre` AS `Nombre_Conductor`,`con`.`Apellido` AS `Apellido_Conductor` from ((`reservas` `r` join `clientes` `cl` on((`r`.`ID_Cliente` = `cl`.`ID_Cliente`))) join `conductores` `con` on((`r`.`ID_Conductor` = `con`.`ID_Conductor`))) limit 100 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_rutas`
--

/*!50001 DROP VIEW IF EXISTS `vista_rutas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_rutas` AS select `r`.`Origen` AS `Origen`,`r`.`Destino` AS `Destino`,`r`.`Distancia_Km` AS `Distancia_Km`,`res`.`Fecha_Hora` AS `Fecha_Hora`,`res`.`ID_Cliente` AS `ID_Cliente` from (`rutas` `r` left join `reservas` `res` on(((`r`.`Origen` = `res`.`Origen`) and (`r`.`Destino` = `res`.`Destino`)))) limit 100 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-28 15:51:51
