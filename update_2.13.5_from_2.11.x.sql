CREATE TABLE IF NOT EXISTS `dtb_plugin_hookpoint` (
    `plugin_hookpoint_id` INT NOT NULL PRIMARY KEY,
    `plugin_id` INT NOT NULL,
    `hook_point` TEXT NOT NULL,
    `callback` TEXT,
    `use_flg` SMALLINT NOT NULL DEFAULT 1,
    `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_date` TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS `dtb_api_config` (
    `api_config_id` INT NOT NULL PRIMARY KEY,
    `operation_name` TEXT NOT NULL,
    `operation_description` TEXT,
    `auth_types` TEXT NOT NULL,
    `enable` SMALLINT NOT NULL DEFAULT 0,
    `is_log` SMALLINT NOT NULL DEFAULT 0,
    `sub_data` TEXT,
    `del_flg` SMALLINT NOT NULL DEFAULT 0,
    `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_date` TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS `dtb_api_account` (
    `api_account_id` INT NOT NULL PRIMARY KEY,
    `api_access_key` TEXT NOT NULL,
    `api_secret_key` TEXT NOT NULL,
    `enable` SMALLINT NOT NULL DEFAULT 0,
    `del_flg` SMALLINT NOT NULL DEFAULT 0,
    `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_date` TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS `dtb_tax_rule` (
    `tax_rule_id` INT NOT NULL PRIMARY KEY,
    `country_id` INT NOT NULL DEFAULT 0,
    `pref_id` INT NOT NULL DEFAULT 0,
    `product_id` INT NOT NULL DEFAULT 0,
    `product_class_id` INT NOT NULL DEFAULT 0,
    `calc_rule` SMALLINT NOT NULL DEFAULT 1,
    `tax_rate` NUMERIC NOT NULL DEFAULT 8,
    `tax_adjust` NUMERIC NOT NULL DEFAULT 0,
    `apply_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `member_id` INT NOT NULL,
    `del_flg` SMALLINT NOT NULL DEFAULT 0,
    `create_date` TIMESTAMP NOT NULL,
    `update_date` TIMESTAMP NOT NULL
);


INSERT INTO dtb_tax_rule (tax_rule_id, apply_date, member_id, del_flg, create_date, update_date) VALUES (1, CURRENT_TIMESTAMP, 1, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


CREATE TABLE IF NOT EXISTS `dtb_api_account_api_account_id_seq` (`sequence` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY);


CREATE TABLE IF NOT EXISTS `dtb_api_config_api_config_id_seq` (`sequence` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY);


CREATE TABLE IF NOT EXISTS `dtb_plugin_hookpoint_plugin_hookpoint_id_seq` (`sequence` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY);


CREATE TABLE IF NOT EXISTS `dtb_tax_rule_tax_rule_id_seq` (`sequence` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY);


CREATE TABLE IF NOT EXISTS `mtb_customer_order_status` (
    `id` SMALLINT PRIMARY KEY,
    `name` TEXT,
    `rank` SMALLINT NOT NULL DEFAULT 0
);


INSERT INTO mtb_customer_order_status (id, name, rank) VALUES (7, '注文未完了', 0);
INSERT INTO mtb_customer_order_status (id, name, rank) VALUES (1, '注文受付', 1);
INSERT INTO mtb_customer_order_status (id, name, rank) VALUES (2, '入金待ち', 2);
INSERT INTO mtb_customer_order_status (id, name, rank) VALUES (6, '注文受付', 3);
INSERT INTO mtb_customer_order_status (id, name, rank) VALUES (3, 'キャンセル', 4);
INSERT INTO mtb_customer_order_status (id, name, rank) VALUES (4, '注文受付', 5);
INSERT INTO mtb_customer_order_status (id, name, rank) VALUES (5, '発送済み', 6);


CREATE TABLE IF NOT EXISTS `mtb_country` (
    `id` INT PRIMARY KEY,
    `name` TEXT,
    `rank` INT NOT NULL
);


INSERT INTO mtb_country (id, name, rank) VALUES (352,'アイスランド',1);
INSERT INTO mtb_country (id, name, rank) VALUES (372,'アイルランド',2);
INSERT INTO mtb_country (id, name, rank) VALUES (31,'アゼルバイジャン',3);
INSERT INTO mtb_country (id, name, rank) VALUES (4,'アフガニスタン',4);
INSERT INTO mtb_country (id, name, rank) VALUES (840,'アメリカ合衆国',5);
INSERT INTO mtb_country (id, name, rank) VALUES (850,'アメリカ領ヴァージン諸島',6);
INSERT INTO mtb_country (id, name, rank) VALUES (16,'アメリカ領サモア',7);
INSERT INTO mtb_country (id, name, rank) VALUES (784,'アラブ首長国連邦',8);
INSERT INTO mtb_country (id, name, rank) VALUES (12,'アルジェリア',9);
INSERT INTO mtb_country (id, name, rank) VALUES (32,'アルゼンチン',10);
INSERT INTO mtb_country (id, name, rank) VALUES (533,'アルバ',11);
INSERT INTO mtb_country (id, name, rank) VALUES (8,'アルバニア',12);
INSERT INTO mtb_country (id, name, rank) VALUES (51,'アルメニア',13);
INSERT INTO mtb_country (id, name, rank) VALUES (660,'アンギラ',14);
INSERT INTO mtb_country (id, name, rank) VALUES (24,'アンゴラ',15);
INSERT INTO mtb_country (id, name, rank) VALUES (28,'アンティグア・バーブーダ',16);
INSERT INTO mtb_country (id, name, rank) VALUES (20,'アンドラ',17);
INSERT INTO mtb_country (id, name, rank) VALUES (887,'イエメン',18);
INSERT INTO mtb_country (id, name, rank) VALUES (826,'イギリス',19);
INSERT INTO mtb_country (id, name, rank) VALUES (86,'イギリス領インド洋地域',20);
INSERT INTO mtb_country (id, name, rank) VALUES (92,'イギリス領ヴァージン諸島',21);
INSERT INTO mtb_country (id, name, rank) VALUES (376,'イスラエル',22);
INSERT INTO mtb_country (id, name, rank) VALUES (380,'イタリア',23);
INSERT INTO mtb_country (id, name, rank) VALUES (368,'イラク',24);
INSERT INTO mtb_country (id, name, rank) VALUES (364,'イラン|イラン・イスラム共和国',25);
INSERT INTO mtb_country (id, name, rank) VALUES (356,'インド',26);
INSERT INTO mtb_country (id, name, rank) VALUES (360,'インドネシア',27);
INSERT INTO mtb_country (id, name, rank) VALUES (876,'ウォリス・フツナ',28);
INSERT INTO mtb_country (id, name, rank) VALUES (800,'ウガンダ',29);
INSERT INTO mtb_country (id, name, rank) VALUES (804,'ウクライナ',30);
INSERT INTO mtb_country (id, name, rank) VALUES (860,'ウズベキスタン',31);
INSERT INTO mtb_country (id, name, rank) VALUES (858,'ウルグアイ',32);
INSERT INTO mtb_country (id, name, rank) VALUES (218,'エクアドル',33);
INSERT INTO mtb_country (id, name, rank) VALUES (818,'エジプト',34);
INSERT INTO mtb_country (id, name, rank) VALUES (233,'エストニア',35);
INSERT INTO mtb_country (id, name, rank) VALUES (231,'エチオピア',36);
INSERT INTO mtb_country (id, name, rank) VALUES (232,'エリトリア',37);
INSERT INTO mtb_country (id, name, rank) VALUES (222,'エルサルバドル',38);
INSERT INTO mtb_country (id, name, rank) VALUES (36,'オーストラリア',39);
INSERT INTO mtb_country (id, name, rank) VALUES (40,'オーストリア',40);
INSERT INTO mtb_country (id, name, rank) VALUES (248,'オーランド諸島',41);
INSERT INTO mtb_country (id, name, rank) VALUES (512,'オマーン',42);
INSERT INTO mtb_country (id, name, rank) VALUES (528,'オランダ',43);
INSERT INTO mtb_country (id, name, rank) VALUES (288,'ガーナ',44);
INSERT INTO mtb_country (id, name, rank) VALUES (132,'カーボベルデ',45);
INSERT INTO mtb_country (id, name, rank) VALUES (831,'ガーンジー',46);
INSERT INTO mtb_country (id, name, rank) VALUES (328,'ガイアナ',47);
INSERT INTO mtb_country (id, name, rank) VALUES (398,'カザフスタン',48);
INSERT INTO mtb_country (id, name, rank) VALUES (634,'カタール',49);
INSERT INTO mtb_country (id, name, rank) VALUES (581,'合衆国領有小離島',50);
INSERT INTO mtb_country (id, name, rank) VALUES (124,'カナダ',51);
INSERT INTO mtb_country (id, name, rank) VALUES (266,'ガボン',52);
INSERT INTO mtb_country (id, name, rank) VALUES (120,'カメルーン',53);
INSERT INTO mtb_country (id, name, rank) VALUES (270,'ガンビア',54);
INSERT INTO mtb_country (id, name, rank) VALUES (116,'カンボジア',55);
INSERT INTO mtb_country (id, name, rank) VALUES (580,'北マリアナ諸島',56);
INSERT INTO mtb_country (id, name, rank) VALUES (324,'ギニア',57);
INSERT INTO mtb_country (id, name, rank) VALUES (624,'ギニアビサウ',58);
INSERT INTO mtb_country (id, name, rank) VALUES (196,'キプロス',59);
INSERT INTO mtb_country (id, name, rank) VALUES (192,'キューバ',60);
INSERT INTO mtb_country (id, name, rank) VALUES (531,'キュラソー島|キュラソー',61);
INSERT INTO mtb_country (id, name, rank) VALUES (300,'ギリシャ',62);
INSERT INTO mtb_country (id, name, rank) VALUES (296,'キリバス',63);
INSERT INTO mtb_country (id, name, rank) VALUES (417,'キルギス',64);
INSERT INTO mtb_country (id, name, rank) VALUES (320,'グアテマラ',65);
INSERT INTO mtb_country (id, name, rank) VALUES (312,'グアドループ',66);
INSERT INTO mtb_country (id, name, rank) VALUES (316,'グアム',67);
INSERT INTO mtb_country (id, name, rank) VALUES (414,'クウェート',68);
INSERT INTO mtb_country (id, name, rank) VALUES (184,'クック諸島',69);
INSERT INTO mtb_country (id, name, rank) VALUES (304,'グリーンランド',70);
INSERT INTO mtb_country (id, name, rank) VALUES (162,'クリスマス島 (オーストラリア)|クリスマス島',71);
INSERT INTO mtb_country (id, name, rank) VALUES (268,'グルジア',72);
INSERT INTO mtb_country (id, name, rank) VALUES (308,'グレナダ',73);
INSERT INTO mtb_country (id, name, rank) VALUES (191,'クロアチア',74);
INSERT INTO mtb_country (id, name, rank) VALUES (136,'ケイマン諸島',75);
INSERT INTO mtb_country (id, name, rank) VALUES (404,'ケニア',76);
INSERT INTO mtb_country (id, name, rank) VALUES (384,'コートジボワール',77);
INSERT INTO mtb_country (id, name, rank) VALUES (166,'ココス諸島|ココス（キーリング）諸島',78);
INSERT INTO mtb_country (id, name, rank) VALUES (188,'コスタリカ',79);
INSERT INTO mtb_country (id, name, rank) VALUES (174,'コモロ',80);
INSERT INTO mtb_country (id, name, rank) VALUES (170,'コロンビア',81);
INSERT INTO mtb_country (id, name, rank) VALUES (178,'コンゴ共和国',82);
INSERT INTO mtb_country (id, name, rank) VALUES (180,'コンゴ民主共和国',83);
INSERT INTO mtb_country (id, name, rank) VALUES (682,'サウジアラビア',84);
INSERT INTO mtb_country (id, name, rank) VALUES (239,'サウスジョージア・サウスサンドウィッチ諸島',85);
INSERT INTO mtb_country (id, name, rank) VALUES (882,'サモア',86);
INSERT INTO mtb_country (id, name, rank) VALUES (678,'サントメ・プリンシペ',87);
INSERT INTO mtb_country (id, name, rank) VALUES (652,'サン・バルテルミー島|サン・バルテルミー',88);
INSERT INTO mtb_country (id, name, rank) VALUES (894,'ザンビア',89);
INSERT INTO mtb_country (id, name, rank) VALUES (666,'サンピエール島・ミクロン島',90);
INSERT INTO mtb_country (id, name, rank) VALUES (674,'サンマリノ',91);
INSERT INTO mtb_country (id, name, rank) VALUES (663,'サン・マルタン (西インド諸島)|サン・マルタン（フランス領）',92);
INSERT INTO mtb_country (id, name, rank) VALUES (694,'シエラレオネ',93);
INSERT INTO mtb_country (id, name, rank) VALUES (262,'ジブチ',94);
INSERT INTO mtb_country (id, name, rank) VALUES (292,'ジブラルタル',95);
INSERT INTO mtb_country (id, name, rank) VALUES (832,'ジャージー',96);
INSERT INTO mtb_country (id, name, rank) VALUES (388,'ジャマイカ',97);
INSERT INTO mtb_country (id, name, rank) VALUES (760,'シリア|シリア・アラブ共和国',98);
INSERT INTO mtb_country (id, name, rank) VALUES (702,'シンガポール',99);
INSERT INTO mtb_country (id, name, rank) VALUES (534,'シント・マールテン|シント・マールテン（オランダ領）',100);
INSERT INTO mtb_country (id, name, rank) VALUES (716,'ジンバブエ',101);
INSERT INTO mtb_country (id, name, rank) VALUES (756,'スイス',102);
INSERT INTO mtb_country (id, name, rank) VALUES (752,'スウェーデン',103);
INSERT INTO mtb_country (id, name, rank) VALUES (729,'スーダン',104);
INSERT INTO mtb_country (id, name, rank) VALUES (744,'スヴァールバル諸島およびヤンマイエン島',105);
INSERT INTO mtb_country (id, name, rank) VALUES (724,'スペイン',106);
INSERT INTO mtb_country (id, name, rank) VALUES (740,'スリナム',107);
INSERT INTO mtb_country (id, name, rank) VALUES (144,'スリランカ',108);
INSERT INTO mtb_country (id, name, rank) VALUES (703,'スロバキア',109);
INSERT INTO mtb_country (id, name, rank) VALUES (705,'スロベニア',110);
INSERT INTO mtb_country (id, name, rank) VALUES (748,'スワジランド',111);
INSERT INTO mtb_country (id, name, rank) VALUES (690,'セーシェル',112);
INSERT INTO mtb_country (id, name, rank) VALUES (226,'赤道ギニア',113);
INSERT INTO mtb_country (id, name, rank) VALUES (686,'セネガル',114);
INSERT INTO mtb_country (id, name, rank) VALUES (688,'セルビア',115);
INSERT INTO mtb_country (id, name, rank) VALUES (659,'セントクリストファー・ネイビス',116);
INSERT INTO mtb_country (id, name, rank) VALUES (670,'セントビンセント・グレナディーン|セントビンセントおよびグレナディーン諸島',117);
INSERT INTO mtb_country (id, name, rank) VALUES (654,'セントヘレナ・アセンションおよびトリスタンダクーニャ',118);
INSERT INTO mtb_country (id, name, rank) VALUES (662,'セントルシア',119);
INSERT INTO mtb_country (id, name, rank) VALUES (706,'ソマリア',120);
INSERT INTO mtb_country (id, name, rank) VALUES (90,'ソロモン諸島',121);
INSERT INTO mtb_country (id, name, rank) VALUES (796,'タークス・カイコス諸島',122);
INSERT INTO mtb_country (id, name, rank) VALUES (764,'タイ王国|タイ',123);
INSERT INTO mtb_country (id, name, rank) VALUES (410,'大韓民国',124);
INSERT INTO mtb_country (id, name, rank) VALUES (158,'台湾',125);
INSERT INTO mtb_country (id, name, rank) VALUES (762,'タジキスタン',126);
INSERT INTO mtb_country (id, name, rank) VALUES (834,'タンザニア',127);
INSERT INTO mtb_country (id, name, rank) VALUES (203,'チェコ',128);
INSERT INTO mtb_country (id, name, rank) VALUES (148,'チャド',129);
INSERT INTO mtb_country (id, name, rank) VALUES (140,'中央アフリカ共和国',130);
INSERT INTO mtb_country (id, name, rank) VALUES (156,'中華人民共和国|中国',131);
INSERT INTO mtb_country (id, name, rank) VALUES (788,'チュニジア',132);
INSERT INTO mtb_country (id, name, rank) VALUES (408,'朝鮮民主主義人民共和国',133);
INSERT INTO mtb_country (id, name, rank) VALUES (152,'チリ',134);
INSERT INTO mtb_country (id, name, rank) VALUES (798,'ツバル',135);
INSERT INTO mtb_country (id, name, rank) VALUES (208,'デンマーク',136);
INSERT INTO mtb_country (id, name, rank) VALUES (276,'ドイツ',137);
INSERT INTO mtb_country (id, name, rank) VALUES (768,'トーゴ',138);
INSERT INTO mtb_country (id, name, rank) VALUES (772,'トケラウ',139);
INSERT INTO mtb_country (id, name, rank) VALUES (214,'ドミニカ共和国',140);
INSERT INTO mtb_country (id, name, rank) VALUES (212,'ドミニカ国',141);
INSERT INTO mtb_country (id, name, rank) VALUES (780,'トリニダード・トバゴ',142);
INSERT INTO mtb_country (id, name, rank) VALUES (795,'トルクメニスタン',143);
INSERT INTO mtb_country (id, name, rank) VALUES (792,'トルコ',144);
INSERT INTO mtb_country (id, name, rank) VALUES (776,'トンガ',145);
INSERT INTO mtb_country (id, name, rank) VALUES (566,'ナイジェリア',146);
INSERT INTO mtb_country (id, name, rank) VALUES (520,'ナウル',147);
INSERT INTO mtb_country (id, name, rank) VALUES (516,'ナミビア',148);
INSERT INTO mtb_country (id, name, rank) VALUES (10,'南極',149);
INSERT INTO mtb_country (id, name, rank) VALUES (570,'ニウエ',150);
INSERT INTO mtb_country (id, name, rank) VALUES (558,'ニカラグア',151);
INSERT INTO mtb_country (id, name, rank) VALUES (562,'ニジェール',152);
INSERT INTO mtb_country (id, name, rank) VALUES (392,'日本',153);
INSERT INTO mtb_country (id, name, rank) VALUES (732,'西サハラ',154);
INSERT INTO mtb_country (id, name, rank) VALUES (540,'ニューカレドニア',155);
INSERT INTO mtb_country (id, name, rank) VALUES (554,'ニュージーランド',156);
INSERT INTO mtb_country (id, name, rank) VALUES (524,'ネパール',157);
INSERT INTO mtb_country (id, name, rank) VALUES (574,'ノーフォーク島',158);
INSERT INTO mtb_country (id, name, rank) VALUES (578,'ノルウェー',159);
INSERT INTO mtb_country (id, name, rank) VALUES (334,'ハード島とマクドナルド諸島',160);
INSERT INTO mtb_country (id, name, rank) VALUES (48,'バーレーン',161);
INSERT INTO mtb_country (id, name, rank) VALUES (332,'ハイチ',162);
INSERT INTO mtb_country (id, name, rank) VALUES (586,'パキスタン',163);
INSERT INTO mtb_country (id, name, rank) VALUES (336,'バチカン|バチカン市国',164);
INSERT INTO mtb_country (id, name, rank) VALUES (591,'パナマ',165);
INSERT INTO mtb_country (id, name, rank) VALUES (548,'バヌアツ',166);
INSERT INTO mtb_country (id, name, rank) VALUES (44,'バハマ',167);
INSERT INTO mtb_country (id, name, rank) VALUES (598,'パプアニューギニア',168);
INSERT INTO mtb_country (id, name, rank) VALUES (60,'バミューダ諸島|バミューダ',169);
INSERT INTO mtb_country (id, name, rank) VALUES (585,'パラオ',170);
INSERT INTO mtb_country (id, name, rank) VALUES (600,'パラグアイ',171);
INSERT INTO mtb_country (id, name, rank) VALUES (52,'バルバドス',172);
INSERT INTO mtb_country (id, name, rank) VALUES (275,'パレスチナ',173);
INSERT INTO mtb_country (id, name, rank) VALUES (348,'ハンガリー',174);
INSERT INTO mtb_country (id, name, rank) VALUES (50,'バングラデシュ',175);
INSERT INTO mtb_country (id, name, rank) VALUES (626,'東ティモール',176);
INSERT INTO mtb_country (id, name, rank) VALUES (612,'ピトケアン諸島|ピトケアン',177);
INSERT INTO mtb_country (id, name, rank) VALUES (242,'フィジー',178);
INSERT INTO mtb_country (id, name, rank) VALUES (608,'フィリピン',179);
INSERT INTO mtb_country (id, name, rank) VALUES (246,'フィンランド',180);
INSERT INTO mtb_country (id, name, rank) VALUES (64,'ブータン',181);
INSERT INTO mtb_country (id, name, rank) VALUES (74,'ブーベ島',182);
INSERT INTO mtb_country (id, name, rank) VALUES (630,'プエルトリコ',183);
INSERT INTO mtb_country (id, name, rank) VALUES (234,'フェロー諸島',184);
INSERT INTO mtb_country (id, name, rank) VALUES (238,'フォークランド諸島|フォークランド（マルビナス）諸島',185);
INSERT INTO mtb_country (id, name, rank) VALUES (76,'ブラジル',186);
INSERT INTO mtb_country (id, name, rank) VALUES (250,'フランス',187);
INSERT INTO mtb_country (id, name, rank) VALUES (254,'フランス領ギアナ',188);
INSERT INTO mtb_country (id, name, rank) VALUES (258,'フランス領ポリネシア',189);
INSERT INTO mtb_country (id, name, rank) VALUES (260,'フランス領南方・南極地域',190);
INSERT INTO mtb_country (id, name, rank) VALUES (100,'ブルガリア',191);
INSERT INTO mtb_country (id, name, rank) VALUES (854,'ブルキナファソ',192);
INSERT INTO mtb_country (id, name, rank) VALUES (96,'ブルネイ|ブルネイ・ダルサラーム',193);
INSERT INTO mtb_country (id, name, rank) VALUES (108,'ブルンジ',194);
INSERT INTO mtb_country (id, name, rank) VALUES (704,'ベトナム',195);
INSERT INTO mtb_country (id, name, rank) VALUES (204,'ベナン',196);
INSERT INTO mtb_country (id, name, rank) VALUES (862,'ベネズエラ|ベネズエラ・ボリバル共和国',197);
INSERT INTO mtb_country (id, name, rank) VALUES (112,'ベラルーシ',198);
INSERT INTO mtb_country (id, name, rank) VALUES (84,'ベリーズ',199);
INSERT INTO mtb_country (id, name, rank) VALUES (604,'ペルー',200);
INSERT INTO mtb_country (id, name, rank) VALUES (56,'ベルギー',201);
INSERT INTO mtb_country (id, name, rank) VALUES (616,'ポーランド',202);
INSERT INTO mtb_country (id, name, rank) VALUES (70,'ボスニア・ヘルツェゴビナ',203);
INSERT INTO mtb_country (id, name, rank) VALUES (72,'ボツワナ',204);
INSERT INTO mtb_country (id, name, rank) VALUES (535,'BES諸島|ボネール、シント・ユースタティウスおよびサバ',205);
INSERT INTO mtb_country (id, name, rank) VALUES (68,'ボリビア|ボリビア多民族国',206);
INSERT INTO mtb_country (id, name, rank) VALUES (620,'ポルトガル',207);
INSERT INTO mtb_country (id, name, rank) VALUES (344,'香港',208);
INSERT INTO mtb_country (id, name, rank) VALUES (340,'ホンジュラス',209);
INSERT INTO mtb_country (id, name, rank) VALUES (584,'マーシャル諸島',210);
INSERT INTO mtb_country (id, name, rank) VALUES (446,'マカオ',211);
INSERT INTO mtb_country (id, name, rank) VALUES (807,'マケドニア共和国|マケドニア旧ユーゴスラビア共和国',212);
INSERT INTO mtb_country (id, name, rank) VALUES (450,'マダガスカル',213);
INSERT INTO mtb_country (id, name, rank) VALUES (175,'マヨット',214);
INSERT INTO mtb_country (id, name, rank) VALUES (454,'マラウイ',215);
INSERT INTO mtb_country (id, name, rank) VALUES (466,'マリ共和国|マリ',216);
INSERT INTO mtb_country (id, name, rank) VALUES (470,'マルタ',217);
INSERT INTO mtb_country (id, name, rank) VALUES (474,'マルティニーク',218);
INSERT INTO mtb_country (id, name, rank) VALUES (458,'マレーシア',219);
INSERT INTO mtb_country (id, name, rank) VALUES (833,'マン島',220);
INSERT INTO mtb_country (id, name, rank) VALUES (583,'ミクロネシア連邦',221);
INSERT INTO mtb_country (id, name, rank) VALUES (710,'南アフリカ共和国|南アフリカ',222);
INSERT INTO mtb_country (id, name, rank) VALUES (728,'南スーダン',223);
INSERT INTO mtb_country (id, name, rank) VALUES (104,'ミャンマー',224);
INSERT INTO mtb_country (id, name, rank) VALUES (484,'メキシコ',225);
INSERT INTO mtb_country (id, name, rank) VALUES (480,'モーリシャス',226);
INSERT INTO mtb_country (id, name, rank) VALUES (478,'モーリタニア',227);
INSERT INTO mtb_country (id, name, rank) VALUES (508,'モザンビーク',228);
INSERT INTO mtb_country (id, name, rank) VALUES (492,'モナコ',229);
INSERT INTO mtb_country (id, name, rank) VALUES (462,'モルディブ',230);
INSERT INTO mtb_country (id, name, rank) VALUES (498,'モルドバ|モルドバ共和国',231);
INSERT INTO mtb_country (id, name, rank) VALUES (504,'モロッコ',232);
INSERT INTO mtb_country (id, name, rank) VALUES (496,'モンゴル国|モンゴル',233);
INSERT INTO mtb_country (id, name, rank) VALUES (499,'モンテネグロ',234);
INSERT INTO mtb_country (id, name, rank) VALUES (500,'モントセラト',235);
INSERT INTO mtb_country (id, name, rank) VALUES (400,'ヨルダン',236);
INSERT INTO mtb_country (id, name, rank) VALUES (418,'ラオス|ラオス人民民主共和国',237);
INSERT INTO mtb_country (id, name, rank) VALUES (428,'ラトビア',238);
INSERT INTO mtb_country (id, name, rank) VALUES (440,'リトアニア',239);
INSERT INTO mtb_country (id, name, rank) VALUES (434,'リビア',240);
INSERT INTO mtb_country (id, name, rank) VALUES (438,'リヒテンシュタイン',241);
INSERT INTO mtb_country (id, name, rank) VALUES (430,'リベリア',242);
INSERT INTO mtb_country (id, name, rank) VALUES (642,'ルーマニア',243);
INSERT INTO mtb_country (id, name, rank) VALUES (442,'ルクセンブルク',244);
INSERT INTO mtb_country (id, name, rank) VALUES (646,'ルワンダ',245);
INSERT INTO mtb_country (id, name, rank) VALUES (426,'レソト',246);
INSERT INTO mtb_country (id, name, rank) VALUES (422,'レバノン',247);
INSERT INTO mtb_country (id, name, rank) VALUES (638,'レユニオン',248);
INSERT INTO mtb_country (id, name, rank) VALUES (643,'ロシア|ロシア連邦',249);


ALTER TABLE `dtb_ownersstore_settings`
ADD PRIMARY KEY (`public_key`(64));


TRUNCATE TABLE `mtb_zip`;


ALTER TABLE `mtb_zip`
ADD COLUMN `zip_id` INT PRIMARY KEY FIRST,
DROP COLUMN `code`,
DROP COLUMN `old_zipcode`,
DROP COLUMN `state_kana`,
DROP COLUMN `city_kana`,
DROP COLUMN `town_kana`,
DROP COLUMN `flg1`,
DROP COLUMN `flg2`,
DROP COLUMN `flg3`,
DROP COLUMN `flg4`,
DROP COLUMN `flg5`,
DROP COLUMN `flg6`;


ALTER TABLE `dtb_baseinfo`
ADD COLUMN `id` INT PRIMARY KEY FIRST,
ADD COLUMN `zipcode` TEXT AFTER `zip02`,
ADD COLUMN `country_id` INT AFTER `zipcode`,
ADD COLUMN `law_zipcode` TEXT AFTER `law_zip02`,
ADD COLUMN `law_country_id` INT AFTER `law_zipcode`,
DROP COLUMN `tax`,
DROP COLUMN `tax_rule`,
DROP COLUMN `email05`;


UPDATE `dtb_baseinfo` SET `id` = 1, `country_id` = 392, `law_country_id` = 392;


ALTER TABLE `dtb_payment`
DROP COLUMN `rule`,
ADD COLUMN `rule_max` NUMERIC;


ALTER TABLE `dtb_mailtemplate`
MODIFY COLUMN `template_id` INT NOT NULL PRIMARY KEY;


ALTER TABLE `dtb_send_customer`
MODIFY COLUMN `customer_id` INT NOT NULL;


ALTER TABLE `dtb_products_class`
ADD COLUMN `classcategory_id1` INT NOT NULL DEFAULT 0 AFTER `product_id`,
ADD COLUMN `classcategory_id2` INT NOT NULL DEFAULT 0 AFTER `classcategory_id1`,
MODIFY COLUMN `point_rate` NUMERIC NOT NULL DEFAULT 0;



UPDATE `dtb_products_class` SET `classcategory_id1` = 0, `classcategory_id2` = 0;


UPDATE `dtb_products_class`
INNER JOIN `dtb_class_combination`
ON `dtb_products_class`.`class_combination_id` = `dtb_class_combination`.`class_combination_id`
SET `dtb_products_class`.`classcategory_id1` = `dtb_class_combination`.`classcategory_id`
WHERE `dtb_products_class`.`class_combination_id` IS NOT NULL;


UPDATE `dtb_products_class`
INNER JOIN `dtb_class_combination`
ON `dtb_products_class`.`class_combination_id` = `dtb_class_combination`.`parent_class_combination_id`
SET `dtb_products_class`.`classcategory_id2` = `dtb_class_combination`.`classcategory_id`
WHERE `dtb_products_class`.`class_combination_id` IS NOT NULL;


ALTER TABLE `dtb_products_class`
DROP COLUMN `class_combination_id`;


ALTER TABLE `dtb_recommend_products`
ADD PRIMARY KEY (`product_id`, `recommend_product_id`);


ALTER TABLE `dtb_category_count`
MODIFY COLUMN `category_id` INT NOT NULL PRIMARY KEY;


ALTER TABLE `dtb_category_total_count`
MODIFY COLUMN `category_id` INT NOT NULL PRIMARY KEY;


ALTER TABLE `dtb_customer`
DROP INDEX `secret_key`,
ADD COLUMN `company_name` TEXT AFTER `kana02`,
ADD COLUMN `zipcode` TEXT AFTER `zip02`,
ADD COLUMN `country_id` INT AFTER `zipcode`,
MODIFY COLUMN `kana01` TEXT,
MODIFY COLUMN `kana02` TEXT,
MODIFY COLUMN `secret_key` TEXT NOT NULL,
MODIFY COLUMN `point` NUMERIC NOT NULL DEFAULT 0,
ADD UNIQUE (`secret_key`(255));


UPDATE `dtb_customer` SET `country_id` = 392;


UPDATE `dtb_order` SET `discount` = 0 WHERE `discount` IS NULL;
UPDATE `dtb_order` SET `use_point` = 0 WHERE `use_point` IS NULL;
UPDATE `dtb_order` SET `add_point` = 0 WHERE `add_point` IS NULL;
UPDATE `dtb_order` SET `birth_point` = 0 WHERE `birth_point` IS NULL;


ALTER TABLE `dtb_order`
ADD COLUMN `order_company_name` TEXT AFTER `order_kana02`,
ADD COLUMN `order_zipcode` TEXT AFTER `order_zip02`,
ADD COLUMN `order_country_id` INT AFTER `order_zipcode`,
MODIFY COLUMN `discount` NUMERIC NOT NULL DEFAULT 0,
MODIFY COLUMN `use_point` NUMERIC NOT NULL DEFAULT 0,
MODIFY COLUMN `add_point` NUMERIC NOT NULL DEFAULT 0,
MODIFY COLUMN `birth_point` NUMERIC NOT NULL DEFAULT 0;


UPDATE `dtb_order` SET `order_country_id` = 392;


UPDATE `dtb_order_temp` SET `discount` = 0 WHERE `discount` IS NULL;
UPDATE `dtb_order_temp` SET `use_point` = 0 WHERE `use_point` IS NULL;
UPDATE `dtb_order_temp` SET `add_point` = 0 WHERE `add_point` IS NULL;
UPDATE `dtb_order_temp` SET `birth_point` = 0 WHERE `birth_point` IS NULL;


ALTER TABLE `dtb_order_temp`
ADD COLUMN `order_company_name` TEXT AFTER `order_kana02`,
ADD COLUMN `order_zipcode` TEXT AFTER `order_zip02`,
ADD COLUMN `order_country_id` INT AFTER `order_zipcode`,
MODIFY COLUMN `discount` NUMERIC NOT NULL DEFAULT 0,
MODIFY COLUMN `use_point` NUMERIC NOT NULL DEFAULT 0,
MODIFY COLUMN `add_point` NUMERIC NOT NULL DEFAULT 0,
MODIFY COLUMN `birth_point` NUMERIC NOT NULL DEFAULT 0,
ADD PRIMARY KEY (`order_temp_id`(64));


UPDATE `dtb_order_temp` SET `order_country_id` = 392;


ALTER TABLE `dtb_shipping`
ADD COLUMN `shipping_company_name` TEXT AFTER `shipping_kana02`,
ADD COLUMN `shipping_country_id` INT AFTER `shipping_fax03`,
ADD COLUMN `shipping_zipcode` TEXT AFTER `shipping_zip02`,
DROP COLUMN `deliv_id`,
DROP COLUMN `shipping_num`;


UPDATE `dtb_shipping` SET `shipping_country_id` = 392;


ALTER TABLE `dtb_other_deliv`
ADD COLUMN `company_name` TEXT AFTER `kana02`,
ADD COLUMN `zipcode` TEXT AFTER `zip02`,
ADD COLUMN `country_id` INT AFTER `zipcode`,
ADD COLUMN `fax01` TEXT AFTER `tel03`,
ADD COLUMN `fax02` TEXT AFTER `fax01`,
ADD COLUMN `fax03` TEXT AFTER `fax02`;


UPDATE `dtb_other_deliv` SET `country_id` = 392;


ALTER TABLE `dtb_order_detail`
MODIFY COLUMN `point_rate` NUMERIC NOT NULL DEFAULT 0,
ADD COLUMN `tax_rate` NUMERIC AFTER `point_rate`,
ADD COLUMN `tax_rule` SMALLINT AFTER `tax_rate`;


UPDATE `dtb_order_detail` SET `point_rate` = 0 WHERE `point_rate` IS NULL;


ALTER TABLE `dtb_pagelayout`
ADD COLUMN `meta_robots` TEXT AFTER `update_date`;


ALTER TABLE `dtb_bloc`
DROP INDEX `device_type_id`,
MODIFY COLUMN `filename` TEXT NOT NULL,
ADD COLUMN `plugin_id` INT AFTER `deletable_flg`,
ADD UNIQUE (`device_type_id`, `filename`(255));


ALTER TABLE `dtb_templates`
DROP PRIMARY KEY,
MODIFY COLUMN `template_code` TEXT NOT NULL,
ADD PRIMARY KEY (`template_code`(255));


ALTER TABLE `dtb_maker_count`
MODIFY COLUMN `maker_id` INT NOT NULL PRIMARY KEY;


ALTER TABLE `dtb_mobile_ext_session_id`
ADD PRIMARY KEY (`session_id`(255));


ALTER TABLE `dtb_module`
MODIFY COLUMN `module_id` INT NOT NULL PRIMARY KEY;


ALTER TABLE `dtb_session`
DROP PRIMARY KEY,
MODIFY COLUMN `sess_id` TEXT NOT NULL,
ADD PRIMARY KEY (`sess_id`(255));


ALTER TABLE `dtb_bkup`
DROP PRIMARY KEY,
MODIFY COLUMN `bkup_name` TEXT,
ADD PRIMARY KEY (`bkup_name`(255));


ALTER TABLE `dtb_plugin`
DROP COLUMN `plugin_setting_path`,
DROP COLUMN `rank`,
DROP COLUMN `status`,
DROP COLUMN `del_flg`,
MODIFY COLUMN `plugin_name` TEXT NOT NULL,
MODIFY COLUMN `plugin_code` TEXT NOT NULL,
MODIFY COLUMN `class_name` TEXT NOT NULL,
MODIFY COLUMN `author` TEXT,
MODIFY COLUMN `plugin_site_url` TEXT,
MODIFY COLUMN `plugin_version` TEXT,
MODIFY COLUMN `plugin_description` TEXT,
ADD COLUMN `author_site_url` TEXT AFTER `author`,
ADD COLUMN `compliant_version` TEXT AFTER `plugin_version`,
ADD COLUMN `priority` INT NOT NULL DEFAULT 0 AFTER `plugin_description`,
ADD COLUMN `free_field1` TEXT AFTER `enable`,
ADD COLUMN `free_field2` TEXT AFTER `free_field1`,
ADD COLUMN `free_field3` TEXT AFTER `free_field2`,
ADD COLUMN `free_field4` TEXT AFTER `free_field3`;


ALTER TABLE `mtb_permission`
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`(255));


ALTER TABLE `mtb_constants`
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`(255));


ALTER TABLE `dtb_index_list`
MODIFY COLUMN `table_name` TEXT NOT NULL,
MODIFY COLUMN `column_name` TEXT NOT NULL,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`table_name`(255), `column_name`(255));


INSERT INTO dtb_classcategory (classcategory_id, name, class_id, rank, creator_id, create_date, update_date, del_flg) VALUES (0, NULL, 0, 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0);


DROP TABLE `mtb_class`;
DROP TABLE `mtb_ownersstore_ips`;
DROP TABLE `dtb_class_combination`;
DROP TABLE `dtb_class_combination_class_combination_id_seq`;


TRUNCATE TABLE `mtb_constants`;
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SAMPLE_ADDRESS1', '"市区町村名 (例：千代田区神田神保町)"', 1, 'フロント表示関連');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SAMPLE_ADDRESS2', '"番地・ビル名 (例：1-3-5)"', 2, 'フロント表示関連');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('USER_DIR', '"user_data/"', 3, 'ユーザファイル保存先');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('USER_REALDIR', 'HTML_REALDIR . USER_DIR', 4, 'ユーザファイル保存先');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('USER_URL', 'HTTP_URL . USER_DIR', 9, 'ユーザー作成ページ等');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('AUTH_TYPE', '"HMAC"', 10, '認証方式');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('USER_PACKAGE_DIR', '"packages/"', 17, 'テンプレートファイル保存先');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('USER_TEMPLATE_REALDIR', 'USER_REALDIR . USER_PACKAGE_DIR', 18, 'テンプレートファイル保存先');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('TEMPLATE_TEMP_REALDIR', 'HTML_REALDIR . "upload/temp_template/"', 19, 'テンプレートファイル一時保存先');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('USER_DEF_PHP_REALFILE', 'DATA_REALDIR . "__default.php"', 20, 'ユーザー作成画面のデフォルトPHPファイル');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MODULE_DIR', '"downloads/module/"', 22, 'ダウンロードモジュール保存ディレクトリ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MODULE_REALDIR', 'DATA_REALDIR . MODULE_DIR', 23, 'ダウンロードモジュール保存ディレクトリ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MAX_LIFETIME', '7200', 26, 'DBセッションの有効期限(秒)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MASTER_DATA_REALDIR', 'DATA_REALDIR . "cache/"', 27, 'マスターデータキャッシュディレクトリ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('UPDATE_HTTP', '"http://www.ec-cube.net/info/index.php"', 28, 'アップデート管理用ファイル格納場所');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('CHAR_CODE', '"UTF-8"', 39, '文字コード');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('LOCALE', '"ja_JP.UTF-8"', 40, 'ロケール設定');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ECCUBE_PAYMENT', '"EC-CUBE"', 41, '決済モジュール付与文言');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PEAR_DB_DEBUG', '0', 42, 'PEAR::DBのデバッグモード');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PEAR_DB_PERSISTENT', 'false', 43, 'PEAR::DBの持続的接続オプション');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('CLOSE_DAY', '31', 45, '締め日の指定(末日の場合は、31を指定してください。)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('FAVORITE_ERROR', '13', 46, '一般サイトエラー');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('GRAPH_REALDIR', 'HTML_REALDIR . "upload/graph_image/"', 49, 'グラフ格納ディレクトリ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('GRAPH_URLPATH', 'ROOT_URLPATH . "upload/graph_image/"', 50, 'グラフURL');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('GRAPH_PIE_MAX', '10', 51, '円グラフ最大表示数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('GRAPH_LABEL_MAX', '40', 52, 'グラフのラベルの文字数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PRODUCTS_TOTAL_MAX', '15', 55, '商品集計で何位まで表示するか');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DEFAULT_PRODUCT_DISP', '2', 56, '1:公開 2:非公開');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DELIV_FREE_AMOUNT', '0', 57, '送料無料購入数量 (0の場合は、いくつ買っても無料にならない)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('INPUT_DELIV_FEE', '1', 58, '配送料の設定画面表示(有効:1 無効:0)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('OPTION_PRODUCT_DELIV_FEE', '0', 59, '商品ごとの送料設定(有効:1 無効:0)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('OPTION_DELIV_FEE', '1', 60, '配送業者ごとの配送料を加算する(有効:1 無効:0)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('OPTION_RECOMMEND', '1', 61, 'おすすめ商品登録(有効:1 無効:0)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('OPTION_CLASS_REGIST', '1', 62, '商品規格登録(有効:1 無効:0)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DEFAULT_PASSWORD', '"******"', 66, '会員登録変更(マイページ)パスワード用');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DELIV_ADDR_MAX', '20', 67, '別のお届け先最大登録数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ORDER_STATUS_MAX', '50', 70, '対応状況管理画面の一覧表示件数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('REVIEW_REGIST_MAX', '5', 71, 'フロントレビュー書き込み最大数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DEBUG_MODE', 'false', 72, 'デバッグモード(true：sfPrintRやDBのエラーメッセージ、ログレベルがDebugのログを出力する、false：出力しない)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('USE_VERBOSE_LOG', 'DEBUG_MODE', 73, 'ログを冗長とするか(true:利用する、false:利用しない)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ADMIN_ID', '"1"', 74, '管理ユーザID(メンテナンス用表示されない。)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('CUSTOMER_CONFIRM_MAIL', 'false', 75, '会員登録時に仮会員確認メールを送信するか (true:仮会員、false:本会員)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('LOGIN_FRAME', '"login_frame.tpl"', 77, 'ログイン画面フレーム');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MAIN_FRAME', '"main_frame.tpl"', 78, '管理画面フレーム');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SITE_FRAME', '"site_frame.tpl"', 79, '一般サイト画面フレーム');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('CERT_STRING', '"7WDhcBTF"', 80, '認証文字列');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('BIRTH_YEAR', '1901', 83, '生年月日登録開始年');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('RELEASE_YEAR', '2005', 84, '本システムの稼働開始年');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('CREDIT_ADD_YEAR', '10', 85, 'クレジットカードの期限＋何年');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('POINT_RULE', '2', 88, 'ポイントの計算ルール(1:四捨五入、2:切り捨て、3:切り上げ)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('POINT_VALUE', '1', 89, '1ポイント当たりの値段(円)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ADMIN_MODE', '0', 90, '管理モード 1:有効　0:無効(納品時)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MAX_LOG_QUANTITY', '5', 92, 'ログファイル最大数(ログテーション)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MAX_LOG_SIZE', '"1000000"', 93, '1つのログファイルに保存する最大容量(byte)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('TRANSACTION_ID_NAME', '"transactionid"', 94, 'トランザクションID の名前');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('FORGOT_MAIL', '0', 95, 'パスワード忘れの確認メールを送付するか否か。(0:送信しない、1:送信する)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('BIRTH_MONTH_POINT', '0', 98, '誕生日月ポイント');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('LARGE_IMAGE_WIDTH', '500', 110, '拡大画像横');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('LARGE_IMAGE_HEIGHT', '500', 111, '拡大画像縦');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SMALL_IMAGE_WIDTH', '130', 112, '一覧画像横');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SMALL_IMAGE_HEIGHT', '130', 113, '一覧画像縦');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('NORMAL_IMAGE_WIDTH', '260', 114, '通常画像横');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('NORMAL_IMAGE_HEIGHT', '260', 115, '通常画像縦');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('NORMAL_SUBIMAGE_WIDTH', '200', 116, '通常サブ画像横');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('NORMAL_SUBIMAGE_HEIGHT', '200', 117, '通常サブ画像縦');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('LARGE_SUBIMAGE_WIDTH', '500', 118, '拡大サブ画像横');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('LARGE_SUBIMAGE_HEIGHT', '500', 119, '拡大サブ画像縦');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('IMAGE_SIZE', '1000', 126, '画像サイズ制限(KB)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('CSV_SIZE', '2000', 127, 'CSVサイズ制限(KB)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('CSV_LINE_MAX', '10000', 128, 'CSVアップロード1行あたりの最大文字数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('FILE_SIZE', '10000', 130, 'ファイル管理画面アップ制限(KB)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('TEMPLATE_SIZE', '10000', 131, 'アップできるテンプレートファイル制限(KB)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('LEVEL_MAX', '5', 132, 'カテゴリの最大階層');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('CATEGORY_MAX', '1000', 133, '最大カテゴリ登録数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ADMIN_TITLE', '"EC-CUBE 管理機能"', 134, '管理機能タイトル');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SELECT_RGB', '"#ffffdf"', 135, '編集時強調表示色');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DISABLED_RGB', '"#C9C9C9"', 136, '入力項目無効時の表示色');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ERR_COLOR', '"#ffe8e8"', 137, 'エラー時表示色');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('CATEGORY_HEAD', '">"', 138, '親カテゴリ表示文字');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('START_BIRTH_YEAR', '1970', 139, '生年月日初期選択年');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('NORMAL_PRICE_TITLE', '"通常価格"', 140, '価格名称');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SALE_PRICE_TITLE', '"販売価格"', 141, '価格名称');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('LOG_REALFILE', 'DATA_REALDIR . "logs/site.log"', 142, '標準ログファイル');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('CUSTOMER_LOG_REALFILE', 'DATA_REALDIR . "logs/customer.log"', 143, '会員ログイン ログファイル');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ADMIN_LOG_REALFILE', 'DATA_REALDIR . "logs/admin.log"', 144, '管理機能ログファイル');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DEBUG_LOG_REALFILE', '""', 145, 'デバッグログファイル(未入力:標準ログファイル・管理画面ログファイル)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ERROR_LOG_REALFILE', 'DATA_REALDIR . "logs/error.log"', 146, 'エラーログファイル(未入力:標準ログファイル・管理画面ログファイル)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DB_LOG_REALFILE', 'DATA_REALDIR . "logs/db.log"', 147, 'DBログファイル');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PLUGIN_LOG_REALFILE', 'DATA_REALDIR . "logs/plugin.log"', 148, 'プラグインログファイル');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('IMAGE_TEMP_REALDIR', 'HTML_REALDIR . "upload/temp_image/"', 150, '画像一時保存');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('IMAGE_SAVE_REALDIR', 'HTML_REALDIR . "upload/save_image/"', 151, '画像保存先');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('IMAGE_TEMP_URLPATH', 'ROOT_URLPATH . "upload/temp_image/"', 152, '画像一時保存URL');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('IMAGE_SAVE_URLPATH', 'ROOT_URLPATH . "upload/save_image/"', 153, '画像保存先URL');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('IMAGE_TEMP_RSS_URL', 'HTTP_URL . "upload/temp_image/"', 154, 'RSS用画像一時保存URL');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('IMAGE_SAVE_RSS_URL', 'HTTP_URL . "upload/save_image/"', 155, 'RSS用画像保存先URL');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('CSV_TEMP_REALDIR', 'DATA_REALDIR . "upload/csv/"', 156, 'エンコードCSVの一時保存先');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('NO_IMAGE_REALFILE', 'USER_TEMPLATE_REALDIR . "default/img/picture/img_blank.gif"', 158, '画像がない場合に表示');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ADMIN_SYSTEM_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . "system/" . DIR_INDEX_PATH', 159, 'システム管理トップ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('INPUT_ZIP_URLPATH', 'ROOT_URLPATH . "input_zip.php"', 161, '郵便番号入力');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ADMIN_HOME_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . "home.php"', 165, 'ホーム');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ADMIN_LOGIN_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . DIR_INDEX_PATH', 166, 'ログインページ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ADMIN_PRODUCTS_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . "products/" . DIR_INDEX_PATH', 167, '商品検索ページ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ADMIN_ORDER_EDIT_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . "order/edit.php"', 168, '注文編集ページ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ADMIN_ORDER_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . "order/" . DIR_INDEX_PATH', 169, '注文編集ページ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ADMIN_ORDER_MAIL_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . "order/mail.php"', 170, '注文編集ページ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ADMIN_LOGOUT_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . "logout.php"', 171, 'ログアウトページ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MEMBER_PMAX', '10', 182, 'メンバー管理ページ表示行数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SEARCH_PMAX', '10', 183, '検索ページ表示行数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('NAVI_PMAX', '4', 184, 'ページ番号の最大表示数量');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PRODUCTSUB_MAX', '5', 185, '商品サブ情報最大数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DELIVTIME_MAX', '16', 186, 'お届け時間の最大表示数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DELIVFEE_MAX', '47', 187, '配送料金の最大表示数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('STEXT_LEN', '50', 188, '短い項目の文字数 (名前など)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SMTEXT_LEN', '100', 189, NULL);
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MTEXT_LEN', '200', 190, '長い項目の文字数 (住所など)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MLTEXT_LEN', '1000', 191, '長中文の文字数 (問い合わせなど)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('LTEXT_LEN', '3000', 192, '長文の文字数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('LLTEXT_LEN', '99999', 193, '超長文の文字数 (メルマガなど)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('URL_LEN', '1024', 194, 'URLの文字長');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ID_MAX_LEN', 'STEXT_LEN', 195, '管理画面用：ID・パスワードの最大文字数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ID_MIN_LEN', '4', 196, '管理画面用：ID・パスワードの最小文字数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PRICE_LEN', '8', 197, '金額桁数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PERCENTAGE_LEN', '3', 198, '率桁数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('AMOUNT_LEN', '6', 199, '在庫数、販売制限数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ZIP01_LEN', '3', 200, '郵便番号1');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ZIP02_LEN', '4', 201, '郵便番号2');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('TEL_ITEM_LEN', '6', 202, '電話番号各項目制限');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('TEL_LEN', '12', 203, '電話番号総数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PASSWORD_MIN_LEN', '4', 204, 'フロント画面用：パスワードの最小文字数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PASSWORD_MAX_LEN', 'STEXT_LEN', 205, 'フロント画面用：パスワードの最大文字数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('INT_LEN', '9', 206, '検査数値用桁数(INT)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('CREDIT_NO_LEN', '4', 207, 'クレジットカードの文字数 (*モジュールで使用)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SEARCH_CATEGORY_LEN', '18', 208, '検索カテゴリ最大表示文字数(byte)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('FILE_NAME_LEN', '10', 209, 'ファイル名表示文字数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('COOKIE_EXPIRE', '365', 212, 'クッキー保持期限(日)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SEPA_CATNAVI', '" > "', 235, 'カテゴリ区切り文字');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SHOPPING_URL', 'HTTPS_URL . "shopping/" . DIR_INDEX_PATH', 237, '会員情報入力');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ENTRY_URL', 'HTTPS_URL . "entry/" . DIR_INDEX_PATH', 238, '会員登録ページTOP');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('TOP_URL', 'HTTP_URL . DIR_INDEX_PATH', 239, 'サイトトップ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('CART_URL', 'HTTP_URL . "cart/" . DIR_INDEX_PATH', 240, 'カートトップ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DELIV_URLPATH', 'ROOT_URLPATH . "shopping/deliv.php"', 241, 'お届け先設定');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MULTIPLE_URLPATH', 'ROOT_URLPATH . "shopping/multiple.php"', 242, '複数お届け先設定');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SHOPPING_CONFIRM_URLPATH', 'ROOT_URLPATH . "shopping/confirm.php"', 244, '購入確認ページ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SHOPPING_PAYMENT_URLPATH', 'ROOT_URLPATH . "shopping/payment.php"', 245, 'お支払い方法選択ページ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SHOPPING_COMPLETE_URLPATH', 'ROOT_URLPATH . "shopping/complete.php"', 246, '購入完了画面');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SHOPPING_MODULE_URLPATH', 'ROOT_URLPATH . "shopping/load_payment_module.php"', 249, 'モジュール追加用画面');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('P_DETAIL_URLPATH', 'ROOT_URLPATH . "products/detail.php?product_id="', 253, '商品詳細(HTML出力)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MYPAGE_DELIVADDR_URLPATH', 'ROOT_URLPATH . "mypage/delivery.php"', 254, 'マイページお届け先URL');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ADMIN_NEWS_STARTYEAR', '2005', 264, '新着情報管理画面 開始年(西暦) ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ENTRY_LIMIT_HOUR', '1', 267, '再入会制限時間 (単位: 時間)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('RECOMMEND_PRODUCT_MAX', '6', 268, '関連商品表示数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('RECOMMEND_NUM', '8', 269, 'おすすめ商品表示数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DELIV_DATE_END_MAX', '21', 272, 'お届け可能日以降のプルダウン表示最大日数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('CV_PAYMENT_LIMIT', '14', 275, '支払期限 (*モジュールで使用)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('REVIEW_ALLOW_URL', '0', 277, '商品レビューでURL書き込みを許可するか否か');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('UPDATE_SEND_SITE_INFO', 'false', 289, 'アップデート時にサイト情報を送出するか');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('USE_POINT', 'true', 290, 'ポイントを利用するか(true:利用する、false:利用しない) (false は一部対応)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('NOSTOCK_HIDDEN', 'false', 291, '在庫無し商品の非表示(true:非表示、false:表示)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('USE_MOBILE', 'true', 292, 'モバイルサイトを利用するか(true:利用する、false:利用しない) (false は一部対応) (*モジュールで使用)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('USE_MULTIPLE_SHIPPING', 'true', 293, '複数配送先指定機能を利用するか(true:利用する、false:利用しない)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SLTEXT_LEN', '500', 294, '短文の文字数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DEFAULT_TEMPLATE_NAME', '"default"', 300, 'デフォルトテンプレート名(PC)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MOBILE_DEFAULT_TEMPLATE_NAME', '"mobile"', 301, 'デフォルトテンプレート名(モバイル)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SMARTPHONE_DEFAULT_TEMPLATE_NAME', '"sphone"', 302, 'デフォルトテンプレート名(スマートフォン)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('TEMPLATE_NAME', '"default"', 303, 'テンプレート名');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MOBILE_TEMPLATE_NAME', '"mobile"', 304, 'モバイルテンプレート名');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SMARTPHONE_TEMPLATE_NAME', '"sphone"', 305, 'スマートフォンテンプレート名');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SMARTY_TEMPLATES_REALDIR', ' DATA_REALDIR . "Smarty/templates/"', 306, 'SMARTYテンプレート');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('TEMPLATE_REALDIR', 'SMARTY_TEMPLATES_REALDIR . TEMPLATE_NAME . "/"', 307, 'SMARTYテンプレート(PC)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('TEMPLATE_ADMIN_REALDIR', 'SMARTY_TEMPLATES_REALDIR . "admin/"', 308, 'SMARTYテンプレート(管理機能)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('COMPILE_REALDIR', 'DATA_REALDIR . "Smarty/templates_c/" . TEMPLATE_NAME . "/"', 309, 'SMARTYコンパイル');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('COMPILE_ADMIN_REALDIR', 'DATA_REALDIR . "Smarty/templates_c/admin/"', 310, 'SMARTYコンパイル(管理機能)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('BLOC_DIR', '"frontparts/bloc/"', 311, 'ブロックファイル保存先');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MOBILE_TEMPLATE_REALDIR', 'SMARTY_TEMPLATES_REALDIR . MOBILE_TEMPLATE_NAME . "/"', 312, 'SMARTYテンプレート(mobile)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MOBILE_COMPILE_REALDIR', 'DATA_REALDIR . "Smarty/templates_c/" . MOBILE_TEMPLATE_NAME . "/"', 313, 'SMARTYコンパイル(mobile)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SMARTPHONE_TEMPLATE_REALDIR', 'SMARTY_TEMPLATES_REALDIR . SMARTPHONE_TEMPLATE_NAME . "/"', 314, 'SMARTYテンプレート(smart phone)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SMARTPHONE_COMPILE_REALDIR', 'DATA_REALDIR . "Smarty/templates_c/" . SMARTPHONE_TEMPLATE_NAME . "/"', 315, 'SMARTYコンパイル(smartphone)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('RFC_COMPLIANT_EMAIL_CHECK', 'false', 401, 'EメールアドレスチェックをRFC準拠にするか(true:準拠する、false:準拠しない)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MOBILE_SESSION_LIFETIME', '1800', 402, 'モバイルサイトのセッションの存続時間 (秒)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MOBILE_IMAGE_REALDIR', 'HTML_REALDIR . "upload/mobile_image/"', 408, '携帯電話向け変換画像保存ディレクトリ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MOBILE_IMAGE_URLPATH', 'ROOT_URLPATH . "upload/mobile_image/"', 409, '携帯電話向け変換画像保存ディレクトリ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MOBILE_TOP_URLPATH', 'ROOT_URLPATH . DIR_INDEX_PATH', 410, 'モバイルURL');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MOBILE_CART_URLPATH', 'ROOT_URLPATH . "cart/" . DIR_INDEX_PATH', 411, 'カートトップ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MOBILE_SHOPPING_CONFIRM_URLPATH', 'ROOT_URLPATH . "shopping/confirm.php"', 413, '購入確認ページ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MOBILE_SHOPPING_PAYMENT_URLPATH', 'ROOT_URLPATH . "shopping/payment.php"', 414, 'お支払い方法選択ページ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MOBILE_P_DETAIL_URLPATH', 'ROOT_URLPATH . "products/detail.php?product_id="', 415, '商品詳細(HTML出力)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MOBILE_SHOPPING_COMPLETE_URLPATH', 'ROOT_URLPATH . "shopping/complete.php"', 416, '購入完了画面 (*モジュールで使用)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SESSION_KEEP_METHOD', '"useCookie"', 418, 'セッション維持方法："useCookie"|"useRequest"');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SESSION_LIFETIME', '1800', 419, 'セッションの存続時間 (秒)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('OSTORE_URL', '"http://www.ec-cube.net/"', 500, 'オーナーズストアURL');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('OSTORE_SSLURL', '"https://www.ec-cube.net/"', 501, 'オーナーズストアURL');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('OSTORE_LOG_REALFILE', 'DATA_REALDIR . "logs/ownersstore.log"', 502, 'オーナーズストアログパス');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('OPTION_FAVORITE_PRODUCT', '1', 523, 'お気に入り商品登録(有効:1 無効:0)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('IMAGE_RENAME', 'true', 525, '画像リネーム設定 (商品画像のみ) (true:リネームする、false:リネームしない)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PLUGIN_DIR', '"plugins/"', 600, '(2.11用)プラグインディレクトリ(モジュールで使用)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PLUGIN_REALDIR', 'USER_REALDIR . PLUGIN_DIR', 601, '(2.11用)プラグイン保存先(モジュールで使用)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PLUGIN_UPLOAD_REALDIR', 'DATA_REALDIR . "downloads/plugin/"', 604, 'プラグイン保存先ディレクトリ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PLUGIN_HTML_REALDIR', 'HTML_REALDIR . "plugin/"', 605, 'プラグイン保存先ディレクトリ(html)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PLUGIN_TEMP_REALDIR', 'HTML_REALDIR . "upload/temp_plugin/"', 608, 'プラグインファイル一時保存先');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PLUGIN_EXTENSION', '"tar,tar.gz"', 611, 'プラグインファイル登録可能拡張子(カンマ区切り)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DOWNLOADS_TEMP_PLUGIN_UPDATE_DIR', 'DATA_REALDIR . "downloads/tmp/plugin_update/"', 612, 'プラグイン一時展開用ディレクトリ（アップデート用）');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DOWNLOADS_TEMP_PLUGIN_INSTALL_DIR', 'DATA_REALDIR . "downloads/tmp/plugin_install/"', 613, 'プラグイン一時展開用ディレクトリ（インストール用）');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PLUGIN_HTML_URLPATH', 'ROOT_URLPATH . "plugin/"', 614, 'プラグインURL');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DOWNLOAD_DAYS_LEN', '3', 700, '日数桁数');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DOWNLOAD_EXTENSION', '"zip,lzh,jpg,jpeg,gif,png,mp3,pdf,csv"', 701, 'ダウンロードファイル登録可能拡張子(カンマ区切り)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DOWN_SIZE', '50000', 702, 'ダウンロード販売ファイル用サイズ制限(KB)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DEFAULT_PRODUCT_DOWN', '1', 703, '1:実商品 2:ダウンロード');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DOWN_TEMP_REALDIR', 'DATA_REALDIR . "download/temp/"', 704, 'ダウンロードファイル一時保存');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DOWN_SAVE_REALDIR', 'DATA_REALDIR . "download/save/"', 705, 'ダウンロードファイル保存先');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DOWNLOAD_BLOCK', '1024', 708, 'ダウンロード販売機能 ダウンロードファイル読み込みバイト(KB)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ORDER_NEW', '1', 800, '新規注文');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ORDER_PAY_WAIT', '2', 801, '入金待ち');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ORDER_PRE_END', '6', 802, '入金済み');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ORDER_CANCEL', '3', 803, 'キャンセル');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ORDER_BACK_ORDER', '4', 804, '取り寄せ中');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ORDER_DELIV', '5', 805, '発送済み');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ORDER_PENDING', '7', 806, '決済処理中');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PRODUCT_TYPE_NORMAL', '1', 900, '通常商品');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PRODUCT_TYPE_DOWNLOAD', '2', 901, 'ダウンロード商品');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SQL_QUERY_LOG_MODE', '1', 1000, 'DBログの記録モード (0:記録しない, 1:遅延時のみ記録する, 2:常に記録する)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SQL_QUERY_LOG_MIN_EXEC_TIME', '2', 1001, 'DBログで遅延とみなす実行時間(秒)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PAGE_DISPLAY_TIME_LOG_MODE', '1', 1002, 'ページ表示時間のログを取得するフラグ(1:表示, 0:非表示)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PAGE_DISPLAY_TIME_LOG_MIN_EXEC_TIME', '2', 1003, 'ページ表示時間のログを取得する時間設定(設定値以上かかった場合に取得)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DEVICE_TYPE_MOBILE', '1', 1100, '端末種別: モバイル');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DEVICE_TYPE_SMARTPHONE', '2', 1101, '端末種別: スマートフォン');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DEVICE_TYPE_PC', '10', 1102, '端末種別: PC');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DEVICE_TYPE_ADMIN', '99', 1103, '端末種別: 管理画面');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ECCUBE_INFO', 'true', 1218, 'EC-CUBE更新情報取得 (true:取得する false:取得しない)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('HTTP_REQUEST_TIMEOUT', '"5"', 1219, '外部サイトHTTP取得タイムアウト時間(秒)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('ZIP_DOWNLOAD_URL', '"http://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip"', 1224, '郵便番号CSVのZIPアーカイブファイルの取得元');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('HOOK_POINT_PREPROCESS', '"LC_Page_preProcess"', 1301, 'フックポイント(プレプロセス)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('HOOK_POINT_PROCESS', '"LC_Page_process"', 1302, 'フックポイント(プロセス)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PLUGIN_ACTIVATE_FLAG', 'true', 1303, 'プラグインのロード可否フラグ)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('SMARTY_FORCE_COMPILE_MODE', 'false', 1401, 'SMARTYコンパイルモード');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('LOGIN_RETRY_INTERVAL', '0', 1411, 'ログイン失敗時の遅延時間(秒)(ブルートフォースアタック対策)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('MYPAGE_ORDER_STATUS_DISP_FLAG', 'true', 1412, 'MYページ：ご注文状況表示フラグ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('DEFAULT_COUNTRY_ID', 392, 1413, 'デフォルト国コード ISO_3166-1に準拠');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('USE_NORMALIZE_HOSTNAME', 'true', 1414, 'ホスト名を正規化するか (true:する false:しない)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('FORM_COUNTRY_ENABLE', 'false', 1415, '各種フォームで国の指定を有効にする(true:有効 false:無効)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('OPTION_PRODUCT_TAX_RULE', '0', 1416, '商品ごとの税率設定(軽減税率対応 有効:1 無効:0) ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('TAX_RULE_PRIORITY', '"product_id,product_class_id,pref_id,country_id"', 1417, '複数箇所の税率設定時における優先度設定。カンマ区切りスペース不可で記述。後に書いてあるキーに一致するほど優先される。デフォルト：''product_id,product_class_id,pref_id,country_id''（国＞地域（県）＞規格単位＞商品単位）');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PENDING_ORDER_CANCEL_TIME', '900', 1418, '決済処理中ステータスのロールバックを行う時間の設定(秒) ');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('PENDING_ORDER_CANCEL_FLAG', 'true', 1419, '決済処理中ステータスのロールバックをするか(true:する false:しない)');
INSERT INTO mtb_constants (id, name, rank, remarks) VALUES ('API_ENABLE_FLAG', 'false', 1420, 'API機能を有効にする(true:する false:しない)');
