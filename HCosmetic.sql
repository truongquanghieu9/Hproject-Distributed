USE [master]
GO
/****** Object:  Database [HCosmetic1]    Script Date: 6/14/2018 11:07:21 PM ******/
CREATE DATABASE [HCosmetic1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HCosmetic1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SOILANTRON\MSSQL\DATA\HCosmetic1.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HCosmetic1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SOILANTRON\MSSQL\DATA\HCosmetic1_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HCosmetic1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HCosmetic1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HCosmetic1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HCosmetic1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HCosmetic1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HCosmetic1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HCosmetic1] SET ARITHABORT OFF 
GO
ALTER DATABASE [HCosmetic1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HCosmetic1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HCosmetic1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HCosmetic1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HCosmetic1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HCosmetic1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HCosmetic1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HCosmetic1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HCosmetic1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HCosmetic1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HCosmetic1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HCosmetic1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HCosmetic1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HCosmetic1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HCosmetic1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HCosmetic1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HCosmetic1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HCosmetic1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HCosmetic1] SET  MULTI_USER 
GO
ALTER DATABASE [HCosmetic1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HCosmetic1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HCosmetic1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HCosmetic1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HCosmetic1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HCosmetic1', N'ON'
GO
USE [HCosmetic1]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/14/2018 11:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/14/2018 11:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/14/2018 11:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/14/2018 11:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/14/2018 11:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/14/2018 11:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/14/2018 11:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1000,1) NOT NULL,
	[CategoryName] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/14/2018 11:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailId] [int] IDENTITY(1000,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/14/2018 11:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1000,1) NOT NULL,
	[OrderDate] [date] NULL,
	[CustomerName] [nvarchar](200) NULL,
	[CustomerPhone] [nvarchar](50) NULL,
	[StoreId] [int] NULL,
	[SalePersonId] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/14/2018 11:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1000,1) NOT NULL,
	[ProductName] [nvarchar](200) NULL,
	[Price] [float] NULL,
	[CategoryId] [int] NULL,
	[Image] [nvarchar](200) NULL CONSTRAINT [DF_Products_Image]  DEFAULT (N'image.png'),
	[Description] [nvarchar](2000) NULL,
	[UnitsInOrder] [int] NULL CONSTRAINT [DF_Products_UnitsInOrder]  DEFAULT ((0)),
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/14/2018 11:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1000,1) NOT NULL,
	[RoleName] [nvarchar](200) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalePersons]    Script Date: 6/14/2018 11:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalePersons](
	[SalePersonId] [int] IDENTITY(1000,1) NOT NULL,
	[SalePersonName] [nvarchar](200) NULL,
	[SalePersonPhone] [nvarchar](50) NULL,
	[RoleId] [int] NULL,
	[UserId] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[StoreId] [int] NOT NULL,
 CONSTRAINT [PK_SalePersons] PRIMARY KEY CLUSTERED 
(
	[SalePersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stores]    Script Date: 6/14/2018 11:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stores](
	[StoreId] [int] IDENTITY(1000,1) NOT NULL,
	[StoreName] [nvarchar](200) NULL,
	[StoreLocation] [nvarchar](200) NULL,
 CONSTRAINT [PK_Stores] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[Reve]    Script Date: 6/14/2018 11:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Reve]
AS
SELECT        dbo.Orders.OrderId, dbo.Orders.OrderDate, dbo.Orders.CustomerName, dbo.Products.ProductName, dbo.OrderDetails.Quantity, dbo.OrderDetails.Price, dbo.SalePersons.SalePersonName, dbo.Stores.StoreLocation
FROM            dbo.OrderDetails INNER JOIN
                         dbo.Orders ON dbo.OrderDetails.OrderId = dbo.Orders.OrderId INNER JOIN
                         dbo.Products ON dbo.OrderDetails.ProductId = dbo.Products.ProductId INNER JOIN
                         dbo.SalePersons ON dbo.Orders.SalePersonId = dbo.SalePersons.SalePersonId INNER JOIN
                         dbo.Stores ON dbo.Orders.StoreId = dbo.Stores.StoreId AND dbo.SalePersons.StoreId = dbo.Stores.StoreId


GO
/****** Object:  View [dbo].[revenue]    Script Date: 6/14/2018 11:07:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[revenue]
AS
SELECT        dbo.OrderDetails.OrderDetailId, dbo.Orders.OrderDate, dbo.Orders.CustomerName, dbo.Products.ProductName, dbo.OrderDetails.Quantity, dbo.OrderDetails.Price, dbo.Stores.StoreLocation, 
                         dbo.SalePersons.SalePersonName
FROM            dbo.OrderDetails INNER JOIN
                         dbo.Orders ON dbo.OrderDetails.OrderId = dbo.Orders.OrderId INNER JOIN
                         dbo.Products ON dbo.OrderDetails.ProductId = dbo.Products.ProductId INNER JOIN
                         dbo.Stores ON dbo.Orders.StoreId = dbo.Stores.StoreId INNER JOIN
                         dbo.SalePersons ON dbo.Orders.SalePersonId = dbo.SalePersons.SalePersonId AND dbo.Stores.StoreId = dbo.SalePersons.StoreId


GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201706291648053_InitialCreate', N'HProject.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD04EEDA6E8DC617649DA06F0157E2AED548942A518E8DA25FD6877E527FA14389BAF1A2CBAEBCBB0E020416393C331C0EC9E170B8FFFDF3EFF8ED83EF19F7388ADD804CCC83D1BE696062078E4B961333A18B17AFCDB76FBEFD667CE6F80FC6C79CEE88D1414B124FCC3B4AC363CB8AED3BECA378E4BB7614C4C1828EECC0B790135887FBFB3F59070716060813B00C63FC3E21D4F571FA019FD380D838A409F22E03077B312F879A598A6A5C211FC721B2F1C4FCF5260AFEC0361D65A4A671E2B908C498616F611A889080220A421E7F88F18C460159CE422840DEED6388816E81BC1873E18F4BF2AEFDD83F64FDB0CA8639949DC434F07B021E1C71C55862F395D46B168A03D59D818AE923EB75AABE8979E1E0B4E87DE081024486C7532F62C413F3B26071128757988EF286A30CF23C02B82F41F4795445DC333AB7DB2B0CE970B4CFFEED19D3C4A349842704273442DE9E7193CC3DD7FE0D3FDE069F31991C1DCC1747AF5FBE42CED1AB1FF1D1CB6A4FA1AF40572B802230931047201B5E14FD370DABDECE121B16CD2A6D32AD802DC19C308D4BF4F00E9325BD83D972F8DA34CEDD07ECE425DCB83E1017A61034A251029F5789E7A1B9878B7AAB9127FBBF81EBE1CB578370BD42F7EE321D7A813F4C9C08E6D57BECA5B5F19D1B66D3AB36DE9F38D97914F8ECBB6E5F59EDA759904436EB4CA025B945D112D3BA7463AB34DE4E26CDA08637EB1C75F74D9B492A9BB792947568959990B3D8F46CC8E57D5ABE9D2DEE240C61F052D3621A69323861A71A094DF78C9CA0349A83AE4643A0335FF31A78E623D71B6011ECC0059C8F851BF9B8E8E5CF01981C22BD65BE41710C6B80F32B8AEF1A44873F07107D86ED2402D39C51E4874FCEEDE62E20F82AF1E7CCE237C76BB0A1B9FD129C239B06D11961ADD6C67B17D89F83849E11E71451FC81DA3920FBBC75FDEE0083887362DB388ECFC198B1330DC0B7CE012F083D3AEC0DC756A76D3B21530FB9BEDA0B11D6D14F3969E989A829246F4443A6F2489A447D172C5DD24DD49C542F6A46D12A2A27EB2B2A03EB2629A7D40B9A12B4CA99510DE6E3A52334BC9397C2EEBE97B7DEE6AD5B0B2A6A9CC10A897FC10447B08C393788521C917204BAAC1BDB7016D2E1634C9F7C6F4A397D445E3234AB956643BA080C3F1B52D8DD9F0DA998507CEF3ACC2BE970F4C98901BE13BDFA54D53EE704C9363D1D6ADDDC34F3CDAC01BAE97212C781EDA6B34011F4E2218BBAFCE0C319EDF18BAC37620C043A0686EEB22D0F4AA06FA66854D7E4147B9862E3C4CE82825314DBC891D5081D727A0896EFA80AC1CA58485DB81F249E60E938628D103B04C530535D42E569E112DB0D91D7AA25A165C72D8CF5BDE021D69CE21013C6B055135D98AB431F4C80828F30286D1A1A5B158B6B36448DD7AA1BF33617B61C772922B1119B6CF19D3576C9FDB72731CC668D6DC0389B55D245006D186F1B06CACF2A5D0D403CB8EC9A810A27268D8172976A23065AD7D8160CB4AE926767A0D911B5EBF80BE7D55D33CFFA4179F3DB7AA3BAB6609B357DEC986966BE27B4A1D00247B2799ECE59257EA08AC319C8C9CF67317775451361E0334CEB219BD2DF55FAA156338868444D80A5A1B580F20B4009489A503D84CB63798DD2712FA2076C1E776B84E56BBF005BB10119BB7A115A21D45F978AC6D9E9F451F4ACB006C9C83B1D162A380A831017AF7AC73B284517979515D3C517EEE30D573AC607A341412D9EAB4649796706D7526E9AED5A5239647D5CB2B5B424B84F1A2DE59D195C4BDC46DB95A4700A7AB8056BA9A8BE850F34D9F24847B1DB1475632B4B8EE205634B934535BE4461E8926525AB8A9718B32CA56AFA62D63FDDC8CF302C3B56641D15D2169C6810A125166A8135487AEE46313D4514CD118BF34C1D5F2253EEAD9AE53F6759DD3EE541CCF7819C9AFD9DB510AFED6B1BADEC89708073E89ECFDC993486AE187C757383A5B8210F458AB0FD34F0129FE8BD2B7DEBECF2AEDA3E2B9111C69620BFE43D49AA927CDCBADE3B8D8A3C238618A1C273597D94F4103A5DE77E6755DB3A5F548F9287A6AA28BA70D5D6464DE7C2741F29D135EC3F50AD084F33A3783E4A158017F5C4A8A434486095BAEEA8F5AC932A66BDA63BA2905A528514AA7A48594D20A90959AD58094FA3513545770E72CA48155DAEED8EAC481EA9422BAA57C056C82CD6754755E497548115D5DDB1CB64137105DDE13D4B7B60596DD3CA0EB4EBED5A1A8CA7590E87D9F42AF7F655A04A714F2C7E332F81F1F29D3425EDA96E3553CA8218EB99920643BFE6D4AEBBEB4B4EE31DBD1EB376875D5BD69BEEF0F578FD0CF649CD423AD1892405F7E264279CE0C6FC34D5FE58463A5E6524A691AB11B6F4C798627FC40846B33FBDA9E762B680E7049788B80B1CD32C6FC33CDC3F38149EDCECCEF3172B8E1D4F711AD5BD81A98FD90652B0C83D8AEC3B14C909116B3C112941A558F30571F0C3C4FC2B6D759C862DD85F69F19E71117F20EE9F0954DC460936FE96133C8749996F3E5BEDE80387EE5ABDF8FD53D674CFB88E60C61C1BFB822E5719E1FAB3875ED2644DD79066E5C710CF7742D5DE1B28518509B1FAF382B94B07795A904BF99D8F1EBEEF2B9AF2F9C05A888A270243E10DA242DD138055B0B4E9FF0E7CD234FDBF5F67D5CF0156114DFB14C025FDC1C48700DD97A1BCE516B71AC58168134B52AAE7D644EAB5B22AB7BD3749F9D66B4D7439A7BA07DC1A79D32B58C6334B391E6C775464140F86BD4DD37EF234E25DC91C2E733AB69B30BCC91CE186DBA0AF2A35780792D914C939DB4F00DEB4ADE982B83B9E45D92FCD77C78C8DA76C6D3F9977D3C6A60BF3EEB8B1F54AD9DD315BDBD6FEB9654BEBBC856E3D0157CE25D25CC6A862C16D09B659E01C4EF8F3008C20F328B37791EA8CAEA66CD4168625899EA93E954C642C4D1C89AF44D1CCB65F5FF986DFD8594ED3CC569380D9C49BAFFF8DBC394D336F4D5AE3365283958985AA74ED9675AC29F7E939A502D77AD29279DEE6B336DEAC3FA7CCDF4194529B3D9A3BE2E793E83B884A869C3A3D127BE5EB5ED83B2BBFA008FB77EC2E4B08F67B8A04DBB55DB3A0B9208B20DFBC05897212214273892972604B3D89A8BB4036856A16634E1F76A7713B76D331C7CE05B94E689850E832F6E75E2DE0C59C8026FE69F6725DE6F17598FE46C9105D00315D169BBF263F27AEE714729F2B62421A08E65DF0882E1B4BCA22BBCBC702E92A201D81B8FA0AA7E816FBA10760F13599A17BBC8A6C607EEFF012D98F65045007D23E1075B58F4F5DB48C901F738CB23D7C820D3BFEC39BFF010EAE2D7C48540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1001', N'National Manager')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a7ab31cb-5f6c-461a-8dbe-49e435f1d02f', N'1001')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e60af38d-da2f-4b00-9534-d453b4f3d4f4', N'1001')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'39215921-774c-4d47-afc7-9e39328d4241', N'hieutqgcs16216@fpt.edu.vn', 0, N'AMnOFOW645sDKi00stWOLGA+JK4Qg4MjhZ49zzXsCgz0qYHYzg2ZJW/5RCClCYDG6w==', N'deafbb96-1fb4-42ea-8d82-81e10d87e9f3', NULL, 0, 0, NULL, 1, 0, N'hieutqgcs16216@fpt.edu.vn')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'46a596de-4759-4f70-ba20-d61a1dcc33a2', N'HuyPPN@gic.com', 0, N'AGKLWFpznkHJJsv8F4Fd8a7WqJuOMHpFkyn3UvPRjI7iMwJM29l1U3UMQbaQ7WWiGg==', N'a1df99bc-9b00-4181-9f58-ae1a2d26250f', NULL, 0, 0, NULL, 1, 0, N'HuyPPN@gic.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7b497aca-17c3-451f-ae43-fba32c0f1865', N'huy@gic.com', 0, N'ACr0ycczL8RD7FCZVp4gRMDSEDCV9yLWvlmlvqBCg/v9aylyfX8+4I/0oGBrSsCqXA==', N'95467046-8be2-4983-a488-ba631a3734c9', NULL, 0, 0, NULL, 1, 0, N'huy@gic.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'964da779-aafd-45fc-8c24-0a49fa1f426f', N'bayleoscho@gmail.com', 0, N'ANX3ILm9F4Ime51tWk7/UCWhX5LAjUgX5y5njY82MDTqGa3XbbJHTv4ve2E3IUzR6w==', N'd93330fc-a5d2-4f12-bce0-68fa2cc17eed', NULL, 0, 0, NULL, 1, 0, N'bayleoscho@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'9f017e2f-f95b-47c9-b292-30f09f7977ae', N'hieu1@gmail.com', 0, N'AOL+zmlnOPokoPVrfkh6bAMuX6DUpHVKNZRNYFeNo1r1BvoicHGmTX6nXOKCZ5YfFw==', N'23b8de45-4157-4e48-af4b-b25ed6f9a925', NULL, 0, 0, NULL, 1, 0, N'hieu1@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a3df57d8-6ab6-488f-ab42-8141c59b80a8', N'hieu@gmail.com', 0, N'AEBYbyGCwoVMvfKD69h6WdLk8/LE9ULY+Nc8NG5vlDuyJpSbPdJyTQ42/ZkafQnMWg==', N'5394efdc-e9d3-4f75-bca5-eff8b102189a', NULL, 0, 0, NULL, 1, 0, N'hieu@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a7ab31cb-5f6c-461a-8dbe-49e435f1d02f', N'hieu2@gmail.com', 0, N'AGtGt5gtQnCiywpQpfUbZ3ay+x6HGiH/oEtBwntMd86uZcXZmDUAYtS6pa/4d+1V7A==', N'25f24286-69e6-47c7-af4f-42ae81f7e7ed', NULL, 0, 0, NULL, 1, 0, N'hieu2@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'be5074f4-580c-41e4-847d-605b3ddc4fc2', N'abcosmeticanationalmanager@hotmail.com', 0, N'AGbBydBL5qLNZJ8z30syAqypd9teLOopUwt9Re3R1Nt1PNNl529MfvPoFrli/MSKMg==', N'028e6727-1d4e-4727-91e9-973fa1675505', NULL, 0, 0, NULL, 1, 0, N'abcosmeticanationalmanager@hotmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e3abf9f9-14fa-47d6-8851-f11a0d3dbeaf', N'nhathao@gmail.com', 0, N'AE2gdDp0kpHQ4W0ZSPayjUIyXx/IdjFezwlYWwA0HuxI3dwwYccPxJymkf3hfmvgVQ==', N'5c8a6918-a34a-4904-a92c-d083a294b1d9', NULL, 0, 0, NULL, 1, 0, N'nhathao@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e60af38d-da2f-4b00-9534-d453b4f3d4f4', N'hung@gmail.com', 0, N'ACLg2OjGaLmKLpdSL/KiR2yhzFy4Md4qJD5TLGid73O9TIYwcyAKfvlRy+/TscCyxQ==', N'ca7dfbfa-ed9a-4414-b747-868fa0ffbac0', NULL, 0, 0, NULL, 1, 0, N'hung@gmail.com')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1000, N'Face')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1001, N'Cheek')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1002, N'Eye')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1003, N'Lip')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1004, N'Brusher & aoolicator')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1005, N'Nail')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1012, 1006, 1000, 38, 6)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1013, 1006, 1003, 24, 4)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1014, 1007, 1000, 38, 5)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1015, 1007, 1001, 48, 4)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1016, 1007, 1002, 48, 10)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1017, 1007, 1003, 24, 5)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1018, 1007, 1005, 24, 7)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1019, 1008, 1000, 38, 6)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1020, 1008, 1003, 24, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1021, 1008, 1005, 24, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1022, 1009, 1004, 20, 3)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1023, 1009, 1005, 24, 2)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1024, 1010, 1003, 24, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1025, 1010, 1004, 20, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1026, 1011, 1004, 20, 100)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1027, 1012, 1004, 20, 50)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1031, 1016, 1000, 38, 12)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1032, 1016, 1002, 48, 4)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1033, 1016, 1004, 20, 5)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1034, 1017, 1000, 38, 4)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1035, 1017, 1002, 48, 6)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1036, 1017, 1004, 20, 4)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1037, 1018, 1000, 38, 12)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1038, 1018, 1002, 48, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1039, 1018, 1003, 24, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1040, 1019, 1002, 48, 5)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1041, 1019, 1005, 24, 4)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1042, 1019, 1001, 48, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1043, 1020, 1000, 38, 5)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1044, 1020, 1003, 24, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (2031, 2016, 1000, 38, 3)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (2032, 2016, 1001, 48, 19)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (2033, 2016, 1003, 24, 7)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (2034, 2016, 1004, 20, 5)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (2035, 2016, 1005, 24, 6)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (3031, 3016, 1002, 48, 7)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (3032, 3016, 1004, 20, 20)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (3033, 3017, 1000, 38, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (3034, 3017, 1001, 48, 9)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (3035, 3017, 1003, 24, 4)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (3036, 3018, 1000, 38, 2)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (3037, 3020, 1001, 48, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (3038, 3020, 1003, 24, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (3039, 3021, 1000, 38, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (3040, 3021, 1002, 48, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (4036, 4018, 1001, 48, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (4037, 4018, 1003, 24, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (4038, 4018, 1006, 62, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (4039, 4019, 1002, 48, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (4040, 4019, 1004, 20, 1)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (4041, 4019, 1000, 38, 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (1006, CAST(N'2018-04-30' AS Date), N'Ái Minh', N'0912345678', 1002, 1003)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (1007, CAST(N'2018-04-30' AS Date), N'Ngọc Trinh', N'0912345678', 1004, 1001)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (1008, CAST(N'2018-04-30' AS Date), N'Thảo', N'0912345678', 1003, 1004)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (1009, CAST(N'2018-05-30' AS Date), N'Nhung', N'0912345678', 1000, 2009)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (1010, CAST(N'2018-05-30' AS Date), N'Nhã Phương', N'0912345678', 1003, 2009)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (1011, CAST(N'2018-05-30' AS Date), N'Tùng Sơn', N'0912345678', 1001, 1004)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (1012, CAST(N'2018-05-30' AS Date), N'Kenny Sang', N'0912345678', 1000, 1004)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (1016, CAST(N'2018-05-30' AS Date), N'Kieu Trinh', N'0121719531', 1000, 2005)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (1017, CAST(N'2018-05-30' AS Date), N'Kim Ngan', N'0902874063', 1000, 2009)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (1018, CAST(N'2018-06-01' AS Date), N'Nam', N'0121719551', 1000, 2009)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (1019, CAST(N'2018-07-01' AS Date), N'Ha Anh Quoc', N'0902940221', 1000, 2005)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (1020, CAST(N'2018-05-17' AS Date), N'Ho Hai Thien', N'0951515157', 1000, 2009)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (2016, CAST(N'2018-05-21' AS Date), N'Hoàng Đức Quang', N'0121718851', 1000, 2009)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (3016, CAST(N'2018-06-08' AS Date), N'Viet', N'013345678', 1000, 2009)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (3017, CAST(N'2018-06-07' AS Date), N'Minh', N'0123665664', 1000, 1001)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (3018, CAST(N'2018-06-13' AS Date), N'lien hien', N'0123456789', 1000, 2009)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (3019, CAST(N'2018-06-13' AS Date), N'namene', N'01659456', 1000, 2009)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (3020, CAST(N'2018-06-13' AS Date), N'hien hien', N'0123456789', 1000, 2009)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (3021, CAST(N'2018-06-13' AS Date), N'metmet', N'0123456789', 1000, 2009)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (4018, CAST(N'2018-06-14' AS Date), N'minh meo', N'0123456615', 1000, 2009)
INSERT [dbo].[Orders] ([OrderId], [OrderDate], [CustomerName], [CustomerPhone], [StoreId], [SalePersonId]) VALUES (4019, CAST(N'2018-06-14' AS Date), N'tu', N'0123456987', 1000, 2009)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [CategoryId], [Image], [Description], [UnitsInOrder]) VALUES (1000, N'Make up for ever', 38, 1000, NULL, N'A beauty game changer: now you can line eyes and lips, fill in brows, add freckles, get creative—all with a single pencil. Available in 39 intense shades to be worn individually or layered for a multidimensional effect, these powerfully pigmented, creamy matte pencils glide on smoothly and blend seamlessly. Their precision design gives you complete control to create whatever you want, wherever you want.', 10)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [CategoryId], [Image], [Description], [UnitsInOrder]) VALUES (1001, N'Pro Finish Multi-Use Powder Foundation', 48, 1000, NULL, N'A breakthrough multiuse formula that can be applied as a foundation or setting powder.', 10)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [CategoryId], [Image], [Description], [UnitsInOrder]) VALUES (1002, N'Match Stix Trio', 48, 1002, NULL, N'A magnetized trio of long-wear, light-as-air makeup sticks curated by skin tone, with two Match Stix Matte Skinsticks to conceal and contour, and one Match Stix Shimmer Skinstick to highlight. ', 10)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [CategoryId], [Image], [Description], [UnitsInOrder]) VALUES (1003, N'Gimme Brow+ Volumizing Eyebrow Gel', 24, 1001, NULL, N'A brow-volumizing tinted gel with tiny microfibers that create natural-looking fullness and definition. ', 10)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [CategoryId], [Image], [Description], [UnitsInOrder]) VALUES (1004, N' Blush', 20, 1001, NULL, N'An award-winning, pressed powder blush that delivers healthy-looking color to flatter any skin tone.', 5)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [CategoryId], [Image], [Description], [UnitsInOrder]) VALUES (1005, N'Ultra HD Invisible Cover Foundation', 24, 1001, NULL, N'A game-changing, top-selling foundation with buildable to medium coverage, available in a diverse range of 40 shades.', 6)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [CategoryId], [Image], [Description], [UnitsInOrder]) VALUES (1006, N'Tools Of The Trade Brush Set', 62, 1004, NULL, N'A high-quality set of eight brushes for the eyes, cheeks, and complexion. ', 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (1000, N'Sales Staff')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (1001, N'National Manager')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[SalePersons] ON 

INSERT [dbo].[SalePersons] ([SalePersonId], [SalePersonName], [SalePersonPhone], [RoleId], [UserId], [Password], [StoreId]) VALUES (1000, N'Huu Thanh', N'0912345678', 1000, N'thanh@abc.com', N'123456', 1002)
INSERT [dbo].[SalePersons] ([SalePersonId], [SalePersonName], [SalePersonPhone], [RoleId], [UserId], [Password], [StoreId]) VALUES (1001, N'Chien Thang', N'0912345678', 1000, N'thang@hd.com', N'123456', 1000)
INSERT [dbo].[SalePersons] ([SalePersonId], [SalePersonName], [SalePersonPhone], [RoleId], [UserId], [Password], [StoreId]) VALUES (1002, N'Hải Đường', N'0912345678', 1000, N'duong@abc.com', N'123456', 1004)
INSERT [dbo].[SalePersons] ([SalePersonId], [SalePersonName], [SalePersonPhone], [RoleId], [UserId], [Password], [StoreId]) VALUES (1003, N'thiện hoàng', N'0912345678', 1000, N'hoang@cos.com', N'123456', 1003)
INSERT [dbo].[SalePersons] ([SalePersonId], [SalePersonName], [SalePersonPhone], [RoleId], [UserId], [Password], [StoreId]) VALUES (1004, N'Phương', N'0912345678', 1000, N'phuong@trinh.com', N'123456', 1001)
INSERT [dbo].[SalePersons] ([SalePersonId], [SalePersonName], [SalePersonPhone], [RoleId], [UserId], [Password], [StoreId]) VALUES (2005, N'Nhat Hoang', N'0905868665', 1000, N'hoang@abc.com', N'123456', 1000)
INSERT [dbo].[SalePersons] ([SalePersonId], [SalePersonName], [SalePersonPhone], [RoleId], [UserId], [Password], [StoreId]) VALUES (2009, N'hieu', N'0123456789', 1000, N'hieu@gmail.com', N'123', 1000)
SET IDENTITY_INSERT [dbo].[SalePersons] OFF
SET IDENTITY_INSERT [dbo].[Stores] ON 

INSERT [dbo].[Stores] ([StoreId], [StoreName], [StoreLocation]) VALUES (1000, N'Tan Binh', N'Tan Binh')
INSERT [dbo].[Stores] ([StoreId], [StoreName], [StoreLocation]) VALUES (1001, N'Binh Thanh', N'Binh Thanh')
INSERT [dbo].[Stores] ([StoreId], [StoreName], [StoreLocation]) VALUES (1002, N'Tan Phu', N'Tan Phu')
INSERT [dbo].[Stores] ([StoreId], [StoreName], [StoreLocation]) VALUES (1003, N'Phu Nhuan', N'Phu Nhuan')
INSERT [dbo].[Stores] ([StoreId], [StoreName], [StoreLocation]) VALUES (1004, N'Go Vap', N'Go Vap')
SET IDENTITY_INSERT [dbo].[Stores] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/14/2018 11:07:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/14/2018 11:07:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/14/2018 11:07:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/14/2018 11:07:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/14/2018 11:07:22 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/14/2018 11:07:22 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_SalePersons1] FOREIGN KEY([SalePersonId])
REFERENCES [dbo].[SalePersons] ([SalePersonId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_SalePersons1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Stores] FOREIGN KEY([StoreId])
REFERENCES [dbo].[Stores] ([StoreId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Stores]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[SalePersons]  WITH CHECK ADD  CONSTRAINT [FK_SalePersons_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[SalePersons] CHECK CONSTRAINT [FK_SalePersons_Roles]
GO
ALTER TABLE [dbo].[SalePersons]  WITH CHECK ADD  CONSTRAINT [FK_SalePersons_Stores] FOREIGN KEY([StoreId])
REFERENCES [dbo].[Stores] ([StoreId])
GO
ALTER TABLE [dbo].[SalePersons] CHECK CONSTRAINT [FK_SalePersons_Stores]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -480
         Left = 0
      End
      Begin Tables = 
         Begin Table = "OrderDetails"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Orders"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Products"
            Begin Extent = 
               Top = 6
               Left = 459
               Bottom = 136
               Right = 629
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SalePersons"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 6
               Left = 667
               Bottom = 119
               Right = 837
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         O' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Reve'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'r = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Reve'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Reve'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[78] 4[4] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "OrderDetails"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 178
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Orders"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 173
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Products"
            Begin Extent = 
               Top = 6
               Left = 459
               Bottom = 194
               Right = 629
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 6
               Left = 667
               Bottom = 119
               Right = 837
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SalePersons"
            Begin Extent = 
               Top = 269
               Left = 601
               Bottom = 399
               Right = 781
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'revenue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'revenue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'revenue'
GO
USE [master]
GO
ALTER DATABASE [HCosmetic1] SET  READ_WRITE 
GO
