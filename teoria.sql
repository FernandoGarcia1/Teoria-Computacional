-- MySQL dump 10.13  Distrib 5.6.45, for Win64 (x86_64)
--
-- Host: localhost    Database: teoria
-- ------------------------------------------------------
-- Server version	5.6.45-log

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
-- Table structure for table `testimoniales`
--

DROP TABLE IF EXISTS `testimoniales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimoniales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` longtext NOT NULL,
  `correo` longtext NOT NULL,
  `mensaje` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimoniales`
--

LOCK TABLES `testimoniales` WRITE;
/*!40000 ALTER TABLE `testimoniales` DISABLE KEYS */;
INSERT INTO `testimoniales` VALUES (4,'Automatas de Pila','PDF Elaborado por Universidad Nacional del Centro de la Provincia de Buenos Aires Sobre los Autómatas de Pila.','users.exa.unicen.edu.ar/catedras/ccomp1/Apunte4.pdf'),(6,'Infografía Alan Turing ','Infografía sobre la vida de Alan Turing','pbs.twimg.com/media/ClqErlUUkAAhn0S.jpg'),(7,'¿Qué es una máquina de Turing?','Explicación sencilla sobre las maquinas de Turing. ','www.youtube.com/watch?v=iaXLDz_UeYY'),(8,'Maquinas de Turing en JFLAP','Explicación sobre el tema de Maquinas de Turing y ejemplos de JFLAP','www.matesfacil.com/automatas-lenguajes/Maquina-Turing.html'),(9,'Automatas de Pila','Desarrollo de Ejercicios de Autómatas de Pila.','ocw.uc3m.es/ingenieria-informatica/teoria-de-automatas-y-lenguajes-formales/ejercicios/ejercicios-tema-6-automatas-a-pila'),(10,'Arboles de Derivación ','Desarrollo de Ejercicios de Arboles de Derivación.','ocw.uc3m.es/ingenieria-informatica/teoria-de-automatas-y-lenguajes-formales/practicas-1/solucion-a-las-practicas-de-jflap');
/*!40000 ALTER TABLE `testimoniales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes`
--

DROP TABLE IF EXISTS `viajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viajes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` longtext,
  `precio` longtext,
  `fecha_ida` longtext,
  `fecha_vuelta` date DEFAULT NULL,
  `imagen` longtext,
  `descripcion` text,
  `disponibles` int(11) DEFAULT NULL,
  `slug` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes`
--

LOCK TABLES `viajes` WRITE;
/*!40000 ALTER TABLE `viajes` DISABLE KEYS */;
INSERT INTO `viajes` VALUES (8,'¿Qué es un árbol de derivación??','youtu.be/68PQ6FBZq88','21/1/2021',NULL,'Arboles.png','Un árbol de derivación nos permite ver gráficamente como se deriva cualquier palabra que pertenece a un lenguaje definido.\r\nLos árboles de derivación este compuesto por nodos y líneas llamadas ramas o arcos, cada rama conecta a dos nodos distintos. Todo árbol, este compuesto de un nodo raíz y n nodos padres y m nodos hijos, además de nodos hojas los cuales son aquellos que no derivan a ningún otro nodo.\r\nLa cadena de caracteres resultante de concatenar los elementos de los nodos hoja de un árbol se le conoce como producto del árbol.\r\n',0,'derivacion'),(10,'Derivación por la izquierda y por la derecha.','www.youtube.com/watch?v=qkJQpTzYPqs&t=84s','21/1/2021',NULL,'izquierda.png','Un árbol de derivación puede desarrollarse a través de diferentes caminos, es decir diferente manera de desarrollar las derivaciones. Se llama derivación por la izquierda asociada a un árbol a aquella en la que siempre se deriva primero la primera variable (más a la izquierda) que aparece en la palabra. Se llama derivación por la derecha asociada a un árbol a aquella en la que siempre se deriva primero la última variable (más a la derecha) que aparece en la palabra.',0,'izquierda'),(11,'Ambigüedad en arboles de derivación. ','https://youtu.be/XJBk6_6wuX4','21/1/2021',NULL,'AMBIGUEDAD.png','Dentro de los árboles de derivación, existe un término llamado AMBIGÜEDAD, esto tiene como significado si alguna cadena perteneciente a un lenguaje tiene más de un árbol de derivación diferente se le conoce como ambiguo. Un lenguaje puede contener gramáticas ambiguas y no ambiguas. Si se desea eliminar la ambigüedad, Existen técnicas para eliminar la ambigüedad de una GLC; en general estas técnicas consisten en introducir nuevos no terminales de modo que se eliminen los árboles de derivación no deseados.\r\nPara nuestro ejemplo, se muestran dos árboles de derivación para una misma expresión es indeseable, pues cada árbol indica una manera distinta de estructurar la expresión x+y*x .\r\n',0,'Ambi');
/*!40000 ALTER TABLE `viajes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-21 23:17:56
