/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100421
 Source Host           : localhost:3306
 Source Schema         : gofood

 Target Server Type    : MySQL
 Target Server Version : 100421
 File Encoding         : 65001

 Date: 21/09/2021 16:14:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gofood_menu
-- ----------------------------
DROP TABLE IF EXISTS `gofood_menu`;
CREATE TABLE `gofood_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_toko` int(11) DEFAULT NULL,
  `nm_menu` varchar(255) DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `best_seller` int(11) DEFAULT NULL,
  `dt_aktif` int(11) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gofood_menu
-- ----------------------------
BEGIN;
INSERT INTO `gofood_menu` VALUES (1, 1, 'Nasi Ayam Bakar', 1, 1, 1, '28.750');
INSERT INTO `gofood_menu` VALUES (2, 1, 'Nasi Telur Dadar', 1, 1, 1, '13.225');
INSERT INTO `gofood_menu` VALUES (3, 1, 'Nasi Rendang', 1, 1, 1, '28.750');
COMMIT;

-- ----------------------------
-- Table structure for gofood_toko
-- ----------------------------
DROP TABLE IF EXISTS `gofood_toko`;
CREATE TABLE `gofood_toko` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nm_toko` varchar(255) DEFAULT NULL,
  `jarak_toko` varchar(255) DEFAULT NULL,
  `almt_toko` varchar(255) DEFAULT NULL,
  `ranting_toko` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gofood_toko
-- ----------------------------
BEGIN;
INSERT INTO `gofood_toko` VALUES (1, 'Rumah Makan Padang Sederhana', '1.4 km', 'Laweyan', '4.6');
INSERT INTO `gofood_toko` VALUES (2, 'Ayam Bakar Bu Puji Laweyan', '0.8 km', 'Laweyan', '4.8');
INSERT INTO `gofood_toko` VALUES (3, 'Roti Gembong Gedhe Slamet Riyadi', '1.2 km', 'Slamet Riyadi', '4.5');
INSERT INTO `gofood_toko` VALUES (4, 'Pukis Badran', '0.5 km', 'Badran', '4.4');
INSERT INTO `gofood_toko` VALUES (5, 'Bakmi Jawa Solo Manahan', '1.0 km', 'Manahan', '4.2');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
