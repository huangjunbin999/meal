/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : reservation

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2020-11-18 10:30:33
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `meal_cart`
-- ----------------------------
DROP TABLE IF EXISTS `meal_cart`;
CREATE TABLE `meal_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_food` int(11) DEFAULT NULL,
  `cart_count` int(11) DEFAULT NULL,
  `cart_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal_cart
-- ----------------------------
INSERT INTO `meal_cart` VALUES ('5', '5', '3', '3');
INSERT INTO `meal_cart` VALUES ('6', '6', '2', '3');
INSERT INTO `meal_cart` VALUES ('7', '2', '4', '3');
INSERT INTO `meal_cart` VALUES ('105', '1', '1', '2');
INSERT INTO `meal_cart` VALUES ('106', '26', '2', '2');

-- ----------------------------
-- Table structure for `meal_collectstore`
-- ----------------------------
DROP TABLE IF EXISTS `meal_collectstore`;
CREATE TABLE `meal_collectstore` (
  `collectStore_id` int(11) NOT NULL AUTO_INCREMENT,
  `collectStore_user` int(11) DEFAULT NULL,
  `collectStore_store` int(11) DEFAULT NULL,
  PRIMARY KEY (`collectStore_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal_collectstore
-- ----------------------------
INSERT INTO `meal_collectstore` VALUES ('1', '27', '1');
INSERT INTO `meal_collectstore` VALUES ('2', '27', '2');
INSERT INTO `meal_collectstore` VALUES ('3', '27', '3');
INSERT INTO `meal_collectstore` VALUES ('4', '27', '4');
INSERT INTO `meal_collectstore` VALUES ('5', '27', '5');
INSERT INTO `meal_collectstore` VALUES ('6', '27', '6');
INSERT INTO `meal_collectstore` VALUES ('7', '2', '7');
INSERT INTO `meal_collectstore` VALUES ('8', '2', '8');
INSERT INTO `meal_collectstore` VALUES ('9', '27', '9');
INSERT INTO `meal_collectstore` VALUES ('10', '27', '10');
INSERT INTO `meal_collectstore` VALUES ('11', '3', '1');
INSERT INTO `meal_collectstore` VALUES ('14', '3', '2');
INSERT INTO `meal_collectstore` VALUES ('15', '2', '2');
INSERT INTO `meal_collectstore` VALUES ('16', '2', '4');
INSERT INTO `meal_collectstore` VALUES ('17', '2', '1');
INSERT INTO `meal_collectstore` VALUES ('18', '2', '3');
INSERT INTO `meal_collectstore` VALUES ('19', '2', '5');
INSERT INTO `meal_collectstore` VALUES ('20', '2', '6');
INSERT INTO `meal_collectstore` VALUES ('21', '2', '9');
INSERT INTO `meal_collectstore` VALUES ('22', '2', '10');
INSERT INTO `meal_collectstore` VALUES ('23', '2', '11');
INSERT INTO `meal_collectstore` VALUES ('24', '2', '12');
INSERT INTO `meal_collectstore` VALUES ('25', '2', '13');
INSERT INTO `meal_collectstore` VALUES ('26', '2', '14');
INSERT INTO `meal_collectstore` VALUES ('27', '2', '15');
INSERT INTO `meal_collectstore` VALUES ('28', '2', '16');
INSERT INTO `meal_collectstore` VALUES ('29', '2', '18');

-- ----------------------------
-- Table structure for `meal_comment`
-- ----------------------------
DROP TABLE IF EXISTS `meal_comment`;
CREATE TABLE `meal_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_user` int(11) DEFAULT NULL,
  `comment_content` varchar(255) DEFAULT NULL,
  `comment_time` varchar(255) DEFAULT NULL,
  `comment_star` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal_comment
-- ----------------------------
INSERT INTO `meal_comment` VALUES ('2', '6', '好吃', '2020-11-10 13:25:30', '3.90');
INSERT INTO `meal_comment` VALUES ('5', '2', 'good', '2020-10-10 13:25:30', '4.70');
INSERT INTO `meal_comment` VALUES ('9', '6', '非常棒', '2020-10-02 13:25:30', '4.50');
INSERT INTO `meal_comment` VALUES ('22', '27', '君安恨不得GV三开门红', '2020-11-16 10:34:55', '4.70');
INSERT INTO `meal_comment` VALUES ('23', '2', '一般般啦', '2020-11-18 08:30:12', '3.80');
INSERT INTO `meal_comment` VALUES ('24', '2', 'very good', '2020-11-17 15:29:49', '3.60');
INSERT INTO `meal_comment` VALUES ('25', '2', '靠妖哦，怎么可以这么好吃~', '2020-11-18 08:31:32', '5.00');
INSERT INTO `meal_comment` VALUES ('26', '2', '赞赞赞', '2020-11-17 16:14:39', '4.80');
INSERT INTO `meal_comment` VALUES ('28', '2', '宝贝收到了，孩子很喜欢', '2020-11-17 16:14:23', '5.00');
INSERT INTO `meal_comment` VALUES ('29', '2', 'test', '2020-11-17 16:39:08', '3.80');
INSERT INTO `meal_comment` VALUES ('31', '2', '年轻人耗子尾汁', '2020-11-18 08:29:52', '1.00');
INSERT INTO `meal_comment` VALUES ('44', '2', '宝贝收到了，孩子很喜欢', '2020-11-17 17:25:21', '5.00');
INSERT INTO `meal_comment` VALUES ('45', '2', '赞赞赞', '2020-11-17 17:25:44', '4.70');
INSERT INTO `meal_comment` VALUES ('46', '2', '不错吃', '2020-11-17 17:31:10', '4.90');

