USE [Pymes]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 11/14/2019 12:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamento](
	[id_dpto] [int] IDENTITY(1,1) NOT NULL,
	[nombre_dpto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[id_dpto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Nombre_Dpto] UNIQUE NONCLUSTERED 
(
	[nombre_dpto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON
INSERT [dbo].[Departamento] ([id_dpto], [nombre_dpto]) VALUES (2, N'Administracion')
INSERT [dbo].[Departamento] ([id_dpto], [nombre_dpto]) VALUES (4, N'area Comercial')
INSERT [dbo].[Departamento] ([id_dpto], [nombre_dpto]) VALUES (9, N'Economista')
INSERT [dbo].[Departamento] ([id_dpto], [nombre_dpto]) VALUES (3, N'Finanzas')
INSERT [dbo].[Departamento] ([id_dpto], [nombre_dpto]) VALUES (5, N'Gerencia')
INSERT [dbo].[Departamento] ([id_dpto], [nombre_dpto]) VALUES (7, N'Marketing')
INSERT [dbo].[Departamento] ([id_dpto], [nombre_dpto]) VALUES (8, N'Operaciones')
INSERT [dbo].[Departamento] ([id_dpto], [nombre_dpto]) VALUES (6, N'Periodista')
INSERT [dbo].[Departamento] ([id_dpto], [nombre_dpto]) VALUES (1, N'RRHH')
SET IDENTITY_INSERT [dbo].[Departamento] OFF
/****** Object:  Table [dbo].[Empleado]    Script Date: 11/14/2019 12:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_emple] [int] IDENTITY(1,1) NOT NULL,
	[nom_emple] [varchar](30) NOT NULL,
	[ape_emple] [varchar](20) NOT NULL,
	[sueldo] [money] NOT NULL,
	[fecha_alta] [date] NOT NULL,
	[id_departamento] [int] NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[id_emple] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UK_Nombre] UNIQUE NONCLUSTERED 
(
	[nom_emple] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Empleado] ON
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (36, N'ariel', N'Zapata1122', 1200000.0000, CAST(0x52400B00 AS Date), 2, 1)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (37, N'jorge ', N'zaps', 30000.0000, CAST(0xC1270B00 AS Date), 5, 1)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (38, N'Mariel', N'Sanchez', 1000000.0000, CAST(0xDE2B0B00 AS Date), 3, 0)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (41, N'Mirian', N'Hernandez', 300000.0000, CAST(0xBAF80A00 AS Date), 2, 0)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (42, N'juan', N'Darthes', 10000.0000, CAST(0x7B3E0B00 AS Date), 1, 1)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (43, N'Susana', N'Gimenez', 50000.0000, CAST(0x86110B00 AS Date), 3, 0)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (47, N'Juan Carlos', N'Olariaga', 500000.0000, CAST(0xA5220B00 AS Date), 5, 1)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (49, N'Juana', N'De Arco', 700000.0000, CAST(0xA5220B00 AS Date), 7, 1)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (50, N'Don', N'Ramon', 500000.0000, CAST(0x55400B00 AS Date), 5, 1)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (51, N'Marcelo', N'Tinelli', 5000.0000, CAST(0x55400B00 AS Date), 6, 1)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (52, N'Sergio', N'Rivarola', 10000.0000, CAST(0x55400B00 AS Date), 7, 0)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (53, N'Daniel', N'altamirano', 70000000.0000, CAST(0x64F90A00 AS Date), 8, 1)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (54, N'ana juana', N'Prieto', 12000000.0000, CAST(0xCC230B00 AS Date), 8, 1)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (58, N'cristina', N'miente', 2000000000.0000, CAST(0x36320B00 AS Date), 5, 1)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (59, N'Silvia', N'Lallana', 80000.0000, CAST(0xC7180B00 AS Date), 6, 0)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (60, N'Kurt', N'Corbain', 200000000.0000, CAST(0x3B170B00 AS Date), 8, 1)
INSERT [dbo].[Empleado] ([id_emple], [nom_emple], [ape_emple], [sueldo], [fecha_alta], [id_departamento], [activo]) VALUES (61, N'Horacio', N'as3322225656', 1299865.0000, CAST(0x483F0B00 AS Date), 9, 1)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
/****** Object:  ForeignKey [FK_Empleado_Dpto]    Script Date: 11/14/2019 12:11:56 ******/
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Dpto] FOREIGN KEY([id_departamento])
REFERENCES [dbo].[Departamento] ([id_dpto])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Dpto]
GO
