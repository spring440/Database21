-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<ROSA,,AQUINO>
-- Create date: <APRIL 25,2017,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE Enter_Presentation 
	-- Add the parameters for the stored procedure here
	@Presenter nvarchar(128),
	@Presentation nvarchar(128),
	@city		nvarchar(70),
	@level		nvarchar(25),

AS
BEGIN TRY
	INSERT INTO Presentation (Presentation_title,Presenter_name, City, Diff_id) VALUES
		(@Presentation, @Presenter, @city, (Select Diff_id from Difficulty where Diff_title = @level)
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
END TRY
BEGIN CATCH
	PRINT ' ERROR WITH PROCEDURE, COULD NOT ENTER DATA';
END CATCH;
GO
Execute Enter_Presentation 'Speaker1', 'Presentation1','New York','beginner';
GO

Execute Enter_Presentation 'Speaker1', 'Presentation2','New York','beginner';
GO

-- stored procedure 2
CREATE PROCEDURE Select_Presentation
(
@city nvarchar(128),
@Level nvarchar(128)
)
AS
BEGIN TRY 
	SELECT * FROM Presentation WHERE City = @city AND Diff_id = (Select Diff_id from Difficulty where Diff_title =@Level);
END TRY
BEGIN CATCH
	PRINT 'ERROR  WITH PROCEDURE Select_Presentation. COULD NOT SELECT DATA';
END CATCH;
GO

Execute selectPresentation 'Budapest', 'Intermediate';
GO

-- Backup: SQL SATURDAY DB
BEGIN TRY
BACKUP DATABASE SQLSaturday
	TO DISK = '\SQLServerBackups\SQLSat.Bak'
   WITH FORMAT,
      MEDIANAME = 'SQLSaturdayBackups',
      NAME = 'Full Backup of SQLSaturday';
END TRY
BEGIN CATCH
	PRINT 'ERROR OCCURRED WITH THE BACKUP. ';
END CATCH;
GO