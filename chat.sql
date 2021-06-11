/*
 Navicat Premium Data Transfer

 Source Server         : Telematica
 Source Server Type    : MySQL
 Source Server Version : 80024
 Source Host           : localhost:3306
 Source Schema         : chat

 Target Server Type    : MySQL
 Target Server Version : 80024
 File Encoding         : 65001

 Date: 28/05/2021 10:03:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mensajes
-- ----------------------------
DROP TABLE IF EXISTS `mensajes`;
CREATE TABLE `mensajes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `mensaje` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_id` int NOT NULL,
  `sala_id` int NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mensajes
-- ----------------------------
BEGIN;
INSERT INTO `mensajes` VALUES (1, 'HOla', 3, 1, '2021-05-28 00:00:00');
INSERT INTO `mensajes` VALUES (2, 'Hola Sergio', 2, 1, '2021-05-28 00:00:00');
INSERT INTO `mensajes` VALUES (3, 'Hola Admin y Sergio!', 1, 3, '2021-05-28 00:00:00');
INSERT INTO `mensajes` VALUES (4, 'Hola Mundo!', 3, 3, '2021-05-28 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for salas
-- ----------------------------
DROP TABLE IF EXISTS `salas`;
CREATE TABLE `salas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_sala` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fecha_creación` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of salas
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Password` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'test', 'test', 'test@test.com');
INSERT INTO `users` VALUES (2, 'admin', 'admin', 'admin@admin.com');
INSERT INTO `users` VALUES (3, 'Sergio', 'Montano', 'sergio_montano@ucol.mx');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
