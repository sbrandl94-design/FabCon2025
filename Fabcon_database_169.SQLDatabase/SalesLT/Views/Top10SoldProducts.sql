CREATE VIEW SalesLT.Top10SoldProducts AS
SELECT TOP 10 sod.ProductID, p.Name AS ProductName, SUM(sod.OrderQty) AS TotalSold
FROM SalesLT.SalesOrderDetail sod
JOIN SalesLT.Product p ON sod.ProductID = p.ProductID
GROUP BY sod.ProductID, p.Name
ORDER BY TotalSold DESC;

GO

