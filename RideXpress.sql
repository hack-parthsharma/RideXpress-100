CREATE DATABASE [RideXpress]
Go
USE [RideXpress]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 5/9/2016 10:33:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Car](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Make] [varchar](50) NOT NULL,
	[Model] [varchar](50) NOT NULL,
	[Trim] [varchar](50) NOT NULL,
	[Year] [int] NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[CityMPG] [int] NOT NULL,
	[HighwayMPG] [int] NOT NULL,
	[IsAutomatic] [bit] NOT NULL,
	[HourlyRate] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[IncidentReport]    Script Date: 2/2/2018 2:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[IncidentReport](
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
	[CarID] [int] NOT NULL,
	[DateOfIncident] [datetime] NOT NULL,
	[ReportName] [varchar](50) NOT NULL,
	[ReportDescription] [varchar](200) NOT NULL,
	[DateOfReport] [datetime] NOT NULL,
	PRIMARY KEY (ReportID)
)
GO
