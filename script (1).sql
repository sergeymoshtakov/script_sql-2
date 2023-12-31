USE [master]
GO
/****** Object:  Database [Store]    Script Date: 10.07.2023 20:25:29 ******/
CREATE DATABASE [Store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Store', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Store.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Store_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Store_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Store] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Store] SET ARITHABORT OFF 
GO
ALTER DATABASE [Store] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Store] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Store] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Store] SET RECOVERY FULL 
GO
ALTER DATABASE [Store] SET  MULTI_USER 
GO
ALTER DATABASE [Store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Store] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Store] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Store] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Store', N'ON'
GO
ALTER DATABASE [Store] SET QUERY_STORE = ON
GO
ALTER DATABASE [Store] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Store]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10.07.2023 20:25:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[category] [varchar](50) NULL,
	[price] [float] NULL,
	[discount] [float] NULL,
	[quantity] [int] NULL,
	[measurement] [varchar](50) NULL,
	[producer] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[suplier] [varchar](50) NULL,
	[date_of_delivery] [date] NULL,
	[expire_date] [date] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (1, N'Хинкали', N'Пищевые продукты', 50.23, 0.2, 20, N'пачка', N'Прилуцькі вироби', N'Украина', N'Повна Чаша', CAST(N'2022-12-22' AS Date), CAST(N'2023-12-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (2, N'Пельмени', N'Пищевые продукты', 43.62, 0, 100, N'пачка', N'Пельмени Казахстана', N'Казахстан', N'Казахтрейд', CAST(N'2023-02-12' AS Date), CAST(N'2025-02-12' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (3, N'Вареники', N'Пищевые продукты', 56.39, 0, 150, N'пачка', N'Прилуцькі вироби', N'Украина', N'Повна Чаша', CAST(N'2023-04-05' AS Date), CAST(N'2025-04-05' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (4, N'Пиво "Черниговское"', N'Напитки', 12.72, 0.4, 350, N'бутылка', N'Krakowska Prowarna', N'Польша', N'Повна Чаша', CAST(N'2023-07-02' AS Date), CAST(N'2025-07-02' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (5, N'Квас', N'Напитки', 24.58, 0.3, 330, N'бутылка', N'Kwas Taras', N'Польша', N'Повна Чаша', CAST(N'2023-04-02' AS Date), CAST(N'2025-04-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (6, N'Пепси', N'Напитки', 25.76, 0.2, 302, N'бутылка', N'Pepsi Cola', N'Латвия', N'Повна Чаша', CAST(N'2023-06-09' AS Date), CAST(N'2026-06-09' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (7, N'Вода', N'Напитки', 21.33, 0, 354, N'бутылка', N'Deutsche Wasser', N'Германия', N'Евротрейд', CAST(N'2023-05-23' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (8, N'Огурцы', N'Пищевые продукты', 45.3, 0, 124, N'килограм', N'Украгропром', N'Украина', N'Повна Чаша', CAST(N'2023-06-09' AS Date), CAST(N'2023-12-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (9, N'Помидоры', N'Пищевые продукты', 23.4, 0.2, 123, N'килограм', N'Украгропром', N'Украина', N'Повна Чаша', CAST(N'2023-05-23' AS Date), CAST(N'2023-09-07' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (10, N'Апельсины', N'Пищевые продукты', 32.3, 0.4, 323, N'килограм', N'Украгропром', N'Украина', N'Повна Чаша', CAST(N'2023-06-09' AS Date), CAST(N'2023-12-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (11, N'Мандарины', N'Пищевые продукты', 23, 0, 124, N'килограм', N'Украгропром', N'Украина', N'Повна Чаша', CAST(N'2023-05-23' AS Date), CAST(N'2023-09-07' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (12, N'Апельсины (Испания)', N'Пищевые продукты', 56, 0.4, 76, N'килограм', N'Fruits Madrid', N'Испания', N'Евротрейд', CAST(N'2023-06-09' AS Date), CAST(N'2023-12-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (13, N'Абрикосы', N'Пищевые продукты', 54, 0, 234, N'килограм', N'Украгропром', N'Украина', N'Повна Чаша', CAST(N'2023-05-23' AS Date), CAST(N'2023-09-07' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (14, N'Лимоны', N'Пищевые продукты', 87, 0, 343, N'килограм', N'Украгропром', N'Украина', N'Повна Чаша', CAST(N'2023-06-09' AS Date), CAST(N'2023-12-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (15, N'Помидоры черри', N'Пищевые продукты', 35, 0, 23, N'килограм', N'Украгропром', N'Украина', N'Повна Чаша', CAST(N'2023-06-09' AS Date), CAST(N'2026-06-09' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (16, N'Арбуз', N'Пищевые продукты', 46, 0.4, 32, N'килограм', N'Polagroprom', N'Польша', N'Евротрейд', CAST(N'2023-05-23' AS Date), CAST(N'2026-06-09' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (17, N'Дыня', N'Пищевые продукты', 45, 0, 432, N'килограм', N'Yurup Surup', N'Турция', N'Повна Чаша', CAST(N'2023-05-23' AS Date), CAST(N'2023-12-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (18, N'Арбуз (Азербайджан)', N'Пищевые продукты', 18.4, 0.4, 32, N'килограм', N'Азергруп', N'Азербайджан', N'Азерпром', CAST(N'2023-06-09' AS Date), CAST(N'2026-06-09' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (19, N'Вино белое', N'Напитки', 56, 0, 244, N'бутылка', N'Polagroprom', N'Польша', N'Повна Чаша', CAST(N'2023-05-23' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (20, N'Вино красное', N'Напитки', 56, 0.4, 322, N'бутылка', N'Polagroprom', N'Польша', N'Евротрейд', CAST(N'2023-06-09' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (21, N'Вино (Крым)', N'Напитки', 68, 0, 324, N'бутылка', N'Украгропром', N'Украина', N'Повна Чаша', CAST(N'2023-06-09' AS Date), CAST(N'2026-06-09' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (22, N'Вино (Испания)', N'Напитки', 54, 0, 232, N'бутылка', N'Fruits Madrid', N'Испания', N'Евротрейд', CAST(N'2023-06-09' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (23, N'Вино (Шампань)', N'Напитки', 54, 0.2, 23, N'бутылка', N'Fruits France', N'Франция', N'Евротрейд', CAST(N'2023-06-09' AS Date), CAST(N'2026-06-09' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (24, N'Вино (Прованс)', N'Напитки', 55, 0.4, 43, N'бутылка', N'Fruits France', N'Франция', N'Евротрейд', CAST(N'2023-06-09' AS Date), CAST(N'2026-06-09' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (25, N'Пиво "Балтийское"', N'Напитки', 23, 0, 424, N'бутылка', N'Latvian Beer', N'Латвия', N'Повна Чаша', CAST(N'2023-06-09' AS Date), CAST(N'2026-06-09' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (26, N'Пиво "Тетерив"', N'Напитки', 24.3, 0, 434, N'бутылка', N'Укрпивзавод', N'Украина', N'Своя марка', CAST(N'2023-06-09' AS Date), CAST(N'2026-06-09' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (27, N'Пиво "Баварское"', N'Напитки', 24.2, 0, 323, N'бутылка', N'Deutsche beer', N'Германия', N'Повна Чаша', CAST(N'2023-07-02' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (28, N'Спички', N'Бытовые товары', 1.5, 0.4, 3432, N'пачка', N'Bayerische prom', N'Германия', N'Повна Чаша', CAST(N'2023-05-23' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (29, N'Мыло', N'Бытовые товары', 20.4, 0.5, 432, N'пачка', N'Bayerische prom', N'Германия', N'Укрдойчтрейд', CAST(N'2023-05-23' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (30, N'Шампунь', N'Бытовые товары', 45.6, 0.4, 324, N'пачка', N'Huisunwuchai', N'Китай', N'Алиэкпресс', CAST(N'2023-04-02' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (31, N'Кирпич', N'Строительные материалы', 50.3, 0.2, 343, N'штука', N'Huisunwuchai', N'Китай', N'Алиэкпресс', CAST(N'2023-05-23' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (32, N'Гвозди', N'Строительные материалы', 34.5, 0.3, 234, N'пачка', N'Bayerische prom', N'Германия', N'Укрдойчтрейд', CAST(N'2023-06-09' AS Date), CAST(N'2027-05-15' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (33, N'Шурупы', N'Строительные материалы', 43.3, 0.3, 787, N'пачка', N'Bayerische prom', N'Германия', N'Укрдойчтрейд', CAST(N'2023-04-02' AS Date), CAST(N'2027-05-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (34, N'Цемент', N'Строительные материалы', 123.3, 0.5, 635, N'пачка', N'Bayerische prom', N'Германия', N'Укрдойчтрейд', CAST(N'2023-06-09' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (35, N'Щебень', N'Строительные материалы', 124.2, 0.5, 645, N'пачка', N'Bayerische prom', N'Германия', N'Укрдойчтрейд', CAST(N'2023-04-02' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (36, N'Лопата', N'Строительные материалы', 82.4, 0.2, 456, N'штука', N'Huisunwuchai', N'Китай', N'Алиэкпресс', CAST(N'2023-05-23' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (37, N'Вилы', N'Строительные материалы', 86.5, 0.2, 132, N'штука', N'Huisunwuchai', N'Китай', N'Алиэкпресс', CAST(N'2023-06-09' AS Date), CAST(N'2026-06-09' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (38, N'Бензин', N'Автотовары', 51.3, 0.1, 454, N'литр', N'Huisunwuchai', N'Китай', N'Алиэкпресс', CAST(N'2023-05-23' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (39, N'Бензин (США)', N'Автотовары', 51.3, 0, 342, N'литр', N'Americanoilfactory', N'США', N'Американтрейдсервис', CAST(N'2023-06-09' AS Date), CAST(N'2026-06-09' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (40, N'Шина', N'Автотовары', 128.5, 0, 234, N'штука', N'NULLHuisunwuchai', N'Китай', N'Алиэкпресс', CAST(N'2023-04-02' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (41, N'Колбаса "Краковская"', N'Пищевые продукты', 86.5, 0, 234, N'штука', N'Polagroprom', N'Польша', N'Евротрейд	
	
	
	
	2023-07-02', CAST(N'2022-12-22' AS Date), CAST(N'2023-12-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (42, N'Колбаса "Варшавская"', N'Пищевые продукты', 71.8, 0.4, 678, N'штука', N'NUPolagropromLL', N'Польша', N'Евротрейд', CAST(N'2023-04-05' AS Date), CAST(N'2023-12-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (43, N'Колбаса "Львовская"', N'Пищевые продукты', 86.5, 0.3, 432, N'штука', N'Polagroprom', N'Польша', N'Евротрейд', CAST(N'2022-12-22' AS Date), CAST(N'2023-12-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (44, N'Киевская котлета', N'Пищевые продукты', 82.3, 0, 323, N'штука', N'Polagroprom', N'Польша', N'Евротрейд', CAST(N'2023-04-05' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (45, N'Бургер', N'Пищевые продукты', 88.5, 0.1, 65, N'штука', N'Polagroprom', N'Польша', N'Евротрейд', CAST(N'2022-12-22' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (46, N'Чизбургер', N'Пищевые продукты', 86.5, 0.3, 565, N'штука', N'Polagroprom', N'Польша', N'Евротрейд', CAST(N'2023-04-05' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (47, N'Соленые огурцы', N'Пищевые продукты', 22.5, 0, 545, N'банка', N'Polagroprom', N'Польша', N'Укрполтрейд', CAST(N'2023-04-05' AS Date), CAST(N'2023-12-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (48, N'Бумага', N'Канцелярия', 65.3, 0, 878, N'пачка', N'Китай', N'Китай', N'Алиэкпресс', CAST(N'2022-12-22' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (49, N'Ручка', N'Канцелярия', 11, 0, 987, N'штука', N'Китай', N'Китай', N'Алиэкпресс', CAST(N'2023-04-05' AS Date), CAST(N'2027-05-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [suplier], [date_of_delivery], [expire_date]) VALUES (50, N'Карандаш', N'Канцелярия', 11, 0, 355, N'штука', N'Китай', N'Китай', N'Алиэкпресс', CAST(N'2023-04-05' AS Date), CAST(N'2027-05-23' AS Date))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
USE [master]
GO
ALTER DATABASE [Store] SET  READ_WRITE 
GO
