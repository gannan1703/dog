/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : doghome

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2020-10-19 15:01:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `car`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `carid` varchar(32) NOT NULL DEFAULT '' COMMENT '购物车id',
  `userid` varchar(32) DEFAULT NULL COMMENT '用户id',
  `dogid` varchar(32) DEFAULT NULL COMMENT '狗id',
  `number` int(11) DEFAULT NULL COMMENT '加购数量',
  `address` varchar(32) DEFAULT NULL COMMENT '送狗地址',
  `status` varchar(16) DEFAULT '可见' COMMENT '交易是否完成（是否生成订单，生成订单后不可见）',
  `time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`carid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------

-- ----------------------------
-- Table structure for `dog`
-- ----------------------------
DROP TABLE IF EXISTS `dog`;
CREATE TABLE `dog` (
  `dogid` varchar(32) NOT NULL DEFAULT '' COMMENT '狗id',
  `dogname` varchar(32) DEFAULT NULL COMMENT '狗名（品种）',
  `price` int(11) DEFAULT '0' COMMENT '价格',
  `count` int(11) DEFAULT '0' COMMENT '数量',
  `dimg` varchar(255) DEFAULT NULL COMMENT '狗照片',
  `status` varchar(255) DEFAULT '下架' COMMENT '狗状态（上架下架）',
  PRIMARY KEY (`dogid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dog
-- ----------------------------

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `orderid` varchar(32) NOT NULL DEFAULT '' COMMENT '订单id',
  `carid` varchar(32) DEFAULT NULL COMMENT '购物车id',
  `account` int(11) DEFAULT '0' COMMENT '数量',
  `time` varchar(32) DEFAULT NULL COMMENT '订单完成时间',
  `state` varchar(16) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` varchar(32) NOT NULL COMMENT '用户id',
  `username` varchar(32) DEFAULT NULL COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `money` int(11) DEFAULT '0' COMMENT '余额',
  `admin` varchar(16) DEFAULT '用户' COMMENT '身份',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
