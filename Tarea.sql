USE [master]
GO
/****** Object:  Database [Tareas_DB]    Script Date: 08/07/2022 13:13:58 ******/
CREATE DATABASE [Tareas_DB]
 CONTAINMENT = NONE
ALTER DATABASE [Tareas_DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tareas_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tareas_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tareas_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tareas_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tareas_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tareas_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tareas_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tareas_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tareas_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tareas_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tareas_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tareas_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tareas_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tareas_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tareas_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tareas_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Tareas_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tareas_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tareas_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tareas_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tareas_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tareas_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tareas_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tareas_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [Tareas_DB] SET  MULTI_USER 
GO
ALTER DATABASE [Tareas_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tareas_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tareas_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tareas_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tareas_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Tareas_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Tareas_DB', N'ON'
GO
ALTER DATABASE [Tareas_DB] SET QUERY_STORE = OFF
GO
USE [Tareas_DB]
GO
/****** Object:  Table [dbo].[DATOS_LOG]    Script Date: 08/07/2022 13:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DATOS_LOG](
	[PASSWORD] [varchar](50) NOT NULL,
	[PASSWORD_ACTIVA] [bit] NOT NULL,
	[ID_PASSWORD] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_DATOS_LOG] PRIMARY KEY CLUSTERED 
(
	[ID_PASSWORD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAREAS]    Script Date: 08/07/2022 13:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAREAS](
	[ID_TAREA] [int] IDENTITY(1,1) NOT NULL,
	[CONTENIDO] [text] NOT NULL,
	[ESTADO_TAREA] [varchar](50) NOT NULL,
	[TIENE_FECHA_INICIAL] [varchar](50) NOT NULL,
	[FECHA_INICIAL] [datetime] NOT NULL,
	[TIENE_FECHA_FINAL] [varchar](50) NOT NULL,
	[FECHA_FINAL] [datetime] NOT NULL,
	[TIENE_RECORDATORIO] [varchar](50) NOT NULL,
	[CAMBIO_TEMA_POR_DEFECTO] [varchar](50) NOT NULL,
	[COLOR_TAREA] [varchar](50) NOT NULL,
	[COLOR_LETRA] [varchar](50) NOT NULL,
	[PRIORIDAD] [int] NOT NULL,
 CONSTRAINT [PK_TAREAS] PRIMARY KEY CLUSTERED 
(
	[ID_TAREA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DATOS_LOG] ON 

INSERT [dbo].[DATOS_LOG] ([PASSWORD], [PASSWORD_ACTIVA], [ID_PASSWORD]) VALUES (N'1111', 1, 1)
INSERT [dbo].[DATOS_LOG] ([PASSWORD], [PASSWORD_ACTIVA], [ID_PASSWORD]) VALUES (N'2222', 1, 2)
INSERT [dbo].[DATOS_LOG] ([PASSWORD], [PASSWORD_ACTIVA], [ID_PASSWORD]) VALUES (N'7777', 1, 3)
INSERT [dbo].[DATOS_LOG] ([PASSWORD], [PASSWORD_ACTIVA], [ID_PASSWORD]) VALUES (N'7777', 0, 4)
INSERT [dbo].[DATOS_LOG] ([PASSWORD], [PASSWORD_ACTIVA], [ID_PASSWORD]) VALUES (N'aaaa', 0, 5)
INSERT [dbo].[DATOS_LOG] ([PASSWORD], [PASSWORD_ACTIVA], [ID_PASSWORD]) VALUES (N'1111', 0, 6)
INSERT [dbo].[DATOS_LOG] ([PASSWORD], [PASSWORD_ACTIVA], [ID_PASSWORD]) VALUES (N'4444', 0, 7)
INSERT [dbo].[DATOS_LOG] ([PASSWORD], [PASSWORD_ACTIVA], [ID_PASSWORD]) VALUES (N'aaaa', 0, 8)
INSERT [dbo].[DATOS_LOG] ([PASSWORD], [PASSWORD_ACTIVA], [ID_PASSWORD]) VALUES (N'aaaa', 0, 9)
INSERT [dbo].[DATOS_LOG] ([PASSWORD], [PASSWORD_ACTIVA], [ID_PASSWORD]) VALUES (N'aaaa', 0, 10)
INSERT [dbo].[DATOS_LOG] ([PASSWORD], [PASSWORD_ACTIVA], [ID_PASSWORD]) VALUES (N'aaaa', 0, 11)
INSERT [dbo].[DATOS_LOG] ([PASSWORD], [PASSWORD_ACTIVA], [ID_PASSWORD]) VALUES (N'aaaa', 0, 12)
SET IDENTITY_INSERT [dbo].[DATOS_LOG] OFF
GO
SET IDENTITY_INSERT [dbo].[TAREAS] ON 

INSERT [dbo].[TAREAS] ([ID_TAREA], [CONTENIDO], [ESTADO_TAREA], [TIENE_FECHA_INICIAL], [FECHA_INICIAL], [TIENE_FECHA_FINAL], [FECHA_FINAL], [TIENE_RECORDATORIO], [CAMBIO_TEMA_POR_DEFECTO], [COLOR_TAREA], [COLOR_LETRA], [PRIORIDAD]) VALUES (32, N'Tarea de prueba 1', N'0', N'1', CAST(N'2022-07-08T12:41:00.000' AS DateTime), N'1', CAST(N'2022-07-15T12:41:00.000' AS DateTime), N'1', N'0', N'255-152-251-152', N'255-255-255-255', 2)
INSERT [dbo].[TAREAS] ([ID_TAREA], [CONTENIDO], [ESTADO_TAREA], [TIENE_FECHA_INICIAL], [FECHA_INICIAL], [TIENE_FECHA_FINAL], [FECHA_FINAL], [TIENE_RECORDATORIO], [CAMBIO_TEMA_POR_DEFECTO], [COLOR_TAREA], [COLOR_LETRA], [PRIORIDAD]) VALUES (33, N'Tarea de prueba 2', N'2', N'0', CAST(N'2022-07-08T12:48:24.673' AS DateTime), N'1', CAST(N'2022-07-08T12:41:00.000' AS DateTime), N'1', N'0', N'255-255-228-225', N'255-255-255-255', 2)
INSERT [dbo].[TAREAS] ([ID_TAREA], [CONTENIDO], [ESTADO_TAREA], [TIENE_FECHA_INICIAL], [FECHA_INICIAL], [TIENE_FECHA_FINAL], [FECHA_FINAL], [TIENE_RECORDATORIO], [CAMBIO_TEMA_POR_DEFECTO], [COLOR_TAREA], [COLOR_LETRA], [PRIORIDAD]) VALUES (34, N'Tarea de prueba 3', N'0', N'1', CAST(N'2018-07-08T12:42:00.000' AS DateTime), N'1', CAST(N'2022-10-08T12:42:00.000' AS DateTime), N'0', N'1', N'255-64-0-64', N'255-164-101-164', 0)
INSERT [dbo].[TAREAS] ([ID_TAREA], [CONTENIDO], [ESTADO_TAREA], [TIENE_FECHA_INICIAL], [FECHA_INICIAL], [TIENE_FECHA_FINAL], [FECHA_FINAL], [TIENE_RECORDATORIO], [CAMBIO_TEMA_POR_DEFECTO], [COLOR_TAREA], [COLOR_LETRA], [PRIORIDAD]) VALUES (35, N'Tarea de prueba 4', N'1', N'1', CAST(N'2020-07-08T12:43:00.000' AS DateTime), N'1', CAST(N'2023-07-08T12:43:00.000' AS DateTime), N'0', N'0', N'255-255-228-225', N'255-255-255-255', 1)
INSERT [dbo].[TAREAS] ([ID_TAREA], [CONTENIDO], [ESTADO_TAREA], [TIENE_FECHA_INICIAL], [FECHA_INICIAL], [TIENE_FECHA_FINAL], [FECHA_FINAL], [TIENE_RECORDATORIO], [CAMBIO_TEMA_POR_DEFECTO], [COLOR_TAREA], [COLOR_LETRA], [PRIORIDAD]) VALUES (36, N'Tarea de prueba 5', N'2', N'0', CAST(N'2022-07-08T12:51:14.767' AS DateTime), N'1', CAST(N'2022-07-08T12:51:00.000' AS DateTime), N'1', N'0', N'255-255-228-225', N'255-255-255-255', 2)
INSERT [dbo].[TAREAS] ([ID_TAREA], [CONTENIDO], [ESTADO_TAREA], [TIENE_FECHA_INICIAL], [FECHA_INICIAL], [TIENE_FECHA_FINAL], [FECHA_FINAL], [TIENE_RECORDATORIO], [CAMBIO_TEMA_POR_DEFECTO], [COLOR_TAREA], [COLOR_LETRA], [PRIORIDAD]) VALUES (37, N'Tarea de prueba 6', N'1', N'0', CAST(N'2022-07-08T12:51:06.513' AS DateTime), N'0', CAST(N'2022-07-08T12:51:06.513' AS DateTime), N'0', N'0', N'255-255-228-225', N'255-255-255-255', 0)
INSERT [dbo].[TAREAS] ([ID_TAREA], [CONTENIDO], [ESTADO_TAREA], [TIENE_FECHA_INICIAL], [FECHA_INICIAL], [TIENE_FECHA_FINAL], [FECHA_FINAL], [TIENE_RECORDATORIO], [CAMBIO_TEMA_POR_DEFECTO], [COLOR_TAREA], [COLOR_LETRA], [PRIORIDAD]) VALUES (38, N'Tarea de prueba 7', N'0', N'1', CAST(N'2018-01-02T12:50:00.000' AS DateTime), N'1', CAST(N'2020-07-08T12:50:00.000' AS DateTime), N'1', N'0', N'255-255-228-225', N'255-255-255-255', 2)
INSERT [dbo].[TAREAS] ([ID_TAREA], [CONTENIDO], [ESTADO_TAREA], [TIENE_FECHA_INICIAL], [FECHA_INICIAL], [TIENE_FECHA_FINAL], [FECHA_FINAL], [TIENE_RECORDATORIO], [CAMBIO_TEMA_POR_DEFECTO], [COLOR_TAREA], [COLOR_LETRA], [PRIORIDAD]) VALUES (39, N'Tarea de prueba 8', N'0', N'1', CAST(N'2019-09-08T12:50:00.000' AS DateTime), N'1', CAST(N'2023-11-08T12:50:00.000' AS DateTime), N'0', N'0', N'255-255-228-225', N'255-255-255-255', 1)
INSERT [dbo].[TAREAS] ([ID_TAREA], [CONTENIDO], [ESTADO_TAREA], [TIENE_FECHA_INICIAL], [FECHA_INICIAL], [TIENE_FECHA_FINAL], [FECHA_FINAL], [TIENE_RECORDATORIO], [CAMBIO_TEMA_POR_DEFECTO], [COLOR_TAREA], [COLOR_LETRA], [PRIORIDAD]) VALUES (40, N'Tarea de prueba 8', N'0', N'1', CAST(N'2022-07-08T12:50:00.000' AS DateTime), N'1', CAST(N'2024-07-08T12:50:00.000' AS DateTime), N'1', N'0', N'255-255-228-225', N'255-255-255-255', 0)
INSERT [dbo].[TAREAS] ([ID_TAREA], [CONTENIDO], [ESTADO_TAREA], [TIENE_FECHA_INICIAL], [FECHA_INICIAL], [TIENE_FECHA_FINAL], [FECHA_FINAL], [TIENE_RECORDATORIO], [CAMBIO_TEMA_POR_DEFECTO], [COLOR_TAREA], [COLOR_LETRA], [PRIORIDAD]) VALUES (41, N'Tarea de prueba 9', N'2', N'1', CAST(N'2015-07-08T12:50:00.000' AS DateTime), N'0', CAST(N'2022-07-08T12:50:17.830' AS DateTime), N'0', N'0', N'255-255-228-225', N'255-255-255-255', 1)
INSERT [dbo].[TAREAS] ([ID_TAREA], [CONTENIDO], [ESTADO_TAREA], [TIENE_FECHA_INICIAL], [FECHA_INICIAL], [TIENE_FECHA_FINAL], [FECHA_FINAL], [TIENE_RECORDATORIO], [CAMBIO_TEMA_POR_DEFECTO], [COLOR_TAREA], [COLOR_LETRA], [PRIORIDAD]) VALUES (42, N'Tarea de prueba 10', N'2', N'0', CAST(N'2022-07-08T12:50:11.037' AS DateTime), N'1', CAST(N'2022-07-08T12:50:00.000' AS DateTime), N'1', N'0', N'255-255-228-225', N'255-255-255-255', 0)
INSERT [dbo].[TAREAS] ([ID_TAREA], [CONTENIDO], [ESTADO_TAREA], [TIENE_FECHA_INICIAL], [FECHA_INICIAL], [TIENE_FECHA_FINAL], [FECHA_FINAL], [TIENE_RECORDATORIO], [CAMBIO_TEMA_POR_DEFECTO], [COLOR_TAREA], [COLOR_LETRA], [PRIORIDAD]) VALUES (43, N'Tarea de prueba 11', N'1', N'1', CAST(N'2022-07-08T12:50:00.000' AS DateTime), N'0', CAST(N'2022-07-08T12:53:21.610' AS DateTime), N'0', N'0', N'255-255-228-225', N'255-255-255-255', 1)
INSERT [dbo].[TAREAS] ([ID_TAREA], [CONTENIDO], [ESTADO_TAREA], [TIENE_FECHA_INICIAL], [FECHA_INICIAL], [TIENE_FECHA_FINAL], [FECHA_FINAL], [TIENE_RECORDATORIO], [CAMBIO_TEMA_POR_DEFECTO], [COLOR_TAREA], [COLOR_LETRA], [PRIORIDAD]) VALUES (44, N'Tarea de prueba 12 ', N'0', N'0', CAST(N'2022-07-08T13:07:26.157' AS DateTime), N'1', CAST(N'2020-07-08T13:07:00.000' AS DateTime), N'1', N'0', N'255-255-228-225', N'255-255-255-255', 2)
INSERT [dbo].[TAREAS] ([ID_TAREA], [CONTENIDO], [ESTADO_TAREA], [TIENE_FECHA_INICIAL], [FECHA_INICIAL], [TIENE_FECHA_FINAL], [FECHA_FINAL], [TIENE_RECORDATORIO], [CAMBIO_TEMA_POR_DEFECTO], [COLOR_TAREA], [COLOR_LETRA], [PRIORIDAD]) VALUES (45, N'Tarea de prueba 13', N'0', N'0', CAST(N'2022-07-08T13:07:47.527' AS DateTime), N'0', CAST(N'2022-07-08T13:07:47.527' AS DateTime), N'0', N'0', N'255-255-228-225', N'255-255-255-255', 2)
SET IDENTITY_INSERT [dbo].[TAREAS] OFF
GO
USE [master]
GO
ALTER DATABASE [Tareas_DB] SET  READ_WRITE 
GO
