class AddRoomFurnishingData < ActiveRecord::Migration
  def change
    query = "INSERT INTO `rooms` VALUES (1,'Bdrm',NULL,NULL),
  			(2,'Box and Container',NULL,NULL),
  			(3,'Childs Room',NULL,NULL),
  			(4,'Dining Room',NULL,NULL),
  			(5,'Garage and Shop',NULL,NULL),
  			(6,'Kitchen',NULL,NULL),
  			(7,'Laundry and Cleaning',NULL,NULL),
  			(8,'Living Room',NULL,NULL),
  			(9,'Office',NULL,NULL),
  			(10,'Recreation',NULL,NULL),
  			(11,'Yard and Patio',NULL,NULL);"
    results = ActiveRecord::Base.connection.execute(query)

    query = "INSERT INTO `furnishings` VALUES (1,'Bookshelves',1,NULL,NULL),
			(2,'Chairs',1,NULL,NULL),
			(3,'Desks',1,NULL,NULL),
			(4,'Dressers',1,NULL,NULL),
			(5,'Electronics',1,NULL,NULL),
			(6,'Fancy Beds',1,NULL,NULL),
			(7,'Lamps',1,NULL,NULL),
			(8,'Simple Beds',1,NULL,NULL),
			(9,'Storage',1,NULL,NULL),
			(10,'Wardrobes',1,NULL,NULL),
			(11,'Miscellaneous',2,NULL,NULL),
			(12,'Moving Boxes',2,NULL,NULL),
			(13,'Specialty Boxes',2,NULL,NULL),
			(14,'Childs Bed',3,NULL,NULL),
			(15,'Nursery',3,NULL,NULL),
			(16,'Toys and Games',3,NULL,NULL),
			(17,'Cabinets',4,NULL,NULL),
			(18,'Chairs',4,NULL,NULL),
			(19,'Tables',4,NULL,NULL),
			(20,'Automotive',5,NULL,NULL),
			(21,'Heat and Cool',5,NULL,NULL),
			(22,'Ladders',5,NULL,NULL),
			(23,'Shop Tools',5,NULL,NULL),
			(24,'Tools and Benches',5,NULL,NULL),
			(25,'Cabinets',6,NULL,NULL),
			(26,'Cleaning',6,NULL,NULL),
			(27,'Cooking',6,NULL,NULL),
			(28,'Refridgeration',6,NULL,NULL),
			(29,'Appliances',7,NULL,NULL),
			(30,'Cleaning Supplies',7,NULL,NULL),
			(31,'Carpets',8,NULL,NULL),
			(32,'Chairs',8,NULL,NULL),
			(33,'Couches',8,NULL,NULL),
			(34,'Electronics',8,NULL,NULL),
			(35,'Lamps',8,NULL,NULL),
			(36,'Miscellaneous',8,NULL,NULL),
			(37,'Pianos',8,NULL,NULL),
			(38,'Tables',8,NULL,NULL),
			(39,'Wall Art',8,NULL,NULL),
			(40,'Wall Units and Cabinets',8,NULL,NULL),
			(41,'Bookshelves',9,NULL,NULL),
			(42,'Chairs',9,NULL,NULL),
			(43,'Desks',9,NULL,NULL),
			(44,'Electronics',9,NULL,NULL),
			(45,'Files',9,NULL,NULL),
			(46,'Miscellaneous',9,NULL,NULL),
			(47,'Room Dividers',9,NULL,NULL),
			(48,'Aquariums',10,NULL,NULL),
			(49,'Games Room',10,NULL,NULL),
			(50,'Gym Equipment',10,NULL,NULL),
			(51,'Pet Equipment',10,NULL,NULL),
			(52,'Sewing Machines',10,NULL,NULL),
			(53,'Snow and Winter',10,NULL,NULL),
			(54,'Sports Gear',10,NULL,NULL),
			(55,'Vehicles',10,NULL,NULL),
			(56,'BBQs',11,NULL,NULL),
			(57,'Garden Tools',11,NULL,NULL),
			(58,'Patio Furniture',11,NULL,NULL);"
    results = ActiveRecord::Base.connection.execute(query)

    query="INSERT INTO `cargo_templates` VALUES (1,'Short bookshelf, 2 wide x 4 tall',1,30,8,NULL,NULL),
			(2,'Short bookshelf, 3 wide x 4 tall',1,45,12,NULL,NULL),
			(3,'Tall bookcase, 3 wide x 6 tall',1,65,18,NULL,NULL),
			(4,'Chair, electric recliner',2,120,25,NULL,NULL),
			(5,'Chair, glider',2,100,20,NULL,NULL),
			(6,'Chair, overstuffed',2,100,25,NULL,NULL),
			(7,'Chair, recliner',2,100,20,NULL,NULL),
			(8,'Chair, wingback',2,80,20,NULL,NULL),
			(9,'Foot stool/ottoman',2,20,4,NULL,NULL),
			(10,'Lowback occasional chair',2,60,12,NULL,NULL),
			(11,'Over-stuffed occasional chair',2,90,25,NULL,NULL),
			(12,'Swivel deskchair, medium',2,40,12,NULL,NULL),
			(13,'Swivel deskchair, small',2,25,8,NULL,NULL),
			(14,'Typical occasional chair',2,75,15,NULL,NULL),
			(15,'Wooden rocking chair',2,30,12,NULL,NULL),
			(16,'Wooden/Metal/Plastic chair',2,20,7,NULL,NULL),
			(17,'Executive desk, 6 wide x 3 deep',3,250,45,NULL,NULL),
			(18,'Executive desk, 7 wide x 3 deep',3,275,50,NULL,NULL),
			(19,'Office desk, 5 wide x 2.5 deep',3,200,35,NULL,NULL),
			(20,'Office, 6 wide x 2.5 deep',3,250,45,NULL,NULL),
			(21,'Student desk, 4 wide x 2 deep',3,80,20,NULL,NULL),
			(22,'Clothes hamper',4,40,5,NULL,NULL),
			(23,'Hope chest',4,100,10,NULL,NULL),
			(24,'Large dresser mirror',4,60,5,NULL,NULL),
			(25,'Night stand',4,30,5,NULL,NULL),
			(26,'Short dresser, 3 wide',4,80,12,NULL,NULL),
			(27,'Short dresser, 4 wide',4,140,30,NULL,NULL),
			(28,'Short dresser, 5 wide',4,180,40,NULL,NULL),
			(29,'Short dresser, 6 wide',4,230,50,NULL,NULL),
			(30,'Small dresser mirror',4,40,3,NULL,NULL),
			(31,'Standup mirror',4,60,8,NULL,NULL),
			(32,'Tall dresser, 2.5 wide',4,80,15,NULL,NULL),
			(33,'Tall dresser, 3 wide',4,100,18,NULL,NULL),
			(34,'Tall dresser, 3.5 wide',4,120,20,NULL,NULL),
			(35,'Tall dresser, 4 wide',4,140,30,NULL,NULL),
			(36,'Vanity and mirror, 4 wide',4,120,18,NULL,NULL),
			(37,'Vanity and mirror, 5 wide',4,150,22,NULL,NULL),
			(38,'Vanity Bench',4,30,8,NULL,NULL),
			(39,'20\" TV',5,50,3,NULL,NULL),
			(40,'30\" TV',5,50,3,NULL,NULL),
			(41,'Component (fax, printer,scanner)',5,2,20,NULL,NULL),
			(42,'Components (stereo, vcr, dvd, etc)',5,2,10,NULL,NULL),
			(43,'Computer tower',5,20,3,NULL,NULL),
			(44,'Computer monitor',5,35,4,NULL,NULL),
			(45,'Rear projection TV',5,250,30,NULL,NULL),
			(46,'Stereo speaker 3 tall',5,50,5,NULL,NULL),
			(47,'Stereo speaker, 2 tall',5,30,3,NULL,NULL),
			(48,'Electric adjustable bed, queen',6,400,75,NULL,NULL),
			(49,'Electric adjustable bed, single or twin',6,200,45,NULL,NULL),
			(50,'Hospital bed',6,350,60,NULL,NULL),
			(51,'Queen four-poster or canopy bed',6,350,80,NULL,NULL),
			(52,'Queen sleigh bed',6,350,80,NULL,NULL),
			(53,'Queen waterbed, bag type',6,400,45,NULL,NULL),
			(54,'Queen waterbed, hybrid',6,400,60,NULL,NULL),
			(55,'Floor lamp',7,25,5,NULL,NULL),
			(56,'Hanging lamp',7,15,4,NULL,NULL),
			(57,'Pole lamp',7,20,6,NULL,NULL),
			(58,'Table lamp, small',7,15,4,NULL,NULL),
			(59,'Table lamp, large',7,10,2,NULL,NULL),
			(60,'Chaise Lounge',8,200,30,NULL,NULL),
			(61,'Double bed w/ frame,box,mat',8,250,60,NULL,NULL),
			(62,'Futon and frame',8,150,45,NULL,NULL),
			(63,'Inflatable spare bed w/ stand',8,100,8,NULL,NULL),
			(64,'King bed w/ frame,box,mat',8,400,80,NULL,NULL),
			(65,'Queen bed w/ frame,box,mat ',8,350,70,NULL,NULL),
			(66,'Roll-away folding cot',8,70,15,NULL,NULL),
			(67,'Single bed w/ frame,box,mat',8,150,40,NULL,NULL),
			(68,'Twin daybed',8,170,45,NULL,NULL),
			(69,'Garbage bag',9,25,4,NULL,NULL),
			(70,'Large plastic storage tote',9,5,10,NULL,NULL),
			(71,'Large trunk',9,100,10,NULL,NULL),
			(72,'Medium trunk',9,75,8,NULL,NULL),
			(73,'Milk crate',9,20,1,NULL,NULL),
			(74,'Plastic storage tote',9,3,3,NULL,NULL),
			(75,'Small trunk',9,50,6,NULL,NULL),
			(76,'Suitcase (empty)',9,10,3,NULL,NULL),
			(77,'Armoire, 3 wide',10,200,30,NULL,NULL),
			(78,'Armoire, 4 wide',10,350,50,NULL,NULL),
			(79,'Garbage bag',11,25,4,NULL,NULL),
			(80,'Large plastic storage tote',11,50,10,NULL,NULL),
			(81,'Large trunk',11,100,10,NULL,NULL),
			(82,'Medium plastic storage tote',11,45,8,NULL,NULL),
			(83,'Medium trunk',11,75,8,NULL,NULL),
			(84,'Milk crate',11,20,1,NULL,NULL),
			(85,'Picnic cooler',11,10,5,NULL,NULL),
			(86,'Small plastic storage tote',11,3,3,NULL,NULL),
			(87,'Small trunk',11,50,6,NULL,NULL),
			(88,'Suitcase (empty)',11,10,3,NULL,NULL),
			(89,'Suitcase (full)',11,80,4,NULL,NULL),
			(90,'1.5 cubic foot box',12,30,4,NULL,NULL),
			(91,'2 cubic foot box',12,25,2,NULL,NULL),
			(92,'2 cubic foot box (heavy)',12,50,2,NULL,NULL),
			(93,'3 cubic foot box',12,30,3,NULL,NULL),
			(94,'4 cubic foot box',12,35,4,NULL,NULL),
			(95,'6 cubic foot box',12,45,6,NULL,NULL),
			(96,'6 cubic foot china barrel',12,60,6,NULL,NULL),
			(97,'China',12,70,10,NULL,NULL),
			(98,'File carton',12,30,1.5,NULL,NULL),
			(99,'Lay down clothes storage box',12,20,5,NULL,NULL),
			(100,'Picture box, large',12,40,5,NULL,NULL),
			(101,'Picture box, small',12,25,3,NULL,NULL),
			(102,'Shorty wardrobe box',12,40,10,NULL,NULL),
			(103,'Wardrobe box',12,60,15,NULL,NULL),
			(104,'Bike box',13,35,6,NULL,NULL),
			(105,'Gun box',13,25,3,NULL,NULL),
			(106,'Lamp box',13,10,4,NULL,NULL),
			(107,'Bunk beds',14,200,80,NULL,NULL),
			(108,'Childs captains bed w/drawers',14,150,50,NULL,NULL),
			(109,'Childs chair',14,5,3,NULL,NULL),
			(110,'Childs dresser',14,45,12,NULL,NULL),
			(111,'Toddler bed, matterss and frame',14,60,30,NULL,NULL),
			(112,'Baby carrage',15,25,10,NULL,NULL),
			(113,'Baby change table',15,40,15,NULL,NULL),
			(114,'Baby crib dismantled',15,70,15,NULL,NULL),
			(115,'Bassinette',15,25,8,NULL,NULL),
			(116,'Car seat',15,15,4,NULL,NULL),
			(117,'Playpen',15,30,5,NULL,NULL),
			(118,'Rocking horse',15,35,8,NULL,NULL),
			(119,'Stroller',15,35,5,NULL,NULL),
			(120,'Baby stroller',16,20,5,NULL,NULL),
			(121,'Childs chair',16,5,3,NULL,NULL),
			(122,'Childs pedal car',16,25,8,NULL,NULL),
			(123,'Childs table',16,20,5,NULL,NULL),
			(124,'Childs wagon',16,20,5,NULL,NULL),
			(125,'Toy chest',16,50,6,NULL,NULL),
			(126,'Tricycle',16,20,5,NULL,NULL),
			(127,'4 wide china cabinet with hutch',17,275,45,NULL,NULL),
			(128,'4 wide side board',17,200,30,NULL,NULL),
			(129,'6 wide china cabinet with hutch',17,450,65,NULL,NULL),
			(130,'4 wide side board',17,250,40,NULL,NULL),
			(131,'China cabinet (one pc)',17,300,60,NULL,NULL),
			(132,'Large corner cabinet',17,200,30,NULL,NULL),
			(133,'Small corner cabinet',17,150,15,NULL,NULL),
			(134,'Bar stool',18,15,5,NULL,NULL),
			(135,'Chair w/arms',18,20,8,NULL,NULL),
			(136,'Folding chair',18,10,3,NULL,NULL),
			(137,'Highchair',18,30,10,NULL,NULL),
			(138,'Large padded chair',18,35,10,NULL,NULL),
			(139,'Swivel chair',18,30,8,NULL,NULL),
			(140,'Typical chair',18,15,5,NULL,NULL),
			(141,'2 person table',19,40,12,NULL,NULL),
			(142,'4 person table',19,60,25,NULL,NULL),
			(143,'4 person table (legs removed)',19,60,10,NULL,NULL),
			(144,'6 person table',19,100,35,NULL,NULL),
			(145,'6 person table (legs removed)',19,100,12,NULL,NULL),
			(146,'8 person table',19,140,45,NULL,NULL),
			(147,'8 person table (legs removed)',19,140,15,NULL,NULL),
			(148,'Bakers rack',19,50,35,NULL,NULL),
			(149,'Butler table, 4 long',19,50,15,NULL,NULL),
			(150,'Drop-leaf table',19,60,12,NULL,NULL),
			(151,'Folding card table',19,15,4,NULL,NULL),
			(152,'Folding table, 5 long',19,40,6,NULL,NULL),
			(153,'Portable bar',19,100,20,NULL,NULL),
			(154,'Table w/ extension',19,200,30,NULL,NULL),
			(155,'Tea cart',19,25,12,NULL,NULL),
			(156,'Engine hoist',20,150,45,NULL,NULL),
			(157,'Engine stand',20,65,15,NULL,NULL),
			(158,'Floor jack',20,60,3,NULL,NULL),
			(159,'Jack stands (2)',20,10,2,NULL,NULL),
			(160,'Spare tire',20,40,5,NULL,NULL),
			(161,'Air conditioner',21,50,15,NULL,NULL),
			(162,'Dehumidifier',21,0,10,NULL,NULL),
			(163,'Electric space heater',21,20,3,NULL,NULL),
			(164,'Gas/wood stove',21,200,25,NULL,NULL),
			(165,'Humidifier',21,40,10,NULL,NULL),
			(166,'Large air conditioner',21,80,30,NULL,NULL),
			(167,'Oil space heater',21,75,4,NULL,NULL),
			(168,'Pole fan',21,25,5,NULL,NULL),
			(169,'Window fan',21,0,10,NULL,NULL),
			(170,'Step ladder, 3 tall',22,10,4,NULL,NULL),
			(171,'Step ladderm 6 tall',22,20,8,NULL,NULL),
			(172,'Utility ladder, 12 tall',22,35,10,NULL,NULL),
			(173,'Utility ladder, 16 tall',22,45,15,NULL,NULL),
			(174,'Utility ladder, 20 tall',22,0,10,NULL,NULL),
			(175,'Drill press (bench model)',23,50,3,NULL,NULL),
			(176,'Drill press (floor model)',23,150,15,NULL,NULL),
			(177,'Portable cement mixer',23,100,15,NULL,NULL),
			(178,'Portabe planer',23,80,3,NULL,NULL),
			(179,'Radial-arm saw (bench model)',23,60,6,NULL,NULL),
			(180,'Radial-arm saw (floor model)',23,120,20,NULL,NULL),
			(181,'Small air compressor',23,75,6,NULL,NULL),
			(182,'Small arc welder',23,75,4,NULL,NULL),
			(183,'Small pressure washer',23,35,4,NULL,NULL),
			(184,'Table saw (bench model)',23,20,4,NULL,NULL),
			(185,'Table saw (floor model)',23,80,15,NULL,NULL),
			(186,'Wood lathe (bench model)',23,50,6,NULL,NULL),
			(187,'Wood lathe (floor model)',23,50,3,NULL,NULL),
			(188,'Large toolchest',24,150,5,NULL,NULL),
			(189,'Large wheeled toolchest',24,350,15,NULL,NULL),
			(190,'Metal shelving',24,100,20,NULL,NULL),
			(191,'Metal shelving sisassembled',24,100,8,NULL,NULL),
			(192,'Metal storage cabinet, 3 wide',24,100,25,NULL,NULL),
			(193,'Saw horse',24,15,5,NULL,NULL),
			(194,'Wet/dry shopvac',24,30,4,NULL,NULL),
			(195,'Workbench, 4 long',24,100,30,NULL,NULL),
			(196,'Workbench, 6 long',24,130,45,NULL,NULL),
			(197,'Base cabinet 3x2x2',25,100,12,NULL,NULL),
			(198,'Pantry 2.5x2x7',25,245,35,NULL,NULL),
			(199,'Utility cabinet (metal)',25,70,10,NULL,NULL),
			(200,'Dishwasher',26,120,20,NULL,NULL),
			(201,'Small kitchen trash can',26,15,2,NULL,NULL),
			(202,'Trash compactor',26,150,8,NULL,NULL),
			(203,'Convection oven',27,40,2,NULL,NULL),
			(204,'Large microwave',27,60,4,NULL,NULL),
			(205,'Large stove',27,20,30,NULL,NULL),
			(206,'Microwave stand',27,50,10,NULL,NULL),
			(207,'Small microwave',27,40,2,NULL,NULL),
			(208,'Typical stove',27,40,2,NULL,NULL),
			(209,'Apartment firdge, 24\" wide',28,180,30,NULL,NULL),
			(210,'Bar fridge (small)',28,80,10,NULL,NULL),
			(211,'Bottled water cooler',28,25,4,NULL,NULL),
			(212,'Chest freezer (10 cu.ft. or less)',28,150,30,NULL,NULL),
			(213,'Chest freezer (11-15 cu.ft.)',28,175,45,NULL,NULL),
			(214,'Chest freezer (16 cu.ft.+)',28,200,60,NULL,NULL),
			(215,'Commercial side by side 4 wide',28,400,75,NULL,NULL),
			(216,'Standard fridge, 30\" wide',28,250,45,NULL,NULL),
			(217,'Standard side by side firdge, 36\" wide\"',28,350,60,NULL,NULL),
			(218,'Upright freezer, 30\" wide',28,250,45,NULL,NULL),
			(219,'Apartment size dryer',29,100,15,NULL,NULL),
			(220,'Apartment size washer',29,100,15,NULL,NULL),
			(221,'Carpet steam cleaner',29,35,5,NULL,NULL),
			(222,'Clothes dryer (gas or elec.)',29,130,25,NULL,NULL),
			(223,'Floor polisher',29,30,5,NULL,NULL),
			(224,'Household vacuum',29,25,5,NULL,NULL),
			(225,'Stacking washer/dryer',29,250,32,NULL,NULL),
			(226,'Washing machine',29,180,25,NULL,NULL),
			(227,'Wet/dry shopvac',29,25,5,NULL,NULL),
			(228,'Buckets',30,1,2,NULL,NULL),
			(229,'Bundle of mops, brooms, etc.',30,25,5,NULL,NULL),
			(230,'Ironing board',30,0,0,NULL,NULL),
			(231,'Large carpet, 9x12 with underlay',31,160,20,NULL,NULL),
			(232,'Medium carpet, 9x6 with underlay',31,80,10,NULL,NULL),
			(233,'Small carpet, 6x6 with underlay',31,50,8,NULL,NULL),
			(234,'Chair, electric recliner',32,120,25,NULL,NULL),
			(235,'Chair, glider',32,100,20,NULL,NULL),
			(236,'Chair, over-stuffed',32,100,25,NULL,NULL),
			(237,'Chair, recliner',32,100,20,NULL,NULL),
			(238,'Chair, wingback',32,80,20,NULL,NULL),
			(239,'Foot stool/ottoman',32,20,4,NULL,NULL),
			(240,'Lowback occasional chair',32,60,12,NULL,NULL),
			(241,'Over-stuffed occasional chair',32,90,25,NULL,NULL),
			(242,'Typical occasional chair',32,75,15,NULL,NULL),
			(243,'Wooden rocking chair',32,30,12,NULL,NULL),
			(244,'Wooden/Metal/Plastic chair',32,20,7,NULL,NULL),
			(245,'2 seater hide-a-bed',33,200,35,NULL,NULL),
			(246,'3 seater hide-a-bed',33,350,50,NULL,NULL),
			(247,'Chaise lounge',33,200,30,NULL,NULL),
			(248,'Couch, 2 seater',33,140,35,NULL,NULL),
			(249,'Couch, 3 seater',33,350,50,NULL,NULL),
			(250,'Couch, sectional',33,300,75,NULL,NULL),
			(251,'Extra large 8 couch',33,200,35,NULL,NULL),
			(252,'20\" TV',34,50,4,NULL,NULL),
			(253,'30\" TV',34,80,10,NULL,NULL),
			(254,'CD tower',34,35,5,NULL,NULL),
			(255,'Components (stereo,vcr,dvd,etc.)',34,10,2,NULL,NULL),
			(256,'Flatscreen in a box',34,80,6,NULL,NULL),
			(257,'Mini stereo',34,45,5,NULL,NULL),
			(258,'Rear projection TV',34,250,30,NULL,NULL),
			(259,'Rear projection TV 50\"',34,320,45,NULL,NULL),
			(260,'Rear projection TV 60\"',34,400,55,NULL,NULL),
			(261,'Stereo speaker, 2 tall',34,30,3,NULL,NULL),
			(262,'Stereo speaker, 3 tall',34,50,5,NULL,NULL),
			(263,'Floor lamp',35,25,5,NULL,NULL),
			(264,'Hanging lamp',35,15,4,NULL,NULL),
			(265,'Pole lamp',35,20,6,NULL,NULL),
			(266,'Table lamp, large',35,15,4,NULL,NULL),
			(267,'Table lamp, small',35,10,2,NULL,NULL),
			(268,'Coat and hat rack',36,20,5,NULL,NULL),
			(269,'Fireplace tools',36,40,4,NULL,NULL),
			(270,'Granfather clock',36,160,20,NULL,NULL),
			(271,'Magazine rack',36,10,3,NULL,NULL),
			(272,'3/4 size upright piano',37,500,40,NULL,NULL),
			(273,'Apartment-size upright piano',37,400,60,NULL,NULL),
			(274,'Baby grand piano',37,600,70,NULL,NULL),
			(275,'Concert grand piano',37,0,0,NULL,NULL),
			(276,'Full-size upright piano',37,600,70,NULL,NULL),
			(277,'Organ',37,250,40,NULL,NULL),
			(278,'Piano bench',37,30,10,NULL,NULL),
			(279,'Player piano',37,800,50,NULL,NULL),
			(280,'Upright grand piano',37,800,80,NULL,NULL),
			(281,'Coffee table, 3 long',38,25,10,NULL,NULL),
			(282,'Coffee table, 4 long',38,35,12,NULL,NULL),
			(283,'Coffee table, 5 long',38,50,15,NULL,NULL),
			(284,'Couch table',38,40,12,NULL,NULL),
			(285,'End table',38,30,5,NULL,NULL),
			(286,'End table, large',38,50,8,NULL,NULL),
			(287,'Nesting tables (4)',38,30,15,NULL,NULL),
			(288,'Telephone table',38,30,5,NULL,NULL),
			(289,'Wooden TV trays (4)',38,50,10,NULL,NULL),
			(290,'Picture 2x3',39,15,3,NULL,NULL),
			(291,'Picture 3x4',39,30,6,NULL,NULL),
			(292,'2 piece wall unit, 6x6',40,250,70,NULL,NULL),
			(293,'Console',40,140,20,NULL,NULL),
			(294,'Entertainment unit, 5 tall x5 wide',40,200,40,NULL,NULL),
			(295,'Stereo cabinet, 2 wide x 4 tall',40,60,12,NULL,NULL),
			(296,'TV stand',40,70,8,NULL,NULL),
			(297,'Wall unit, 6 tall x 3 wide',40,140,20,NULL,NULL),
			(298,'Short bookself, 2 wide x 4 tall',41,30,8,NULL,NULL),
			(299,'Short bookself, 3 wide x 4 tall',41,45,12,NULL,NULL),
			(300,'Tall bookcase, 3 wide x 6 tall',41,140,20,NULL,NULL),
			(301,'Stackable chairs',42,10,2,NULL,NULL),
			(302,'Swivel deskchair, large',42,50,16,NULL,NULL),
			(303,'Swivel deskchair, medium',42,40,12,NULL,NULL),
			(304,'Swivel deskchair, small',42,25,8,NULL,NULL),
			(305,'Typical chair',42,20,10,NULL,NULL),
			(306,'Desk extension',43,80,12,NULL,NULL),
			(307,'Draftin board',43,120,20,NULL,NULL),
			(308,'Executive desk, 6 wide x 3 deep',43,250,45,NULL,NULL),
			(309,'Executive desk, 7 wide x 3 deep',43,275,50,NULL,NULL),
			(310,'Office desk, 5 wide x 2.5 deep',43,200,35,NULL,NULL),
			(311,'Office desk, 6 wide x 2.5 deep',43,225,40,NULL,NULL),
			(312,'Student desk 4 wide x 2 deep',43,150,22,NULL,NULL),
			(313,'Component (fax,printer,scanner)',44,20,2,NULL,NULL),
			(314,'Computer tower',44,20,3,NULL,NULL),
			(315,'Computer monitor',44,35,4,NULL,NULL),
			(316,'2 drawer lateral file cabinet 3 wide',45,80,12,NULL,NULL),
			(317,'2 drawer lateral file cabinet 4 wide',45,100,16,NULL,NULL),
			(318,'2 drawer vertical file cabinet 3 wide',45,70,10,NULL,NULL),
			(319,'3 drawer lateral file cabinet 3 wide',45,120,18,NULL,NULL),
			(320,'3 drawer lateral file cabinet 4 wide',45,150,24,NULL,NULL),
			(321,'4 drawer lateral file cabinet 3 wide',45,160,24,NULL,NULL),
			(322,'4 drawer lateral file cabinet 4 wide',45,200,32,NULL,NULL),
			(323,'4 drawer vertical file cabinet 3 wide',45,140,20,NULL,NULL),
			(324,'Credenza, 4 wide',46,100,18,NULL,NULL),
			(325,'Credenza, 5 wide',46,120,24,NULL,NULL),
			(326,'Credenza, 6 wide',46,140,32,NULL,NULL),
			(327,'Partition, 5 wide',47,75,12,NULL,NULL),
			(328,'10 gallon aquarium',48,20,2,NULL,NULL),
			(329,'25 gallon aquarium',48,75,5,NULL,NULL),
			(330,'50 gallon aquarium',48,150,10,NULL,NULL),
			(331,'4x8 pool table',49,250,35,NULL,NULL),
			(332,'4x8 pool table (Slate)',49,600,35,NULL,NULL),
			(333,'Air hockey table',49,60,12,NULL,NULL),
			(334,'Arcade game (Coctail Table)',49,225,25,NULL,NULL),
			(335,'Arcade game (Full-size)',49,300,50,NULL,NULL),
			(336,'Folding ping-pong table',49,200,50,NULL,NULL),
			(337,'Juke box',49,350,30,NULL,NULL),
			(338,'Pinball machine',49,350,35,NULL,NULL),
			(339,'Table soccer',49,100,12,NULL,NULL),
			(340,'Bowflex',50,150,30,NULL,NULL),
			(341,'Rowing machine',50,100,8,NULL,NULL),
			(342,'Stair climber',50,200,25,NULL,NULL),
			(343,'Stationary bike',50,75,15,NULL,NULL),
			(344,'Treadmill',50,150,8,NULL,NULL),
			(345,'Weight bench',50,50,20,NULL,NULL),
			(346,'Weight set (120 pound)',50,120,5,NULL,NULL),
			(347,'Weight set (240 pound)',50,240,5,NULL,NULL),
			(348,'Bird cage and stand',51,35,5,NULL,NULL),
			(349,'Cat tree',51,20,10,NULL,NULL),
			(350,'Dog house',51,60,15,NULL,NULL),
			(351,'Large portable kennel',51,40,10,NULL,NULL),
			(352,'Medium portable kennel',51,20,4,NULL,NULL),
			(353,'Small portable kennel',51,10,2,NULL,NULL),
			(354,'Cabinet sewing machine',52,100,15,NULL,NULL),
			(355,'Portable sewing machine',52,25,2,NULL,NULL),
			(356,'16 canoe',53,120,60,NULL,NULL),
			(357,'16 kyak',53,50,40,NULL,NULL),
			(358,'6 rowboat',53,100,20,NULL,NULL),
			(359,'Ski(s) or board',53,25,3,NULL,NULL),
			(360,'Small outboard engine',53,80,4,NULL,NULL),
			(361,'Toboggan or sled',53,15,3,NULL,NULL),
			(362,'Wind surfer',53,60,15,NULL,NULL),
			(363,'Bicycle (Adult)',54,40,10,NULL,NULL),
			(364,'Bicycle (Child)',54,30,8,NULL,NULL),
			(365,'Golf bag w/cart',54,35,6,NULL,NULL),
			(366,'Hockey net',54,25,15,NULL,NULL),
			(367,'Trampoline',54,200,20,NULL,NULL),
			(368,'Jet ski',55,250,20,NULL,NULL),
			(369,'Off-road motorcycle',55,300,20,NULL,NULL),
			(370,'Snowmobile',55,500,30,NULL,NULL),
			(371,'Large BBQ',56,200,20,NULL,NULL),
			(372,'Medium BBQ',56,150,15,NULL,NULL),
			(373,'Small BBQ',56,120,10,NULL,NULL),
			(374,'Bundle of rakes and shovels',57,40,10,NULL,NULL),
			(375,'Hand mower',57,30,5,NULL,NULL),
			(376,'Hose and reel',57,40,10,NULL,NULL),
			(377,'Lawnmower',57,90,15,NULL,NULL),
			(378,'Lawnmower, riding',57,250,30,NULL,NULL),
			(379,'Leaf blower',57,20,2,NULL,NULL),
			(380,'Rototiller',57,100,10,NULL,NULL),
			(381,'Snow blower',57,80,10,NULL,NULL),
			(382,'Spreader',57,15,4,NULL,NULL),
			(383,'Weed eater',57,15,2,NULL,NULL),
			(384,'Wheel barrow',57,40,15,NULL,NULL),
			(385,'2 seat glider',58,120,30,NULL,NULL),
			(386,'Bench',58,35,5,NULL,NULL),
			(387,'Bird bath',58,25,5,NULL,NULL),
			(388,'Floating chairs (set of 4)',58,20,6,NULL,NULL),
			(389,'Outdoor childs slide',58,50,10,NULL,NULL),
			(390,'Outdoor childs swing set',58,150,30,NULL,NULL),
			(391,'Patio chair',58,15,8,NULL,NULL),
			(392,'Patio lounger',58,20,12,NULL,NULL),
			(393,'Patio swing',58,120,30,NULL,NULL),
			(394,'Patio table (legs off)',58,20,6,NULL,NULL),
			(395,'Patio table (legs on)',58,50,30,NULL,NULL),
			(396,'Picnic table',58,120,40,NULL,NULL),
			(397,'Porch chair',58,40,10,NULL,NULL),
			(398,'Sandbox',58,30,10,NULL,NULL),
			(399,'Settee',58,75,20,NULL,NULL),
			(400,'Stacking chairs (4)',58,40,15,NULL,NULL),
			(401,'Umbrella',58,20,5,NULL,NULL);"
    results = ActiveRecord::Base.connection.execute(query)
  end
end
