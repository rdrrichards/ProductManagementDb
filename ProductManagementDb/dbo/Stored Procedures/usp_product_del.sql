﻿


/*****************************************************************
**	Table Name: product
**	Procedure Name: usp_product_del
**	Author: Richard Richards
**	Created: 06/23/2015
**	Copyright: QIQO Software, (c) 2015
******************************************************************/

CREATE PROC [dbo].[usp_product_del]
	@product_key int,
	@key int out
AS
SET NOCOUNT ON

BEGIN TRY
	DELETE FROM product
	WHERE [product_key] = @product_key;
	SELECT @key = @@ROWCOUNT;
END TRY
BEGIN CATCH
		EXEC usp_LogError 'product', 'usp_product_del';
	THROW;
END CATCH

SET NOCOUNT OFF




