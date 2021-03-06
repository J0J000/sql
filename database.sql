USE [mydb]
GO
/****** Object:  Table [dbo].[DEP]    Script Date: 05/18/2018 14:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DEP](
	[DEPID] [char](8) NOT NULL,
	[DEPNAME] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DEPID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DEP] ([DEPID], [DEPNAME]) VALUES (N'601     ', N'计算机科学与工程    ')
INSERT [dbo].[DEP] ([DEPID], [DEPNAME]) VALUES (N'602     ', N'软件工程            ')
INSERT [dbo].[DEP] ([DEPID], [DEPNAME]) VALUES (N'603     ', N'信息安全            ')
/****** Object:  Table [dbo].[COURSE]    Script Date: 05/18/2018 14:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COURSE](
	[CID] [varchar](8) NOT NULL,
	[CNAME] [varchar](20) NOT NULL,
	[CREDITS] [numeric](3, 1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[COURSE] ([CID], [CNAME], [CREDITS]) VALUES (N'6001', N'计算机组成原理', CAST(3.0 AS Numeric(3, 1)))
INSERT [dbo].[COURSE] ([CID], [CNAME], [CREDITS]) VALUES (N'6002', N'操作系统', CAST(3.0 AS Numeric(3, 1)))
INSERT [dbo].[COURSE] ([CID], [CNAME], [CREDITS]) VALUES (N'6003', N'数据结构', CAST(3.0 AS Numeric(3, 1)))
INSERT [dbo].[COURSE] ([CID], [CNAME], [CREDITS]) VALUES (N'6004', N'数据库原理', CAST(3.0 AS Numeric(3, 1)))
INSERT [dbo].[COURSE] ([CID], [CNAME], [CREDITS]) VALUES (N'6005', N'Computer Network', CAST(2.0 AS Numeric(3, 1)))
INSERT [dbo].[COURSE] ([CID], [CNAME], [CREDITS]) VALUES (N'6006', N'Objected JAVA', CAST(2.0 AS Numeric(3, 1)))
INSERT [dbo].[COURSE] ([CID], [CNAME], [CREDITS]) VALUES (N'6007', N'Software Engeneering', CAST(2.0 AS Numeric(3, 1)))
INSERT [dbo].[COURSE] ([CID], [CNAME], [CREDITS]) VALUES (N'6008', N'UNIX Basic', CAST(2.0 AS Numeric(3, 1)))
INSERT [dbo].[COURSE] ([CID], [CNAME], [CREDITS]) VALUES (N'6009', N'UNIX OS Design', CAST(2.0 AS Numeric(3, 1)))
INSERT [dbo].[COURSE] ([CID], [CNAME], [CREDITS]) VALUES (N'6011', N'数据库应用开发', CAST(2.0 AS Numeric(3, 1)))
/****** Object:  Table [dbo].[TEACHER]    Script Date: 05/18/2018 14:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEACHER](
	[TID] [varchar](8) NOT NULL,
	[TNAME] [varchar](20) NOT NULL,
	[TITLE] [varchar](8) NOT NULL,
	[DEPID] [char](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[TID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TEACHER] ([TID], [TNAME], [TITLE], [DEPID]) VALUES (N'T01', N'教师1', N'教授', N'601     ')
INSERT [dbo].[TEACHER] ([TID], [TNAME], [TITLE], [DEPID]) VALUES (N'T02', N'教师2', N'工程师', N'601     ')
INSERT [dbo].[TEACHER] ([TID], [TNAME], [TITLE], [DEPID]) VALUES (N'T03', N'教师3', N'副教授', N'602     ')
INSERT [dbo].[TEACHER] ([TID], [TNAME], [TITLE], [DEPID]) VALUES (N'T04', N'教师4', N'讲师', N'602     ')
INSERT [dbo].[TEACHER] ([TID], [TNAME], [TITLE], [DEPID]) VALUES (N'T05', N'教师5', N'高工', N'603     ')
INSERT [dbo].[TEACHER] ([TID], [TNAME], [TITLE], [DEPID]) VALUES (N'T06', N'教师6', N'高工', N'603     ')
/****** Object:  Table [dbo].[STUD]    Script Date: 05/18/2018 14:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STUD](
	[StudID] [varchar](13) NOT NULL,
	[DEPID] [char](8) NOT NULL,
	[SNAME] [varchar](8) NOT NULL,
	[sex] [char](2) NOT NULL,
	[BIRTHD] [date] NOT NULL,
	[EMAIL] [varchar](40) NULL,
	[HOMEADDR] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[StudID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'00', N'601     ', N'Bill', N'男', CAST(0x12130B00 AS Date), N'bill@ms.net', N'')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'101', N'601     ', N'陈刚', N'男', CAST(0xF71D0B00 AS Date), N's101@stu.net', N'1栋25号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'102', N'601     ', N'陈国梁', N'男', CAST(0x0B150B00 AS Date), N's102@stu.net', N'1栋25号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'103', N'601     ', N'陈海霞', N'女', CAST(0xC01B0B00 AS Date), N's103@stu.net', N'3栋1号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'104', N'601     ', N'陈敏', N'男', CAST(0xD4120B00 AS Date), N's104@stu.net', N'1栋26号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'105', N'601     ', N'楚刚', N'男', CAST(0x8A190B00 AS Date), N's105@stu.net', N'1栋26号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'106', N'601     ', N'楚国梁', N'男', CAST(0x3F200B00 AS Date), N's106@stu.net', N'1栋26号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'107', N'601     ', N'楚海霞', N'女', CAST(0x53170B00 AS Date), N's107@stu.net', N'3栋1号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'108', N'601     ', N'楚敏', N'男', CAST(0x091E0B00 AS Date), N's108@stu.net', N'1栋27号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'109', N'601     ', N'冯刚', N'男', CAST(0x1D150B00 AS Date), N's109@stu.net', N'1栋27号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'110', N'601     ', N'冯国梁', N'男', CAST(0xD21B0B00 AS Date), N's110@stu.net', N'1栋27号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'111', N'601     ', N'冯海霞', N'女', CAST(0xE6120B00 AS Date), N's111@stu.net', N'3栋2号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'112', N'601     ', N'冯敏', N'男', CAST(0x9C190B00 AS Date), N's112@stu.net', N'1栋28号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'113', N'601     ', N'韩刚', N'男', CAST(0x51200B00 AS Date), N's113@stu.net', N'1栋28号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'114', N'601     ', N'韩国梁', N'男', CAST(0x65170B00 AS Date), N's114@stu.net', N'1栋28号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'115', N'601     ', N'韩海霞', N'女', CAST(0x1B1E0B00 AS Date), N's115@stu.net', N'3栋2号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'116', N'601     ', N'韩敏', N'男', CAST(0x2F150B00 AS Date), N's116@stu.net', N'1栋29号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'117', N'601     ', N'蒋刚', N'男', CAST(0xE41B0B00 AS Date), N's117@stu.net', N'1栋29号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'118', N'601     ', N'蒋国梁', N'男', CAST(0xF8120B00 AS Date), N's118@stu.net', N'1栋29号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'119', N'601     ', N'蒋海霞', N'女', CAST(0xAE190B00 AS Date), N's119@stu.net', N'3栋3号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'120', N'601     ', N'蒋敏', N'男', CAST(0x63200B00 AS Date), N's120@stu.net', N'1栋30号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'121', N'602     ', N'李刚', N'男', CAST(0x77170B00 AS Date), N's121@stu.net', N'1栋30号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'122', N'602     ', N'李国梁', N'男', CAST(0x2D1E0B00 AS Date), N's122@stu.net', N'1栋30号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'123', N'602     ', N'李海霞', N'女', CAST(0x41150B00 AS Date), N's123@stu.net', N'3栋3号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'124', N'602     ', N'李敏', N'男', CAST(0xF61B0B00 AS Date), N's124@stu.net', N'1栋31号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'125', N'601     ', N'钱刚', N'男', CAST(0x0B130B00 AS Date), N's125@stu.net', N'1栋31号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'126', N'601     ', N'钱国梁', N'男', CAST(0xC0190B00 AS Date), N's126@stu.net', N'1栋31号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'127', N'601     ', N'钱海霞', N'女', CAST(0x75200B00 AS Date), N's127@stu.net', N'3栋4号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'128', N'601     ', N'钱敏', N'男', CAST(0x89170B00 AS Date), N's128@stu.net', N'1栋32号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'129', N'601     ', N'沈刚', N'男', CAST(0x3F1E0B00 AS Date), N's129@stu.net', N'1栋32号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'130', N'601     ', N'沈国梁', N'男', CAST(0x53150B00 AS Date), N's130@stu.net', N'1栋32号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'131', N'601     ', N'沈海霞', N'女', CAST(0x081C0B00 AS Date), N's131@stu.net', N'3栋4号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'132', N'601     ', N'沈敏', N'男', CAST(0x1D130B00 AS Date), N's132@stu.net', N'1栋33号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'133', N'601     ', N'孙刚', N'男', CAST(0xD2190B00 AS Date), N's133@stu.net', N'1栋33号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'134', N'601     ', N'孙国梁', N'男', CAST(0x87200B00 AS Date), N's134@stu.net', N'1栋33号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'135', N'601     ', N'孙海霞', N'女', CAST(0x9B170B00 AS Date), N's135@stu.net', N'3栋5号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'136', N'601     ', N'孙敏', N'男', CAST(0x511E0B00 AS Date), N's136@stu.net', N'1栋34号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'137', N'602     ', N'王刚', N'男', CAST(0x65150B00 AS Date), N's137@stu.net', N'1栋34号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'138', N'602     ', N'王国梁', N'男', CAST(0x1A1C0B00 AS Date), N's138@stu.net', N'1栋34号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'139', N'602     ', N'王海霞', N'女', CAST(0x2F130B00 AS Date), N's139@stu.net', N'3栋5号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'140', N'602     ', N'王敏', N'男', CAST(0xE4190B00 AS Date), N's140@stu.net', N'1栋35号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'141', N'601     ', N'魏刚', N'男', CAST(0x99200B00 AS Date), N's141@stu.net', N'1栋35号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'142', N'601     ', N'魏国梁', N'男', CAST(0xAD170B00 AS Date), N's142@stu.net', N'1栋35号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'143', N'601     ', N'魏海霞', N'女', CAST(0x631E0B00 AS Date), N's143@stu.net', N'3栋6号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'144', N'601     ', N'魏敏', N'男', CAST(0x77150B00 AS Date), N's144@stu.net', N'1栋36号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'145', N'602     ', N'吴刚', N'男', CAST(0x2C1C0B00 AS Date), N's145@stu.net', N'1栋36号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'146', N'602     ', N'吴国梁', N'男', CAST(0x41130B00 AS Date), N's146@stu.net', N'1栋36号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'147', N'602     ', N'吴海霞', N'女', CAST(0xF6190B00 AS Date), N's147@stu.net', N'3栋6号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'148', N'602     ', N'吴敏', N'男', CAST(0xAB200B00 AS Date), N's148@stu.net', N'1栋37号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'149', N'601     ', N'杨刚', N'男', CAST(0xBF170B00 AS Date), N's149@stu.net', N'1栋37号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'150', N'601     ', N'杨国梁', N'男', CAST(0x751E0B00 AS Date), N's150@stu.net', N'1栋37号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'151', N'601     ', N'杨海霞', N'女', CAST(0x89150B00 AS Date), N's151@stu.net', N'3栋7号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'152', N'601     ', N'杨敏', N'男', CAST(0x3E1C0B00 AS Date), N's152@stu.net', N'1栋38号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'153', N'601     ', N'赵刚', N'男', CAST(0x53130B00 AS Date), N's153@stu.net', N'1栋38号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'154', N'601     ', N'赵国梁', N'男', CAST(0x081A0B00 AS Date), N's154@stu.net', N'1栋38号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'155', N'601     ', N'赵海霞', N'女', CAST(0xBD200B00 AS Date), N's155@stu.net', N'3栋7号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'156', N'601     ', N'赵敏', N'男', CAST(0xD1170B00 AS Date), N's156@stu.net', N'1栋39号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'157', N'602     ', N'郑刚', N'男', CAST(0x871E0B00 AS Date), N's157@stu.net', N'1栋39号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'158', N'602     ', N'郑国梁', N'男', CAST(0x9B150B00 AS Date), N's158@stu.net', N'1栋39号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'159', N'602     ', N'郑海霞', N'女', CAST(0x501C0B00 AS Date), N's159@stu.net', N'3栋8号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'160', N'602     ', N'郑敏', N'男', CAST(0x65130B00 AS Date), N's160@stu.net', N'1栋40号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'161', N'602     ', N'周刚', N'男', CAST(0x1A1A0B00 AS Date), N's161@stu.net', N'1栋40号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'162', N'602     ', N'周国梁', N'男', CAST(0x2E110B00 AS Date), N's162@stu.net', N'1栋40号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'163', N'602     ', N'周海霞', N'女', CAST(0xE3170B00 AS Date), N's163@stu.net', N'3栋8号')
INSERT [dbo].[STUD] ([StudID], [DEPID], [SNAME], [sex], [BIRTHD], [EMAIL], [HOMEADDR]) VALUES (N'164', N'602     ', N'周敏', N'男', CAST(0x991E0B00 AS Date), N's164@stu.net', N'1栋41号')
/****** Object:  Table [dbo].[SC]    Script Date: 05/18/2018 14:02:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SC](
	[StudID] [varchar](13) NOT NULL,
	[CID] [varchar](8) NOT NULL,
	[TID] [varchar](8) NOT NULL,
	[SCORE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudID] ASC,
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'101', N'6001', N'T01', 94)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'101', N'6002', N'T06', 89)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'101', N'6003', N'T04', 84)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'101', N'6004', N'T02', 79)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'101', N'6011', N'T01', 97)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'102', N'6001', N'T01', 53)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'102', N'6002', N'T06', 49)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'102', N'6003', N'T04', 98)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'102', N'6004', N'T02', 94)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'102', N'6011', N'T01', 66)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'103', N'6001', N'T01', 65)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'103', N'6002', N'T06', 62)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'103', N'6003', N'T04', 59)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'103', N'6004', N'T02', 56)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'103', N'6011', N'T01', 88)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'104', N'6001', N'T01', 77)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'104', N'6002', N'T06', 75)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'104', N'6003', N'T04', 73)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'104', N'6004', N'T02', 71)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'104', N'6011', N'T01', 57)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'105', N'6001', N'T01', 89)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'105', N'6002', N'T06', 88)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'105', N'6003', N'T04', 87)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'105', N'6004', N'T02', 86)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'105', N'6011', N'T01', 79)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'106', N'6001', N'T01', 48)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'106', N'6002', N'T06', 48)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'106', N'6003', N'T04', 48)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'106', N'6004', N'T02', 48)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'106', N'6011', N'T01', 48)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'107', N'6001', N'T01', 60)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'107', N'6002', N'T06', 61)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'107', N'6003', N'T04', 62)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'107', N'6004', N'T02', 63)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'107', N'6011', N'T01', 70)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'108', N'6001', N'T01', 72)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'108', N'6002', N'T06', 74)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'108', N'6003', N'T04', 76)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'108', N'6004', N'T02', 78)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'108', N'6011', N'T01', 92)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'109', N'6001', N'T01', 84)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'109', N'6002', N'T06', 87)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'109', N'6003', N'T04', 90)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'109', N'6004', N'T02', 93)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'109', N'6011', N'T01', 61)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'110', N'6001', N'T01', 96)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'110', N'6002', N'T06', 100)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'110', N'6003', N'T04', 51)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'110', N'6004', N'T02', 55)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'110', N'6011', N'T01', 83)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'111', N'6001', N'T01', 55)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'111', N'6002', N'T06', 60)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'111', N'6003', N'T04', 65)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'111', N'6004', N'T02', 70)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'111', N'6011', N'T01', 52)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'112', N'6001', N'T01', 67)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'112', N'6002', N'T06', 73)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'112', N'6003', N'T04', 79)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'112', N'6004', N'T02', 85)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'112', N'6011', N'T01', 74)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'113', N'6001', N'T01', 79)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'113', N'6002', N'T06', 86)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'113', N'6003', N'T04', 93)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'113', N'6004', N'T02', 100)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'113', N'6011', N'T01', 96)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'114', N'6001', N'T01', 91)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'114', N'6002', N'T06', 99)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'114', N'6003', N'T04', 54)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'114', N'6004', N'T02', 62)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'114', N'6011', N'T01', 65)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'115', N'6001', N'T01', 50)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'115', N'6002', N'T06', 59)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'115', N'6003', N'T04', 68)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'115', N'6004', N'T02', 77)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'115', N'6011', N'T01', 87)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'116', N'6001', N'T01', 62)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'116', N'6002', N'T06', 72)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'116', N'6003', N'T04', 82)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'116', N'6004', N'T02', 92)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'116', N'6011', N'T01', 56)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'117', N'6001', N'T01', 74)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'117', N'6002', N'T06', 85)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'117', N'6003', N'T04', 96)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'117', N'6004', N'T02', 54)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'117', N'6011', N'T01', 78)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'118', N'6001', N'T01', 86)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'118', N'6002', N'T06', 98)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'118', N'6003', N'T04', 57)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'118', N'6004', N'T02', 69)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'118', N'6011', N'T01', 100)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'119', N'6001', N'T01', 98)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'119', N'6002', N'T06', 58)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'119', N'6003', N'T04', 71)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'119', N'6004', N'T02', 84)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'119', N'6011', N'T01', 69)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'120', N'6001', N'T01', 57)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'120', N'6002', N'T06', 71)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'120', N'6003', N'T04', 85)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'120', N'6004', N'T02', 99)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'120', N'6011', N'T01', 91)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'121', N'6001', N'T01', 69)
GO
print 'Processed 100 total records'
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'121', N'6002', N'T06', 84)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'121', N'6003', N'T04', 99)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'121', N'6004', N'T02', 61)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'121', N'6011', N'T01', 60)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'122', N'6001', N'T01', 81)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'122', N'6002', N'T06', 97)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'122', N'6003', N'T04', 60)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'122', N'6004', N'T02', 76)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'122', N'6011', N'T01', 82)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'123', N'6001', N'T01', 93)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'123', N'6002', N'T06', 57)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'123', N'6003', N'T04', 74)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'123', N'6004', N'T02', 91)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'123', N'6011', N'T01', 51)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'124', N'6001', N'T01', 52)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'124', N'6002', N'T06', 70)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'124', N'6003', N'T04', 88)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'124', N'6004', N'T02', 53)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'124', N'6011', N'T01', 73)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'125', N'6001', N'T01', 64)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'125', N'6002', N'T06', 83)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'125', N'6003', N'T04', 49)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'125', N'6004', N'T02', 68)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'125', N'6011', N'T01', 95)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'126', N'6001', N'T01', 76)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'126', N'6002', N'T06', 96)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'126', N'6003', N'T04', 63)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'126', N'6004', N'T02', 83)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'126', N'6011', N'T01', 64)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'127', N'6001', N'T01', 88)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'127', N'6002', N'T06', 56)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'127', N'6003', N'T04', 77)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'127', N'6004', N'T02', 98)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'127', N'6011', N'T01', 86)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'128', N'6001', N'T01', 100)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'128', N'6002', N'T06', 69)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'128', N'6003', N'T04', 91)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'128', N'6004', N'T02', 60)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'128', N'6011', N'T01', 55)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'129', N'6001', N'T01', 59)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'129', N'6002', N'T06', 82)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'129', N'6003', N'T04', 52)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'129', N'6004', N'T02', 75)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'129', N'6011', N'T01', 77)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'130', N'6001', N'T01', 71)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'130', N'6002', N'T06', 95)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'130', N'6003', N'T04', 66)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'130', N'6004', N'T02', 90)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'130', N'6011', N'T01', 99)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'131', N'6001', N'T01', 83)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'131', N'6002', N'T06', 55)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'131', N'6003', N'T04', 80)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'131', N'6004', N'T02', 52)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'131', N'6005', N'T05', 77)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'131', N'6011', N'T01', 68)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'132', N'6001', N'T01', 95)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'132', N'6002', N'T06', 68)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'132', N'6003', N'T04', 94)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'132', N'6004', N'T02', 67)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'132', N'6005', N'T05', 93)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'132', N'6011', N'T01', 90)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'133', N'6001', N'T01', 54)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'133', N'6002', N'T06', 81)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'133', N'6003', N'T04', 55)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'133', N'6004', N'T02', 82)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'133', N'6005', N'T05', 56)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'133', N'6011', N'T01', 59)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'134', N'6001', N'T01', 66)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'134', N'6002', N'T06', 94)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'134', N'6003', N'T04', 69)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'134', N'6004', N'T02', 97)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'134', N'6005', N'T05', 72)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'134', N'6011', N'T01', 81)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'135', N'6001', N'T01', 78)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'135', N'6002', N'T06', 54)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'135', N'6003', N'T04', 83)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'135', N'6004', N'T02', 59)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'135', N'6005', N'T05', 88)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'135', N'6011', N'T01', 50)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'136', N'6001', N'T01', 90)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'136', N'6002', N'T06', 67)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'136', N'6003', N'T04', 97)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'136', N'6004', N'T02', 74)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'136', N'6005', N'T05', 51)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'136', N'6011', N'T01', 72)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'137', N'6001', N'T01', 49)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'137', N'6002', N'T06', 80)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'137', N'6003', N'T04', 58)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'137', N'6004', N'T02', 89)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'137', N'6005', N'T05', 67)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'137', N'6011', N'T01', 94)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'138', N'6001', N'T01', 61)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'138', N'6002', N'T06', 93)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'138', N'6003', N'T04', 72)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'138', N'6004', N'T02', 51)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'138', N'6005', N'T05', 83)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'138', N'6011', N'T01', 63)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'139', N'6001', N'T01', 73)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'139', N'6002', N'T06', 53)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'139', N'6003', N'T04', 86)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'139', N'6004', N'T02', 66)
GO
print 'Processed 200 total records'
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'139', N'6005', N'T05', 99)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'139', N'6011', N'T01', 85)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'140', N'6001', N'T01', 85)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'140', N'6002', N'T06', 66)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'140', N'6003', N'T04', 100)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'140', N'6004', N'T02', 81)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'140', N'6005', N'T05', 62)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'140', N'6011', N'T01', 54)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'141', N'6001', N'T01', 97)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'141', N'6002', N'T06', 79)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'141', N'6003', N'T04', 61)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'141', N'6004', N'T02', 96)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'141', N'6005', N'T05', 78)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'141', N'6011', N'T01', 76)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'142', N'6001', N'T01', 56)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'142', N'6002', N'T06', 92)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'142', N'6003', N'T04', 75)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'142', N'6004', N'T02', 58)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'142', N'6005', N'T05', 94)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'142', N'6011', N'T01', 98)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'143', N'6001', N'T01', 68)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'143', N'6002', N'T06', 52)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'143', N'6003', N'T04', 89)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'143', N'6004', N'T02', 73)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'143', N'6005', N'T05', 57)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'143', N'6011', N'T01', 67)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'144', N'6001', N'T01', 80)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'144', N'6002', N'T06', 65)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'144', N'6003', N'T04', 50)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'144', N'6004', N'T02', 88)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'144', N'6005', N'T05', 73)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'144', N'6011', N'T01', 89)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'145', N'6001', N'T01', 92)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'145', N'6002', N'T06', 78)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'145', N'6003', N'T04', 64)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'145', N'6004', N'T02', 50)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'145', N'6005', N'T05', 89)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'145', N'6011', N'T01', 58)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'146', N'6001', N'T01', 51)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'146', N'6002', N'T06', 91)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'146', N'6003', N'T04', 78)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'146', N'6004', N'T02', 65)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'146', N'6005', N'T05', 52)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'146', N'6011', N'T01', 80)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'147', N'6001', N'T01', 63)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'147', N'6002', N'T06', 51)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'147', N'6003', N'T04', 92)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'147', N'6004', N'T02', 80)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'147', N'6005', N'T05', 68)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'147', N'6011', N'T01', 49)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'148', N'6001', N'T01', 75)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'148', N'6002', N'T06', 64)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'148', N'6003', N'T04', 53)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'148', N'6004', N'T02', 95)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'148', N'6005', N'T05', 84)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'148', N'6011', N'T01', 71)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'149', N'6001', N'T01', 87)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'149', N'6002', N'T06', 77)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'149', N'6003', N'T04', 67)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'149', N'6004', N'T02', 57)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'149', N'6005', N'T05', 100)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'149', N'6011', N'T01', 93)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'150', N'6001', N'T01', 99)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'150', N'6002', N'T06', 90)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'150', N'6003', N'T04', 81)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'150', N'6004', N'T02', 72)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'150', N'6005', N'T05', 63)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'150', N'6011', N'T01', 62)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'151', N'6001', N'T01', 58)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'151', N'6002', N'T06', 50)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'151', N'6003', N'T04', 95)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'151', N'6004', N'T02', 87)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'151', N'6005', N'T05', 79)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'151', N'6011', N'T01', 84)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'152', N'6001', N'T01', 70)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'152', N'6002', N'T06', 63)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'152', N'6003', N'T04', 56)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'152', N'6004', N'T02', 49)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'152', N'6005', N'T05', 95)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'152', N'6011', N'T01', 53)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'153', N'6001', N'T01', 82)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'153', N'6002', N'T06', 76)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'153', N'6003', N'T04', 70)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'153', N'6004', N'T02', 64)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'153', N'6005', N'T05', 58)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'153', N'6011', N'T01', 75)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'154', N'6001', N'T01', 94)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'154', N'6002', N'T06', 89)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'154', N'6003', N'T04', 84)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'154', N'6004', N'T02', 79)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'154', N'6005', N'T05', 74)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'154', N'6011', N'T01', 97)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'155', N'6001', N'T01', 53)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'155', N'6002', N'T06', 49)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'155', N'6003', N'T04', 98)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'155', N'6004', N'T02', 94)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'155', N'6005', N'T05', 90)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'155', N'6011', N'T01', 66)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'156', N'6001', N'T01', 65)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'156', N'6002', N'T06', 62)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'156', N'6003', N'T04', 59)
GO
print 'Processed 300 total records'
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'156', N'6004', N'T02', 56)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'156', N'6005', N'T05', 53)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'156', N'6011', N'T01', 88)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'157', N'6001', N'T01', 77)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'157', N'6002', N'T06', 75)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'157', N'6003', N'T04', 73)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'157', N'6004', N'T02', 71)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'157', N'6005', N'T05', 69)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'157', N'6011', N'T01', 57)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'158', N'6001', N'T01', 89)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'158', N'6002', N'T06', 88)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'158', N'6003', N'T04', 87)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'158', N'6004', N'T02', 86)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'158', N'6005', N'T05', 85)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'158', N'6011', N'T01', 79)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'159', N'6001', N'T01', 48)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'159', N'6002', N'T06', 48)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'159', N'6003', N'T04', 48)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'159', N'6004', N'T02', 48)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'159', N'6005', N'T05', 48)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'159', N'6011', N'T01', 48)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'160', N'6001', N'T01', 60)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'160', N'6002', N'T06', 61)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'160', N'6003', N'T04', 62)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'160', N'6004', N'T02', 63)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'160', N'6005', N'T05', 64)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'160', N'6011', N'T01', 70)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'161', N'6001', N'T01', 72)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'161', N'6002', N'T06', 74)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'161', N'6003', N'T04', 76)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'161', N'6004', N'T02', 78)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'161', N'6005', N'T05', 80)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'161', N'6011', N'T01', 92)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'162', N'6001', N'T01', 84)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'162', N'6002', N'T06', 87)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'162', N'6003', N'T04', 90)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'162', N'6004', N'T02', 93)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'162', N'6005', N'T05', 96)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'162', N'6011', N'T01', 61)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'163', N'6001', N'T01', 96)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'163', N'6002', N'T06', 100)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'163', N'6003', N'T04', 51)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'163', N'6004', N'T02', 55)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'163', N'6005', N'T05', 59)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'163', N'6011', N'T01', 83)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'164', N'6001', N'T01', 55)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'164', N'6002', N'T06', 60)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'164', N'6003', N'T04', 65)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'164', N'6004', N'T02', 70)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'164', N'6005', N'T05', 75)
INSERT [dbo].[SC] ([StudID], [CID], [TID], [SCORE]) VALUES (N'164', N'6011', N'T01', 52)
/****** Object:  Check [CK_sc_score]    Script Date: 05/18/2018 14:02:30 ******/
ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [CK_sc_score] CHECK  (([score]>=(0) AND [score]<=(100)))
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [CK_sc_score]
GO
/****** Object:  Check [CK_stud_email]    Script Date: 05/18/2018 14:02:30 ******/
ALTER TABLE [dbo].[STUD]  WITH CHECK ADD  CONSTRAINT [CK_stud_email] CHECK  (([email] like '_%@%_'))
GO
ALTER TABLE [dbo].[STUD] CHECK CONSTRAINT [CK_stud_email]
GO
/****** Object:  Check [CK_stud_sex]    Script Date: 05/18/2018 14:02:30 ******/
ALTER TABLE [dbo].[STUD]  WITH CHECK ADD  CONSTRAINT [CK_stud_sex] CHECK  (([sex]='-' OR [sex]='女' OR [sex]='男'))
GO
ALTER TABLE [dbo].[STUD] CHECK CONSTRAINT [CK_stud_sex]
GO
/****** Object:  ForeignKey [FK_sc_course]    Script Date: 05/18/2018 14:02:30 ******/
ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [FK_sc_course] FOREIGN KEY([CID])
REFERENCES [dbo].[COURSE] ([CID])
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [FK_sc_course]
GO
/****** Object:  ForeignKey [FK_sc_stud]    Script Date: 05/18/2018 14:02:30 ******/
ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [FK_sc_stud] FOREIGN KEY([StudID])
REFERENCES [dbo].[STUD] ([StudID])
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [FK_sc_stud]
GO
/****** Object:  ForeignKey [FK_sc_teacher]    Script Date: 05/18/2018 14:02:30 ******/
ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [FK_sc_teacher] FOREIGN KEY([TID])
REFERENCES [dbo].[TEACHER] ([TID])
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [FK_sc_teacher]
GO
/****** Object:  ForeignKey [FK_STUD_dep]    Script Date: 05/18/2018 14:02:30 ******/
ALTER TABLE [dbo].[STUD]  WITH CHECK ADD  CONSTRAINT [FK_STUD_dep] FOREIGN KEY([DEPID])
REFERENCES [dbo].[DEP] ([DEPID])
GO
ALTER TABLE [dbo].[STUD] CHECK CONSTRAINT [FK_STUD_dep]
GO
/****** Object:  ForeignKey [FK_teacher_dep]    Script Date: 05/18/2018 14:02:30 ******/
ALTER TABLE [dbo].[TEACHER]  WITH CHECK ADD  CONSTRAINT [FK_teacher_dep] FOREIGN KEY([DEPID])
REFERENCES [dbo].[DEP] ([DEPID])
GO
ALTER TABLE [dbo].[TEACHER] CHECK CONSTRAINT [FK_teacher_dep]
GO
