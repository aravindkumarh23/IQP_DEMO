--Demo 4 Approximate Count Distinct, 2019

USE AdventureWorks2017; 
GO

SELECT * INTO TEST 
FROM bigTransactionHistory;


ALTER DATABASE [AdventureWorks2017] SET COMPATIBILITY_LEVEL = 140;
GO
DBCC DROPCLEANBUFFERS; 
--31,263,601
SELECT COUNT(DISTINCT TransactionID)
FROM dbo.test;

ALTER DATABASE [AdventureWorks2017] SET COMPATIBILITY_LEVEL = 150;
GO

--31,332,766
DBCC DROPCLEANBUFFERS;
SELECT APPROX_COUNT_DISTINCT(TransactionID) 
FROM dbo.test;