-- ----------------------------
-- Table structure for `meal_coupons`
-- ----------------------------
DROP TABLE IF EXISTS `meal_coupons`;
CREATE TABLE `meal_coupons` (
  `coupons_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupons_price` double(11,2) DEFAULT NULL,
  `coupons_store` int(11) DEFAULT NULL,
  `coupons_startTime` varchar(255) DEFAULT NULL,
  `coupons_endTime` varchar(255) DEFAULT NULL,
  `coupons_conditions` varchar(255) DEFAULT NULL,
  `coupons_user` int(11) DEFAULT NULL,
  `coupons_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`coupons_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal_coupons
-- ----------------------------
INSERT INTO `meal_coupons` VALUES ('1', '10.00', '1', '2020-10-11', '2020-10-13', 'ddd', '2', '2');
INSERT INTO `meal_coupons` VALUES ('2', '5.00', '2', '2020-10-11', '2020-10-13', 'ddd', '2', '2');
INSERT INTO `meal_coupons` VALUES ('3', '15.00', '2', '2020-10-11', '2020-10-13', 'sss', '2', '1');
INSERT INTO `meal_coupons` VALUES ('4', '20.00', '5', '2020-10-11', '2020-10-13', 'sss', '2', '1');
INSERT INTO `meal_coupons` VALUES ('5', '10.00', '2', '2020-10-13', '2020-10-15', 'aaa', '2', '3');

-- ----------------------------
-- Table structure for `meal_food`
-- ----------------------------
DROP TABLE IF EXISTS `meal_food`;
CREATE TABLE `meal_food` (
  `food_id` int(11) NOT NULL AUTO_INCREMENT,
  `food_store` int(11) DEFAULT NULL,
  `food_name` varchar(255) DEFAULT NULL,
  `food_image` varchar(255) DEFAULT NULL,
  `food_count` int(11) DEFAULT NULL,
  `food_info` varchar(255) DEFAULT NULL,
  `food_price` double(11,2) DEFAULT NULL,
  `food_type` int(255) DEFAULT NULL,
  `food_score` int(11) DEFAULT NULL,
  `food_region` varchar(255) DEFAULT NULL,
  `food_star` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal_food
-- ----------------------------
INSERT INTO `meal_food` VALUES ('1', '1', '鱼香肉丝', 'yuxiangrousi.jpg', '100', '肉质鲜美', '15.00', '5', '5', '思明区', '3.00');
INSERT INTO `meal_food` VALUES ('2', '1', '红烧肉', 'hongshaorou.jpg', '100', '肉质鲜美', '18.00', '5', '5', '思明区', '3.50');
INSERT INTO `meal_food` VALUES ('4', '15', '珍珠奶茶', 'zhenzhunaicha.jpg', '100', '香甜可口', '10.00', '11', '3', '思明区', '2.50');
INSERT INTO `meal_food` VALUES ('5', '13', '蛋糕', 'dangao.jpg', '100', '草莓蛋糕', '70.00', '10', '5', '思明区', '2.00');
INSERT INTO `meal_food` VALUES ('6', '13', '雪花糕', 'xuehuagao.jpg', '50', '好吃', '12.00', '10', '5', '思明区', '3.00');
INSERT INTO `meal_food` VALUES ('7', '1', '酸辣土豆丝', 'suanlatudousi.jpg', '50', '好吃', '15.00', '5', '5', '思明区', '3.00');
INSERT INTO `meal_food` VALUES ('8', '1', '青岛啤酒', 'qingdaopijiu.jpg', '50', '好喝', '6.00', '6', '5', '思明区', '3.00');
INSERT INTO `meal_food` VALUES ('9', '1', '扬州炒饭', 'yangzhouchaofan.jpg', '50', '好喝', '16.00', '2', '5', '思明区', '3.00');
INSERT INTO `meal_food` VALUES ('10', '4', '青岛啤酒', 'qingdaopijiu.jpg', '50', '好喝', '6.00', '6', '5', '思明区', '3.50');
INSERT INTO `meal_food` VALUES ('11', '3', '蛋炒饭', 'danchaofan.jpg', '50', '好喝', '12.00', '2', '5', '思明区', '4.00');
INSERT INTO `meal_food` VALUES ('12', '3', '青岛啤酒', 'qingdaopijiu.jpg', '50', '好喝', '6.00', '6', '5', '思明区', '4.50');
INSERT INTO `meal_food` VALUES ('13', '10', '漳州卤面', 'zhangzhoulumian.jpg', '50', '好喝', '15.00', '1', '5', '思明区', '5.00');
INSERT INTO `meal_food` VALUES ('14', '4', '糖醋鲤鱼', '01.jpg', '50', '好喝', '28.00', '7', '5', '思明区', '4.80');
INSERT INTO `meal_food` VALUES ('15', '18', '牛肉面', 'niuroumian.jpg', '100', '好吃的一批', '15.00', '1', '5', '思明区', '4.00');
INSERT INTO `meal_food` VALUES ('16', '18', '臊子面', 'saozimian.jpg', '100', '真香', '15.00', '1', '5', '思明区', '4.50');
INSERT INTO `meal_food` VALUES ('17', '18', '油泼面', 'youpomian.jpg', '100', '好吃', '15.00', '1', '5', '思明区', '5.00');
INSERT INTO `meal_food` VALUES ('18', '2', '凉皮', 'liangpi.jpg', '50', '好吃', '13.00', '1', '5', '思明区', '4.00');
INSERT INTO `meal_food` VALUES ('19', '2', '肉夹馍', 'roujiamo.jpg', '30', '好吃', '5.00', '12', '5', '思明区', '4.00');
INSERT INTO `meal_food` VALUES ('20', '2', '宝鸡面皮', 'baojimianpi.jpg', '40', '好吃', '14.00', '1', '5', '思明区', '4.20');
INSERT INTO `meal_food` VALUES ('21', '3', '扬州炒饭', 'yangzhouchaofan.jpg', '60', '好吃', '16.00', '2', '5', '思明区', '4.00');
INSERT INTO `meal_food` VALUES ('22', '4', '清蒸白鲫鱼', 'baijiyu.jpg', '20', '好吃', '35.00', '7', '5', '思明区', '4.00');
INSERT INTO `meal_food` VALUES ('23', '4', '酸菜鱼', 'suancaiyu.jpg', '20', '好吃', '30.00', '7', '5', '思明区', '4.00');
INSERT INTO `meal_food` VALUES ('24', '4', '香辣烤鱼', 'kaoyu.jpg', '20', '好吃', '45.00', '7', '5', '思明区', '5.00');
INSERT INTO `meal_food` VALUES ('25', '5', '凉皮', 'liangpi.jpg', '50', '好吃', '13.00', '1', '5', '思明区', '3.00');
INSERT INTO `meal_food` VALUES ('26', '5', '麻辣粉', 'malafen.jpg', '20', '好吃', '16.00', '1', '5', '思明区', '3.60');
INSERT INTO `meal_food` VALUES ('27', '5', '山东烧饼', 'shandongshaobing.jpg', '50', '好吃', '8.00', '12', '5', '思明区', '4.20');
INSERT INTO `meal_food` VALUES ('28', '6', '菲力牛排', 'feiliniupai.jpg', '50', '好吃', '45.00', '8', '5', '思明区', '5.00');
INSERT INTO `meal_food` VALUES ('29', '6', '西冷牛排', 'xilengniupai.jpg', '50', '好吃', '48.00', '8', '5', '思明区', '4.60');
INSERT INTO `meal_food` VALUES ('30', '6', 'T骨牛排', 'tguniupai.jpg', '50', '好吃', '46.00', '8', '5', '思明区', '3.80');
INSERT INTO `meal_food` VALUES ('31', '7', '自助烤肉', 'zizhukaorou.jpg', '100', '请到店里享用', '50.00', '9', '5', '思明区', '4.30');
INSERT INTO `meal_food` VALUES ('32', '8', '重庆麻辣烫', 'malatang.jpg', '100', '好吃', '18.00', '13', '5', '思明区', '4.10');
INSERT INTO `meal_food` VALUES ('33', '8', '炸串', 'zhachuan.jpg', '200', '好吃', '4.00', '9', '5', '思明区', '4.00');
INSERT INTO `meal_food` VALUES ('34', '8', '青岛啤酒', 'qingdaopijiu.jpg', '200', '好吃', '6.00', '6', '5', '思明区', '4.00');
INSERT INTO `meal_food` VALUES ('35', '9', '猪脚饭', 'zhujiaofan.jpg', '60', '好吃', '21.00', '2', '5', '思明区', '4.80');
INSERT INTO `meal_food` VALUES ('36', '9', '鱼香肉丝饭', 'yuxiangrousifan.jpg', '40', '好吃', '18.00', '2', '5', '思明区', '4.70');
INSERT INTO `meal_food` VALUES ('37', '9', '鸡腿饭', 'jituifan.jpg', '40', '好吃', '16.00', '2', '5', '思明区', '4.60');
INSERT INTO `meal_food` VALUES ('38', '9', '酱大骨饭', 'jiangdagufan.jpg', '40', '好吃', '19.00', '2', '5', '思明区', '3.90');
INSERT INTO `meal_food` VALUES ('39', '10', '沙茶面', 'shachamian.jpg', '50', '好吃', '15.00', '1', '5', '思明区', '4.20');
INSERT INTO `meal_food` VALUES ('40', '10', '海鲜卤面', 'haixianlumian.jpg', '60', '好吃', '18.00', '1', '5', '思明区', '4.10');
INSERT INTO `meal_food` VALUES ('41', '11', '过桥米线', 'guoqiaomixian.jpg', '100', '好吃', '16.00', '1', '5', '思明区', '4.20');
INSERT INTO `meal_food` VALUES ('42', '11', '砂锅米线', 'shaguomixian.jpg', '100', '好吃', '16.00', '1', '5', '思明区', '4.10');
INSERT INTO `meal_food` VALUES ('43', '11', '砂锅土豆粉', 'shaguotudoufen.jpg', '100', '好吃', '17.00', '1', '5', '思明区', '4.30');
INSERT INTO `meal_food` VALUES ('44', '11', '肥肠米线', 'feichangmixian.jpg', '100', '好吃', '19.00', '1', '5', '思明区', '4.40');
INSERT INTO `meal_food` VALUES ('45', '12', '绝味鸭脖', 'yabo.jpg', '200', '好吃', '15.00', '14', '5', '思明区', '4.50');
INSERT INTO `meal_food` VALUES ('46', '12', '鸭头', 'yatou.jpg', '200', '好吃', '12.00', '14', '5', '思明区', '4.40');
INSERT INTO `meal_food` VALUES ('47', '12', '鸭翅', 'yachi.jpg', '200', '好吃', '13.00', '14', '5', '思明区', '4.60');
INSERT INTO `meal_food` VALUES ('48', '12', '鸭掌', 'yazhang.jpg', '200', '好吃', '12.00', '14', '5', '思明区', '4.70');
INSERT INTO `meal_food` VALUES ('49', '13', '披萨', 'pisa.jpg', '100', '好吃', '25.00', '10', '5', '思明区', '4.50');
INSERT INTO `meal_food` VALUES ('50', '14', '鸭脖', 'yabo.jpg', '200', '好吃', '15.00', '14', '5', '思明区', '4.60');
INSERT INTO `meal_food` VALUES ('51', '14', '鸭头', 'yatou.jpg', '200', '好吃', '12.00', '14', '5', '思明区', '4.10');
INSERT INTO `meal_food` VALUES ('52', '14', '鸭翅', 'yachi.jpg', '200', '好吃', '13.00', '14', '5', '思明区', '4.30');
INSERT INTO `meal_food` VALUES ('53', '14', '鸭掌', 'yazhang.jpg', '200', '好吃', '12.00', '14', '5', '思明区', '4.20');
INSERT INTO `meal_food` VALUES ('54', '15', '牛肉汉堡', 'niurouhanbao.jpg', '100', '好吃', '16.00', '4', '5', '思明区', '4.10');
INSERT INTO `meal_food` VALUES ('55', '15', '炸鸡堡', 'zhajibao.jpg', '100', '好吃', '16.00', '4', '5', '思明区', '4.20');
INSERT INTO `meal_food` VALUES ('56', '15', '鳕鱼堡', 'xueyubao.jpg', '100', '好吃', '18.00', '4', '5', '思明区', '4.60');
INSERT INTO `meal_food` VALUES ('57', '16', '鸭血粉丝', 'yaxuefensi.jpg', '100', '好吃', '16.00', '1', '5', '思明区', '4.50');
INSERT INTO `meal_food` VALUES ('58', '16', '鸭肉粉丝', 'yaroufensi.jpg', '100', '好吃', '17.00', '1', '5', '思明区', '4.20');

-- ----------------------------
-- Table structure for `meal_ftype`
-- ----------------------------
DROP TABLE IF EXISTS `meal_ftype`;
CREATE TABLE `meal_ftype` (
  `ftype_id` int(11) NOT NULL AUTO_INCREMENT,
  `ftype_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ftype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal_ftype
-- ----------------------------
INSERT INTO `meal_ftype` VALUES ('1', '面');
INSERT INTO `meal_ftype` VALUES ('2', '饭');
INSERT INTO `meal_ftype` VALUES ('3', '粥');
INSERT INTO `meal_ftype` VALUES ('4', '汉堡');
INSERT INTO `meal_ftype` VALUES ('5', '炒菜');
INSERT INTO `meal_ftype` VALUES ('6', '饮料');
INSERT INTO `meal_ftype` VALUES ('7', '海鲜');
INSERT INTO `meal_ftype` VALUES ('8', '牛排');
INSERT INTO `meal_ftype` VALUES ('9', '烧烤');
INSERT INTO `meal_ftype` VALUES ('10', '糕点');
INSERT INTO `meal_ftype` VALUES ('11', '奶茶');
INSERT INTO `meal_ftype` VALUES ('12', '饼');
INSERT INTO `meal_ftype` VALUES ('13', '麻辣烫');
INSERT INTO `meal_ftype` VALUES ('14', '卤味');

-- ----------------------------
-- Table structure for `meal_order`
-- ----------------------------
DROP TABLE IF EXISTS `meal_order`;
CREATE TABLE `meal_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(255) DEFAULT NULL,
  `order_time` varchar(255) DEFAULT NULL,
  `order_user` int(11) DEFAULT NULL,
  `order_totalprice` double(11,2) DEFAULT NULL,
  `order_state` varchar(255) DEFAULT NULL,
  `order_rider` int(11) DEFAULT NULL,
  `order_receive` int(11) DEFAULT NULL,
  `order_comment` int(11) DEFAULT NULL,
  `order_store` int(11) DEFAULT NULL,
  `order_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal_order
-- ----------------------------
INSERT INTO `meal_order` VALUES ('41', '20201116160721', '2020-11-16 16:07:21', '3', '145.00', '待付款', null, '3', null, '5', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('42', '20201116160821', '2020-11-16 16:08:21', '3', '190.00', '待付款', null, '3', null, '2', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('43', '20201116160826', '2020-11-16 16:08:26', '3', '10.00', '待付款', null, '3', null, '4', '');
INSERT INTO `meal_order` VALUES ('44', '20201116161027', '2020-11-16 16:10:27', '2', '83.00', '已取消', null, '3', null, '6', '');
INSERT INTO `meal_order` VALUES ('45', '20201116161430', '2020-11-16 16:14:30', '2', '390.00', '待付款', null, '1', null, '9', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('46', '20201116160835', '2020-11-16 16:08:35', '2', '120.00', '待付款', null, '1', null, '11', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('47', '20201116162241', '2020-11-16 16:22:41', '3', '48.00', '待付款', null, '3', null, '10', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('48', '20201116163144', '2020-11-16 16:31:44', '2', '100.00', '已评价', null, '1', '31', '2', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('49', '20201116161446', '2020-11-16 16:14:46', '2', '48.00', '待评价', null, '1', '23', '1', 'heneh');
INSERT INTO `meal_order` VALUES ('50', '20201116161646', '2020-11-16 16:16:46', '2', '100.00', '待付款', null, '1', null, '8', 'heneh');
INSERT INTO `meal_order` VALUES ('51', '20201116162249', '2020-11-16 16:22:49', '2', '320.00', '已取消', null, '1', null, '1', '');
INSERT INTO `meal_order` VALUES ('52', '20201116162055', '2020-11-16 16:20:55', '2', '110.00', '待评价', null, '1', '25', '5', '');
INSERT INTO `meal_order` VALUES ('55', '20201116171301', '2020-11-16 17:13:01', '6', '88.00', '待评价', null, '1', '26', '1', '');
INSERT INTO `meal_order` VALUES ('57', '20201116170807', '2020-11-16 17:08:07', '6', '120.00', '待评价', null, '1', '28', '6', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('58', '20201116170012', '2020-11-16 17:00:12', '6', '88.00', '已评价', null, '1', '29', '1', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('60', '20201116174618', '2020-11-16 17:46:18', '5', '60.00', '待评价', null, '1', null, '2', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('61', '20201116172519', '2020-11-16 17:25:19', '5', '80.00', '待评价', null, '1', null, '8', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('62', '20201116173027', '2020-11-16 17:30:27', '6', '92.00', '待评价', null, '1', null, '12', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('63', '20201116173127', '2020-11-16 17:31:27', '12', '60.00', '待评价', null, '1', null, '13', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('64', '20201116170730', '2020-11-16 17:07:30', '12', '80.00', '待评价', null, '1', null, '14', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('65', '20201116170830', '2020-11-16 17:08:30', '6', '420.00', '待评价', null, '1', null, '1', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('66', '20201116171459', '2020-11-16 17:14:59', '6', '30.00', '已取消', null, '1', null, '15', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('67', '20201116171559', '2020-11-16 17:15:59', '8', '50.00', '待评价', null, '1', null, '2', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('68', '20201116180913', '2020-11-16 18:09:13', '7', '56.00', '待评价', null, '1', null, '3', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('70', '20201116183313', '2020-11-16 18:33:13', '8', '32.00', '待评价', null, '1', null, '4', 'heneh');
INSERT INTO `meal_order` VALUES ('72', '20201116182615', '2020-11-16 18:26:15', '20', '5.00', '待评价', null, '1', null, '1', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('74', '20201116183917', '2020-11-16 18:39:17', '5', '60.00', '待评价', null, '1', null, '5', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('76', '20201116181018', '2020-11-16 18:10:18', '15', '40.00', '待评价', null, '1', null, '2', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('77', '20201116181118', '2020-11-16 18:11:18', '16', '20.00', '待评价', null, '1', null, '3', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('78', '20201116183919', '2020-11-16 18:39:19', '5', '8.00', '待评价', null, '1', null, '6', '');
INSERT INTO `meal_order` VALUES ('80', '20201116180420', '2020-11-16 18:04:20', '0', '40.00', '待评价', null, '1', null, '2', '');
INSERT INTO `meal_order` VALUES ('82', '20201116182120', '2020-11-16 18:21:20', '6', '20.00', '待评价', null, '1', null, '8', '');
INSERT INTO `meal_order` VALUES ('84', '20201116183320', '2020-11-16 18:33:20', '9', '20.00', '待评价', null, '1', null, '3', '');
INSERT INTO `meal_order` VALUES ('85', '20201116183024', '2020-11-16 18:30:24', '9', '16.00', '待评价', null, '1', null, '9', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('87', '20201116185024', '2020-11-16 18:50:24', '8', '60.00', '待评价', null, '1', null, '7', '');
INSERT INTO `meal_order` VALUES ('89', '20201116180225', '2020-11-16 18:02:25', '5', '30.00', '已取消', null, '1', null, '3', '');
INSERT INTO `meal_order` VALUES ('90', '20201116184625', '2020-11-16 18:46:25', '19', '8.00', '已取消', null, '1', null, '5', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('92', '20201116185525', '2020-11-16 18:55:25', '2', '10.00', '已评价', null, '1', '44', '6', '');
INSERT INTO `meal_order` VALUES ('93', '20201116185532', '2020-11-16 18:55:32', '5', '64.00', '待评价', null, '1', null, '1', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('95', '20201116181233', '2020-11-16 18:12:33', '3', '10.00', '待评价', null, '1', null, '6', '');
INSERT INTO `meal_order` VALUES ('96', '20201117085131', '2020-11-17 08:51:31', '6', '72.00', '待评价', null, '1', null, '1', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('97', '20201117085633', '2020-11-17 08:56:32', '2', '100.00', '已评价', null, '1', '45', '8', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('98', '20201117081733', '2020-11-17 08:17:33', '5', '50.00', '待评价', null, '1', null, '3', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('99', '20201117095217', '2020-11-17 09:52:17', '12', '72.00', '待评价', null, '1', null, '5', '');
INSERT INTO `meal_order` VALUES ('100', '20201117094316', '2020-11-17 09:43:16', '11', '72.00', '待评价', null, '1', null, '1', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('106', '20201117092745', '2020-11-17 09:27:46', '10', '80.00', '待评价', null, '1', null, '11', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('107', '20201117092743', '2020-11-17 09:27:46', '2', '100.00', '已评价', null, '1', '46', '10', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('108', '20201117092746', '2020-11-17 09:27:46', '12', '50.00', '待评价', null, '1', null, '3', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('109', '20201117093757', '2020-11-17 09:37:58', '2', '132.00', '待评价', null, '1', null, '12', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('110', '20201117093758', '2020-11-17 09:37:58', '5', '100.00', '待评价', null, '1', null, '13', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('111', '20201117093759', '2020-11-17 09:37:58', '2', '50.00', '待评价', null, '1', null, '15', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('112', '20201117144900', '2020-11-17 14:49:00', '2', '555.00', '待评价', null, '1', null, '16', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('113', '20201117143518', '2020-11-17 14:35:18', '2', '54.00', '待评价', null, '1', null, '18', 'heneh');
INSERT INTO `meal_order` VALUES ('114', '20201117165825', '2020-11-17 16:58:25', '2', '48.00', '待付款', null, '3', null, '13', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('115', '2020111717193440', '2020-11-17 17:19:34', '2', '15.00', '待付款', null, '1', null, '1', '');
INSERT INTO `meal_order` VALUES ('116', '2020111717503394', '2020-11-17 17:50:33', '2', '210.00', '待付款', null, '1', null, '13', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('117', '2020111717003990', '2020-11-17 17:00:39', '2', '18.00', '待付款', null, '1', null, '1', '');
INSERT INTO `meal_order` VALUES ('118', '2020111717273753', '2020-11-17 17:27:37', '2', '20.00', '待付款', null, '9', null, '15', '哈哈哈哈');
INSERT INTO `meal_order` VALUES ('119', '2020111717154828', '2020-11-17 17:15:48', '2', '15.00', '待付款', null, '3', null, '1', '');
INSERT INTO `meal_order` VALUES ('120', '2020111717205034', '2020-11-17 17:20:50', '2', '15.00', '待付款', null, '1', null, '1', '');
INSERT INTO `meal_order` VALUES ('121', '2020111717465465', '2020-11-17 17:46:54', '2', '15.00', '待付款', null, '9', null, '1', '');
INSERT INTO `meal_order` VALUES ('122', '2020111718380076', '2020-11-17 18:38:00', '2', '15.00', '待付款', null, '3', null, '1', '');
INSERT INTO `meal_order` VALUES ('123', '2020111718450384', '2020-11-17 18:45:03', '2', '15.00', '待付款', null, '1', null, '1', '');
INSERT INTO `meal_order` VALUES ('124', '2020111718472267', '2020-11-17 18:47:22', '2', '30.00', '待付款', null, '1', null, '1', '');
INSERT INTO `meal_order` VALUES ('125', '2020111810502278', '2020-11-18 10:50:22', '2', '126.00', '待付款', null, '1', null, '1', '');
INSERT INTO `meal_order` VALUES ('126', '2020111810502236', '2020-11-18 10:50:22', '2', '6.00', '待付款', null, '1', null, '4', '');

-- ----------------------------
-- Table structure for `meal_orderrelation`
-- ----------------------------
DROP TABLE IF EXISTS `meal_orderrelation`;
CREATE TABLE `meal_orderrelation` (
  `orderRelation_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderRelation_orderid` int(11) DEFAULT NULL,
  `orderRelation_foodid` int(11) DEFAULT NULL,
  `orderRelation_count` int(11) DEFAULT NULL,
  `orderRelation_price` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`orderRelation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal_orderrelation
-- ----------------------------
INSERT INTO `meal_orderrelation` VALUES ('19', '21', '4', null, null);
INSERT INTO `meal_orderrelation` VALUES ('32', '41', '1', '2', '16.00');
INSERT INTO `meal_orderrelation` VALUES ('33', '41', '2', '3', '24.00');
INSERT INTO `meal_orderrelation` VALUES ('34', '41', '7', '3', '15.00');
INSERT INTO `meal_orderrelation` VALUES ('35', '41', '10', '3', '90.00');
INSERT INTO `meal_orderrelation` VALUES ('36', '42', '6', '2', '40.00');
INSERT INTO `meal_orderrelation` VALUES ('37', '42', '4', '5', '50.00');
INSERT INTO `meal_orderrelation` VALUES ('39', '43', '4', '1', '10.00');
INSERT INTO `meal_orderrelation` VALUES ('40', '44', '7', '1', '5.00');
INSERT INTO `meal_orderrelation` VALUES ('41', '44', '5', '1', '70.00');
INSERT INTO `meal_orderrelation` VALUES ('42', '44', '1', '1', '8.00');
INSERT INTO `meal_orderrelation` VALUES ('43', '45', '1', '5', '40.00');
INSERT INTO `meal_orderrelation` VALUES ('44', '45', '2', '5', '40.00');
INSERT INTO `meal_orderrelation` VALUES ('45', '45', '7', '6', '30.00');
INSERT INTO `meal_orderrelation` VALUES ('46', '45', '5', '4', '280.00');
INSERT INTO `meal_orderrelation` VALUES ('47', '46', '6', '6', '120.00');
INSERT INTO `meal_orderrelation` VALUES ('48', '47', '1', '6', '48.00');
INSERT INTO `meal_orderrelation` VALUES ('49', '48', '6', '5', '100.00');
INSERT INTO `meal_orderrelation` VALUES ('50', '49', '2', '6', '48.00');
INSERT INTO `meal_orderrelation` VALUES ('51', '50', '6', '5', '100.00');
INSERT INTO `meal_orderrelation` VALUES ('52', '51', '5', '4', '280.00');
INSERT INTO `meal_orderrelation` VALUES ('53', '51', '1', '5', '40.00');
INSERT INTO `meal_orderrelation` VALUES ('54', '52', '4', '11', '110.00');
INSERT INTO `meal_orderrelation` VALUES ('55', '54', '4', null, null);
INSERT INTO `meal_orderrelation` VALUES ('56', '55', '1', '6', '48.00');
INSERT INTO `meal_orderrelation` VALUES ('57', '55', '2', '5', '40.00');
INSERT INTO `meal_orderrelation` VALUES ('58', '57', '6', '6', '120.00');
INSERT INTO `meal_orderrelation` VALUES ('59', '58', '1', '5', '40.00');
INSERT INTO `meal_orderrelation` VALUES ('60', '58', '2', '6', '48.00');
INSERT INTO `meal_orderrelation` VALUES ('61', '60', '6', '3', '60.00');
INSERT INTO `meal_orderrelation` VALUES ('62', '61', '1', '5', '40.00');
INSERT INTO `meal_orderrelation` VALUES ('63', '61', '2', '5', '40.00');
INSERT INTO `meal_orderrelation` VALUES ('64', '62', '1', '1', '8.00');
INSERT INTO `meal_orderrelation` VALUES ('65', '62', '8', '4', '60.00');
INSERT INTO `meal_orderrelation` VALUES ('66', '62', '2', '3', '24.00');
INSERT INTO `meal_orderrelation` VALUES ('67', '63', '6', '3', '60.00');
INSERT INTO `meal_orderrelation` VALUES ('68', '64', '4', '8', '80.00');
INSERT INTO `meal_orderrelation` VALUES ('69', '65', '5', '6', '420.00');
INSERT INTO `meal_orderrelation` VALUES ('70', '66', '7', '6', '30.00');
INSERT INTO `meal_orderrelation` VALUES ('71', '67', '4', '5', '50.00');
INSERT INTO `meal_orderrelation` VALUES ('72', '68', '2', '7', '56.00');
INSERT INTO `meal_orderrelation` VALUES ('73', '70', '1', '4', '32.00');
INSERT INTO `meal_orderrelation` VALUES ('74', '72', '7', '1', '5.00');
INSERT INTO `meal_orderrelation` VALUES ('75', '74', '14', '3', '60.00');
INSERT INTO `meal_orderrelation` VALUES ('76', '76', '6', '2', '40.00');
INSERT INTO `meal_orderrelation` VALUES ('77', '77', '13', '2', '20.00');
INSERT INTO `meal_orderrelation` VALUES ('78', '78', '1', '1', '8.00');
INSERT INTO `meal_orderrelation` VALUES ('79', '80', '6', '2', '40.00');
INSERT INTO `meal_orderrelation` VALUES ('80', '82', '4', '2', '20.00');
INSERT INTO `meal_orderrelation` VALUES ('81', '84', '13', '2', '20.00');
INSERT INTO `meal_orderrelation` VALUES ('82', '85', '1', '2', '16.00');
INSERT INTO `meal_orderrelation` VALUES ('83', '87', '6', '3', '60.00');
INSERT INTO `meal_orderrelation` VALUES ('84', '89', '13', '3', '30.00');
INSERT INTO `meal_orderrelation` VALUES ('85', '90', '1', '1', '8.00');
INSERT INTO `meal_orderrelation` VALUES ('86', '92', '4', '1', '10.00');
INSERT INTO `meal_orderrelation` VALUES ('87', '93', '1', '4', '32.00');
INSERT INTO `meal_orderrelation` VALUES ('88', '93', '2', '4', '32.00');
INSERT INTO `meal_orderrelation` VALUES ('89', '95', '13', '1', '10.00');
INSERT INTO `meal_orderrelation` VALUES ('90', '96', '7', '8', '40.00');
INSERT INTO `meal_orderrelation` VALUES ('91', '96', '1', '4', '32.00');
INSERT INTO `meal_orderrelation` VALUES ('92', '97', '6', '5', '100.00');
INSERT INTO `meal_orderrelation` VALUES ('93', '98', '13', '5', '50.00');
INSERT INTO `meal_orderrelation` VALUES ('94', '99', '2', '9', '72.00');
INSERT INTO `meal_orderrelation` VALUES ('95', '100', '1', '5', '40.00');
INSERT INTO `meal_orderrelation` VALUES ('96', '100', '2', '4', '32.00');
INSERT INTO `meal_orderrelation` VALUES ('97', '100', '6', '5', '100.00');
INSERT INTO `meal_orderrelation` VALUES ('98', '100', '13', '5', '50.00');
INSERT INTO `meal_orderrelation` VALUES ('108', '106', '1', '4', '32.00');
INSERT INTO `meal_orderrelation` VALUES ('109', '106', '2', '6', '48.00');
INSERT INTO `meal_orderrelation` VALUES ('110', '107', '6', '5', '100.00');
INSERT INTO `meal_orderrelation` VALUES ('111', '108', '13', '5', '50.00');
INSERT INTO `meal_orderrelation` VALUES ('112', '109', '1', '8', '64.00');
INSERT INTO `meal_orderrelation` VALUES ('113', '109', '2', '6', '48.00');
INSERT INTO `meal_orderrelation` VALUES ('114', '109', '7', '4', '20.00');
INSERT INTO `meal_orderrelation` VALUES ('115', '110', '6', '5', '100.00');
INSERT INTO `meal_orderrelation` VALUES ('116', '111', '13', '5', '50.00');
INSERT INTO `meal_orderrelation` VALUES ('117', '112', '1', '1', '15.00');
INSERT INTO `meal_orderrelation` VALUES ('118', '112', '2', '30', '540.00');
INSERT INTO `meal_orderrelation` VALUES ('119', '113', '2', '3', '54.00');
INSERT INTO `meal_orderrelation` VALUES ('120', '114', '6', '4', '48.00');
INSERT INTO `meal_orderrelation` VALUES ('121', '115', '1', '1', '15.00');
INSERT INTO `meal_orderrelation` VALUES ('122', '116', '5', '3', '210.00');
INSERT INTO `meal_orderrelation` VALUES ('123', '117', '2', '1', '18.00');
INSERT INTO `meal_orderrelation` VALUES ('124', '118', '4', '2', '20.00');
INSERT INTO `meal_orderrelation` VALUES ('125', '119', '7', '1', '15.00');
INSERT INTO `meal_orderrelation` VALUES ('126', '120', '1', '1', '15.00');
INSERT INTO `meal_orderrelation` VALUES ('127', '121', '1', '1', '15.00');
INSERT INTO `meal_orderrelation` VALUES ('128', '122', '1', '1', '15.00');
INSERT INTO `meal_orderrelation` VALUES ('129', '123', '1', '1', '15.00');
INSERT INTO `meal_orderrelation` VALUES ('130', '124', '1', '2', '30.00');
INSERT INTO `meal_orderrelation` VALUES ('131', '125', '2', '7', '126.00');
INSERT INTO `meal_orderrelation` VALUES ('132', '126', '10', '1', '6.00');

-- ----------------------------
-- Table structure for `meal_rcomment`
-- ----------------------------
DROP TABLE IF EXISTS `meal_rcomment`;
CREATE TABLE `meal_rcomment` (
  `rcomment_id` int(11) NOT NULL AUTO_INCREMENT,
  `rcomment_contnet` varchar(255) DEFAULT NULL,
  `rcomment_rider` int(11) DEFAULT NULL,
  `rcomment_user` int(11) DEFAULT NULL,
  `rcomment_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rcomment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal_rcomment
-- ----------------------------

-- ----------------------------
-- Table structure for `meal_receive`
-- ----------------------------
DROP TABLE IF EXISTS `meal_receive`;
CREATE TABLE `meal_receive` (
  `receive_id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_receivename` varchar(11) DEFAULT NULL,
  `receive_area` varchar(255) DEFAULT NULL,
  `receive_addr` varchar(255) DEFAULT NULL,
  `receive_tel` varchar(11) DEFAULT NULL,
  `receive_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`receive_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal_receive
-- ----------------------------
INSERT INTO `meal_receive` VALUES ('1', '王先生', '上海 上海市 普陀区', '曹杨路1040弄中友大厦一号楼19楼', '13569888523', '2');
INSERT INTO `meal_receive` VALUES ('3', '李小姐', '湖北省襄阳市保康县', '曹杨路1040弄中友大厦一号楼19楼', '13569888523', '2');
INSERT INTO `meal_receive` VALUES ('4', '黄先生', '上海 上海市 普陀区', '曹杨路1040弄中友大厦一号楼19楼', '13569888523', '4');
INSERT INTO `meal_receive` VALUES ('5', '卢小姐', '上海 上海市 普陀区', '曹杨路1040弄中友大厦一号楼19楼', '13569888523', '5');
INSERT INTO `meal_receive` VALUES ('6', '姜小姐', '上海 上海市 普陀区', '曹杨路1040弄中友大厦一号楼19楼', '13569888523', '6');
INSERT INTO `meal_receive` VALUES ('7', '付先生', '上海 上海市 普陀区', '曹杨路1040弄中友大厦一号楼19楼', '13569888523', '7');
INSERT INTO `meal_receive` VALUES ('8', '李先生', '上海 上海市 普陀区', '曹杨路1040弄中友大厦一号楼19楼', '13569888523', '8');
INSERT INTO `meal_receive` VALUES ('9', '黄小姐', '福建省厦门市思明区', '软件园二期', '18230273169', '2');

-- ----------------------------
-- Table structure for `meal_rider`
-- ----------------------------
DROP TABLE IF EXISTS `meal_rider`;
CREATE TABLE `meal_rider` (
  `rider_id` int(11) NOT NULL AUTO_INCREMENT,
  `rider_name` varchar(255) DEFAULT NULL,
  `rider_pwd` varchar(255) DEFAULT NULL,
  `rider_email` varchar(255) DEFAULT NULL,
  `rider_tel` varchar(255) DEFAULT NULL,
  `rider_addr` varchar(255) DEFAULT NULL,
  `rider_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal_rider
-- ----------------------------

-- ----------------------------
-- Table structure for `meal_store`
-- ----------------------------
DROP TABLE IF EXISTS `meal_store`;
CREATE TABLE `meal_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_account` varchar(255) DEFAULT NULL,
  `store_pwd` varchar(255) DEFAULT NULL,
  `store_tel` varchar(255) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `store_info` varchar(255) DEFAULT NULL,
  `store_image` varchar(255) DEFAULT NULL,
  `store_addr` varchar(255) DEFAULT NULL,
  `store_type` int(11) DEFAULT NULL,
  `store_star` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal_store
-- ----------------------------
INSERT INTO `meal_store` VALUES ('1', 'waipojia', '123', '12355555555', '含山路外婆家', '仅售19元！价值58元的双人餐', 'wpjnewlogo.jpg', '厦门市湖里区坂上社133号', '1', '3.50');
INSERT INTO `meal_store` VALUES ('2', 'liangpi', '123', '12355555555', '魏家凉皮', '仅售19元！价值58元的双人餐', 'weijia.jpg', '厦门市县后坂上社23号', '4', '3.80');
INSERT INTO `meal_store` VALUES ('3', 'laolijia', '123', '12355555555', '老李家', '仅售19元！价值58元的双人餐', 'laolijia.jpg', '福建省厦门市湖里区安兜社272附近', '1', '4.70');
INSERT INTO `meal_store` VALUES ('4', 'laowangjia', '123', '12355555555', '海底捞火锅', '仅售19元！价值58元的双人餐', 'haidilao.jpg', '厦门市湖里区嘉禾路468号SM商业广场1期5层', '2', '4.90');
INSERT INTO `meal_store` VALUES ('5', 'laopojia', '123', '12355555555', '龙福记', '仅售19元！价值58元的双人餐', 'longfuji.jpg', '厦门市思明区鹭江道52号海滨大厦24层', '1', '4.80');
INSERT INTO `meal_store` VALUES ('6', 'waipojia', '123', '12355555555', '豪享来', '仅售19元！价值58元的双人餐', 'haoxianglai.jpg', '福建省厦门市思明区仙岳路463-467号聚祥花园1楼', '5', '3.60');
INSERT INTO `meal_store` VALUES ('7', 'nijia', '123', '12355555555', '牛太郎', '仅售19元！价值58元的双人餐', 'niutailang.jpg', '厦门市思明区思明南路118号老虎城欢乐购物中心F3', '3', '4.60');
INSERT INTO `meal_store` VALUES ('8', 'kiter', '123', '12355555555', ' 正宗重庆麻辣烫', '仅售19元！价值58元的双人餐', 'chongqingmalatang.jpg', '厦门市新华路122号之3号店', '6', '5.00');
INSERT INTO `meal_store` VALUES ('9', 'kiter', '123', '12355555555', ' 招牌猪脚饭', '仅售19元！价值58元的双人餐', 'zhujiaofandian.jpg', '厦门市公园南路67号商铺', '1', '4.90');
INSERT INTO `meal_store` VALUES ('10', 'kiter', '123', '12355555555', '阿芳卤面', '仅售19元！价值58元的双人餐', 'lumian.jpg', '厦门市思明区湖滨西路10-108', '4', '3.90');
INSERT INTO `meal_store` VALUES ('11', 'kiter', '123', '12355555555', ' 云南过桥米线', '仅售19元！价值58元的双人餐', 'mixian.jpg', '厦门市吕岭路3号附近', '4', '4.50');
INSERT INTO `meal_store` VALUES ('12', 'kiter', '123', '12355555555', ' 绝味鸭脖', '仅售19元！价值58元的双人餐', 'yabodian.jpg', '厦门市思明区镇邦路57号', '7', '4.90');
INSERT INTO `meal_store` VALUES ('13', 'kiter', '123', '12355456652', ' 必胜客', '仅售19元！价值58元的双人餐', 'bishengke.jpg', '厦门市思明区鹭江道52号海滨大厦24层', '8', '4.40');
INSERT INTO `meal_store` VALUES ('14', 'kiter', '123', '45612315113', ' 周黑鸭', '仅售19元！价值58元的双人餐', 'zhouheiya.jpg', '厦门市湖里区嘉禾路468号SM城市广场B1', '7', '4.70');
INSERT INTO `meal_store` VALUES ('15', 'hualaisi', '123', '15260049121', '华莱士', '仅售19元！价值58元的双人餐', 'hualaishi.jpg', '福建省厦门市思明区大同路284-286号附近', '8', '3.90');
INSERT INTO `meal_store` VALUES ('16', 'zimu', '123', '15260049121', '子母粉丝', '仅售19元！价值58元的双人餐', 'fensi.jpg', '福建省厦门市思明区思明南路293号', '4', '4.60');
INSERT INTO `meal_store` VALUES ('18', 'weiqian', '123', '15260049121', '味千拉面', '仅售19元！价值58元的双人餐', 'weiqianlamian.jpg', '厦门市思明区莲前东路288号瑞景商业广场F2', '4', '4.10');

-- ----------------------------
-- Table structure for `meal_stype`
-- ----------------------------
DROP TABLE IF EXISTS `meal_stype`;
CREATE TABLE `meal_stype` (
  `stype_id` int(11) NOT NULL AUTO_INCREMENT,
  `stype_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal_stype
-- ----------------------------
INSERT INTO `meal_stype` VALUES ('1', '家常菜');
INSERT INTO `meal_stype` VALUES ('2', '火锅');
INSERT INTO `meal_stype` VALUES ('3', '烧烤');
INSERT INTO `meal_stype` VALUES ('4', '面馆');
INSERT INTO `meal_stype` VALUES ('5', '牛排');
INSERT INTO `meal_stype` VALUES ('6', '麻辣烫');
INSERT INTO `meal_stype` VALUES ('7', '小吃');
INSERT INTO `meal_stype` VALUES ('8', '汉堡');

-- ----------------------------
-- Table structure for `meal_user`
-- ----------------------------
DROP TABLE IF EXISTS `meal_user`;
CREATE TABLE `meal_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_pwd` varchar(255) DEFAULT NULL,
  `user_tel` varchar(255) DEFAULT NULL,
  `user_sex` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_image` text,
  `user_addr` varchar(255) DEFAULT NULL,
  `user_score` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal_user
-- ----------------------------
INSERT INTO `meal_user` VALUES ('2', '短腿的小鲁班', '123456', '18149637720', '男', '2@qq.com', '1605516708078 cartoon.jpg', null, '5');
INSERT INTO `meal_user` VALUES ('3', '张三是个臭傻逼', 'kiter123', '13075838259', '男', '20590834@qq.com', '1605516708078 cartoon.jpg', null, '0');
INSERT INTO `meal_user` VALUES ('4', '鲁班哈哈123', '666666', '18149637711', '女', '4@qq.com', '1605516708078 cartoon.jpg', null, '0');
INSERT INTO `meal_user` VALUES ('5', '李四爱喝汽水', 'gggggg', '18229637720', '男', 'gfhnb@qq.com', '1605516708078 cartoon.jpg', null, '0');
INSERT INTO `meal_user` VALUES ('6', 'aaaaaa', '123456', '18166637720', '男', '6@qq.com', '1605516708078 cartoon.jpg', null, '5');
INSERT INTO `meal_user` VALUES ('7', '后羿爱射大雕', '123456', '13156789999', '男', '5555555@qq.com', '1605516708078 cartoon.jpg', null, '5');
INSERT INTO `meal_user` VALUES ('8', 'cccccc', 'hhhhhh', '18999637720', '男', '8@qq.com', '1605516708078 cartoon.jpg', null, '5');
INSERT INTO `meal_user` VALUES ('9', '小青qqqq', '444444', '15260049121', '男', '45fsd4454@qq.com', '1605516708078 cartoon.jpg', null, '5');
INSERT INTO `meal_user` VALUES ('10', '小青aaaa', '111111', '13564512311', '男', '7895454@qq.com', '1605516708078 cartoon.jpg', null, '10');
INSERT INTO `meal_user` VALUES ('11', 'aaabbb', '111111', '18564512311', '男', '7896454@qq.com', '1605516708078 cartoon.jpg', null, '10');
INSERT INTO `meal_user` VALUES ('12', '李四是个臭傻逼', '111111', '17654674841', '男', '7899654@qq.com', '1605516708078 cartoon.jpg', null, '10');
INSERT INTO `meal_user` VALUES ('13', '王五是个臭傻逼', '1111111', '14564512311', '男', '784454@qq.com', '1605516708078 cartoon.jpg', null, '10');
INSERT INTO `meal_user` VALUES ('14', '赵六是个臭傻逼', '000000', '18654674841', '男', '20590834@qq.com', '1605516708078 cartoon.jpg', null, '5');
INSERT INTO `meal_user` VALUES ('15', '田七是个臭傻逼', '000000', '13345644444', '男', '20591834@qq.com', '1605516708078 cartoon.jpg', null, '10');
INSERT INTO `meal_user` VALUES ('16', '黑旋风爷爷在此', '000000', '14345644456', '男', '205904@qq.com', '1605516708078 cartoon.jpg', null, '15');
INSERT INTO `meal_user` VALUES ('17', 'lelele', '123456', '19114543111', '男', '45fsd444@qq.com', '1605516708078 cartoon.jpg', null, '15');
INSERT INTO `meal_user` VALUES ('18', '小青真爱臭美', '111111', '15654674841', '女', '45fsd44@qq.com', '1605516708078 cartoon.jpg', null, '15');
INSERT INTO `meal_user` VALUES ('19', '幺儿你还好吗', '111111', '19123456344', '女', '19@qq.com', '1605516708078 cartoon.jpg', null, '0');
INSERT INTO `meal_user` VALUES ('20', '哈哈哈哈哈哈', '000000', '18243834539', '男', '20@qq.com', '1605516708078 cartoon.jpg', null, '0');
INSERT INTO `meal_user` VALUES ('21', '青天白日找霹雳', '111111', '13115311861', '男', '20590834@qq.com', '1605516708078 cartoon.jpg', null, '0');
INSERT INTO `meal_user` VALUES ('22', '天天天天天天', '123456', '18263451442', '男', '22@qq.com', '1605516708078 cartoon.jpg', null, '0');
INSERT INTO `meal_user` VALUES ('23', '少时诵诗书所', '122222', '18245378689', '女', '23@qq.com', '1605516708078 cartoon.jpg', null, '0');
INSERT INTO `meal_user` VALUES ('24', '三生三世山水林田湖', '123456', '13578296378', '女', '536728@qq.com', '1605516708078 cartoon.jpg', null, '0');
INSERT INTO `meal_user` VALUES ('25', '理科生见覅偶积分', '111111', '13317147911', '男', '20590834@qq.com', '1605516708078 cartoon.jpg', null, '0');
INSERT INTO `meal_user` VALUES ('26', '啦啦啦啦啦啦', '111111', '15345644444', '男', 'terd4454@qq.com', '1605516708078 cartoon.jpg', null, '0');
