USE [master]
GO
/****** Object:  Database [BdTallerMecanico]    Script Date: 23/4/2024 16:58:30 ******/
CREATE DATABASE [BdTallerMecanico]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BdTallerMecanico', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BdTallerMecanico.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BdTallerMecanico_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BdTallerMecanico_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BdTallerMecanico] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BdTallerMecanico].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BdTallerMecanico] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET ARITHABORT OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BdTallerMecanico] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BdTallerMecanico] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BdTallerMecanico] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BdTallerMecanico] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET RECOVERY FULL 
GO
ALTER DATABASE [BdTallerMecanico] SET  MULTI_USER 
GO
ALTER DATABASE [BdTallerMecanico] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BdTallerMecanico] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BdTallerMecanico] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BdTallerMecanico] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BdTallerMecanico] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BdTallerMecanico] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BdTallerMecanico', N'ON'
GO
ALTER DATABASE [BdTallerMecanico] SET QUERY_STORE = ON
GO
ALTER DATABASE [BdTallerMecanico] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BdTallerMecanico]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 23/4/2024 16:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 23/4/2024 16:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[IdColor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[IdColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleRevision]    Script Date: 23/4/2024 16:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleRevision](
	[IdDetalle] [int] IDENTITY(1,1) NOT NULL,
	[IdRevision] [int] NOT NULL,
	[IdServicio] [int] NOT NULL,
 CONSTRAINT [PK_DetalleRevision] PRIMARY KEY CLUSTERED 
(
	[IdDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 23/4/2024 16:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marca](
	[IdMarca] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[IdMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Revision]    Script Date: 23/4/2024 16:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Revision](
	[IdRevision] [int] IDENTITY(1,1) NOT NULL,
	[IdVehiculo] [int] NOT NULL,
	[Fecha_ingreso] [datetime2](7) NOT NULL,
	[Hora] [time](7) NOT NULL,
 CONSTRAINT [PK_Revision] PRIMARY KEY CLUSTERED 
(
	[IdRevision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 23/4/2024 16:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicio](
	[IdServicio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_servicio] [nvarchar](max) NOT NULL,
	[Precio_estimado] [float] NOT NULL,
 CONSTRAINT [PK_Servicio] PRIMARY KEY CLUSTERED 
(
	[IdServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehiculo]    Script Date: 23/4/2024 16:58:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehiculo](
	[IdVehiculo] [int] IDENTITY(1,1) NOT NULL,
	[Matricula] [nvarchar](max) NOT NULL,
	[Modelo] [nvarchar](max) NOT NULL,
	[ColorIdColor] [int] NOT NULL,
	[MarcaIdMarca] [int] NOT NULL,
 CONSTRAINT [PK_Vehiculo] PRIMARY KEY CLUSTERED 
(
	[IdVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_DetalleRevision_IdRevision]    Script Date: 23/4/2024 16:58:30 ******/
CREATE NONCLUSTERED INDEX [IX_DetalleRevision_IdRevision] ON [dbo].[DetalleRevision]
(
	[IdRevision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DetalleRevision_IdServicio]    Script Date: 23/4/2024 16:58:30 ******/
CREATE NONCLUSTERED INDEX [IX_DetalleRevision_IdServicio] ON [dbo].[DetalleRevision]
(
	[IdServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Revision_IdVehiculo]    Script Date: 23/4/2024 16:58:30 ******/
CREATE NONCLUSTERED INDEX [IX_Revision_IdVehiculo] ON [dbo].[Revision]
(
	[IdVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vehiculo_ColorIdColor]    Script Date: 23/4/2024 16:58:30 ******/
CREATE NONCLUSTERED INDEX [IX_Vehiculo_ColorIdColor] ON [dbo].[Vehiculo]
(
	[ColorIdColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vehiculo_MarcaIdMarca]    Script Date: 23/4/2024 16:58:30 ******/
CREATE NONCLUSTERED INDEX [IX_Vehiculo_MarcaIdMarca] ON [dbo].[Vehiculo]
(
	[MarcaIdMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Revision] ADD  DEFAULT ((0)) FOR [IdVehiculo]
GO
ALTER TABLE [dbo].[Revision] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [Fecha_ingreso]
GO
ALTER TABLE [dbo].[Revision] ADD  DEFAULT ('00:00:00') FOR [Hora]
GO
ALTER TABLE [dbo].[Servicio] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [Precio_estimado]
GO
ALTER TABLE [dbo].[Vehiculo] ADD  DEFAULT ((0)) FOR [ColorIdColor]
GO
ALTER TABLE [dbo].[Vehiculo] ADD  DEFAULT ((0)) FOR [MarcaIdMarca]
GO
ALTER TABLE [dbo].[DetalleRevision]  WITH CHECK ADD  CONSTRAINT [FK_DetalleRevision_Revision_IdRevision] FOREIGN KEY([IdRevision])
REFERENCES [dbo].[Revision] ([IdRevision])
GO
ALTER TABLE [dbo].[DetalleRevision] CHECK CONSTRAINT [FK_DetalleRevision_Revision_IdRevision]
GO
ALTER TABLE [dbo].[DetalleRevision]  WITH CHECK ADD  CONSTRAINT [FK_DetalleRevision_Servicio_IdServicio] FOREIGN KEY([IdServicio])
REFERENCES [dbo].[Servicio] ([IdServicio])
GO
ALTER TABLE [dbo].[DetalleRevision] CHECK CONSTRAINT [FK_DetalleRevision_Servicio_IdServicio]
GO
ALTER TABLE [dbo].[Revision]  WITH CHECK ADD  CONSTRAINT [FK_Revision_Vehiculo_IdVehiculo] FOREIGN KEY([IdVehiculo])
REFERENCES [dbo].[Vehiculo] ([IdVehiculo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Revision] CHECK CONSTRAINT [FK_Revision_Vehiculo_IdVehiculo]
GO
ALTER TABLE [dbo].[Vehiculo]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculo_Color_ColorIdColor] FOREIGN KEY([ColorIdColor])
REFERENCES [dbo].[Color] ([IdColor])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Vehiculo] CHECK CONSTRAINT [FK_Vehiculo_Color_ColorIdColor]
GO
ALTER TABLE [dbo].[Vehiculo]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculo_Marca_MarcaIdMarca] FOREIGN KEY([MarcaIdMarca])
REFERENCES [dbo].[Marca] ([IdMarca])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Vehiculo] CHECK CONSTRAINT [FK_Vehiculo_Marca_MarcaIdMarca]
GO
USE [master]
GO
ALTER DATABASE [BdTallerMecanico] SET  READ_WRITE 
GO
