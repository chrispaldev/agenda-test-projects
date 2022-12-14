USE [AgendaOrganizer]
GO
/****** Object:  Table [dbo].[AgendaItem]    Script Date: 8/26/2022 2:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaItem](
	[AgendaId] [int] IDENTITY(1,1) NOT NULL,
	[AgendaItem] [varchar](512) NULL,
	[AgendaTypeId] [int] NULL,
	[ApproverId] [int] NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_AgendaItem] PRIMARY KEY CLUSTERED 
(
	[AgendaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaRoleMatrix]    Script Date: 8/26/2022 2:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaRoleMatrix](
	[AgendaType] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AgendaRoleMatrix] PRIMARY KEY CLUSTERED 
(
	[AgendaType] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgendaType]    Script Date: 8/26/2022 2:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgendaType](
	[AgendaTypeId] [int] NOT NULL,
	[AgendaDescription] [varchar](50) NULL,
 CONSTRAINT [PK_AgendaType] PRIMARY KEY CLUSTERED 
(
	[AgendaTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApproverRoles]    Script Date: 8/26/2022 2:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApproverRoles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleDescription] [varchar](100) NULL,
 CONSTRAINT [PK_ApproverRoles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Approvers]    Script Date: 8/26/2022 2:37:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Approvers](
	[ApproverId] [int] IDENTITY(1,1) NOT NULL,
	[ApproverName] [varchar](50) NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_Approvers] PRIMARY KEY CLUSTERED 
(
	[ApproverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AgendaItem] ON 

INSERT [dbo].[AgendaItem] ([AgendaId], [AgendaItem], [AgendaTypeId], [ApproverId], [RoleId]) VALUES (1, N'test', 1, 1, 1)
INSERT [dbo].[AgendaItem] ([AgendaId], [AgendaItem], [AgendaTypeId], [ApproverId], [RoleId]) VALUES (2, N'Test Agned', 1, 2, 1)
INSERT [dbo].[AgendaItem] ([AgendaId], [AgendaItem], [AgendaTypeId], [ApproverId], [RoleId]) VALUES (3, N'Test Agned', 1, 2, 1)
INSERT [dbo].[AgendaItem] ([AgendaId], [AgendaItem], [AgendaTypeId], [ApproverId], [RoleId]) VALUES (4, N'Test', 1, 1, 1)
INSERT [dbo].[AgendaItem] ([AgendaId], [AgendaItem], [AgendaTypeId], [ApproverId], [RoleId]) VALUES (5, N'raw', 1, 4, 2)
INSERT [dbo].[AgendaItem] ([AgendaId], [AgendaItem], [AgendaTypeId], [ApproverId], [RoleId]) VALUES (6, N'New 6 y', 2, 2, 1)
INSERT [dbo].[AgendaItem] ([AgendaId], [AgendaItem], [AgendaTypeId], [ApproverId], [RoleId]) VALUES (7, N'roleId', 1, 3, 2)
INSERT [dbo].[AgendaItem] ([AgendaId], [AgendaItem], [AgendaTypeId], [ApproverId], [RoleId]) VALUES (8, N'Chris C P', 2, 2, 1)
SET IDENTITY_INSERT [dbo].[AgendaItem] OFF
GO
INSERT [dbo].[AgendaRoleMatrix] ([AgendaType], [RoleId]) VALUES (1, 1)
INSERT [dbo].[AgendaRoleMatrix] ([AgendaType], [RoleId]) VALUES (1, 2)
INSERT [dbo].[AgendaRoleMatrix] ([AgendaType], [RoleId]) VALUES (2, 1)
INSERT [dbo].[AgendaRoleMatrix] ([AgendaType], [RoleId]) VALUES (2, 2)
INSERT [dbo].[AgendaRoleMatrix] ([AgendaType], [RoleId]) VALUES (2, 3)
GO
INSERT [dbo].[AgendaType] ([AgendaTypeId], [AgendaDescription]) VALUES (1, N'Contract')
INSERT [dbo].[AgendaType] ([AgendaTypeId], [AgendaDescription]) VALUES (2, N'Regulation')
GO
SET IDENTITY_INSERT [dbo].[ApproverRoles] ON 

INSERT [dbo].[ApproverRoles] ([RoleId], [RoleDescription]) VALUES (1, N'Manager ')
INSERT [dbo].[ApproverRoles] ([RoleId], [RoleDescription]) VALUES (2, N'Director')
INSERT [dbo].[ApproverRoles] ([RoleId], [RoleDescription]) VALUES (3, N'City Attorney')
SET IDENTITY_INSERT [dbo].[ApproverRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[Approvers] ON 

INSERT [dbo].[Approvers] ([ApproverId], [ApproverName], [RoleId]) VALUES (1, N'Manager 1', 1)
INSERT [dbo].[Approvers] ([ApproverId], [ApproverName], [RoleId]) VALUES (2, N'Manager 2', 1)
INSERT [dbo].[Approvers] ([ApproverId], [ApproverName], [RoleId]) VALUES (3, N'Director 1', 2)
INSERT [dbo].[Approvers] ([ApproverId], [ApproverName], [RoleId]) VALUES (4, N'Director 2', 2)
INSERT [dbo].[Approvers] ([ApproverId], [ApproverName], [RoleId]) VALUES (5, N'Attorney 1', 3)
INSERT [dbo].[Approvers] ([ApproverId], [ApproverName], [RoleId]) VALUES (6, N'Attorney 2', 3)
SET IDENTITY_INSERT [dbo].[Approvers] OFF
GO
ALTER TABLE [dbo].[Approvers]  WITH CHECK ADD  CONSTRAINT [FK_Approvers_ApproverRoles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[ApproverRoles] ([RoleId])
GO
ALTER TABLE [dbo].[Approvers] CHECK CONSTRAINT [FK_Approvers_ApproverRoles]
GO
USE [master]
GO
ALTER DATABASE [AgendaOrganizer] SET  READ_WRITE 
GO
