CREATE VIEW SalesLT.MostSoldProduct AS
SELECT TOP 1 sod.ProductID, p.Name AS ProductName, SUM(sod.OrderQty) AS TotalSold
FROM SalesLT.SalesOrderDetail sod
JOIN SalesLT.Product p ON sod.ProductID = p.ProductID
GROUP BY sod.ProductID, p.Name
ORDER BY TotalSold DESC;

GO

