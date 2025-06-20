USE [master]
GO

/****** Object:  Database [AppointmentScheduler]    Script Date: 6.6.2025 �. 9:25:46 ******/
CREATE DATABASE [AppointmentScheduler]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AppointmentScheduler', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AppointmentScheduler.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AppointmentScheduler_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AppointmentScheduler_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AppointmentScheduler].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [AppointmentScheduler] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET ARITHABORT OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [AppointmentScheduler] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [AppointmentScheduler] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET  ENABLE_BROKER 
GO

ALTER DATABASE [AppointmentScheduler] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [AppointmentScheduler] SET READ_COMMITTED_SNAPSHOT ON 
GO

ALTER DATABASE [AppointmentScheduler] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET RECOVERY FULL 
GO

ALTER DATABASE [AppointmentScheduler] SET  MULTI_USER 
GO

ALTER DATABASE [AppointmentScheduler] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [AppointmentScheduler] SET DB_CHAINING OFF 
GO

ALTER DATABASE [AppointmentScheduler] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [AppointmentScheduler] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [AppointmentScheduler] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [AppointmentScheduler] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [AppointmentScheduler] SET QUERY_STORE = OFF
GO

ALTER DATABASE [AppointmentScheduler] SET  READ_WRITE 
GO


