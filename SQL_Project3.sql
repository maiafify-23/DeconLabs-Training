SELECT 
    Product,
    COUNT(OrderID) AS Total_Orders,
    SUM(Quantity) AS Total_Units_Sold,
    SUM(TotalPrice) AS Total_Revenue
FROM 
    SalesTable
GROUP BY 
    Product
ORDER BY 
    Total_Revenue DESC;
    SELECT 
    ReferralSource,
    COUNT(OrderID) AS Number_Of_Orders,
    SUM(TotalPrice) AS Total_Sales_Generated,
    AVG(TotalPrice) AS Average_Order_Value
FROM 
    SalesTable
GROUP BY 
    ReferralSource
ORDER BY 
    Total_Sales_Generated DESC;
    SELECT 
    OrderID,
    CustomerID,
    Date,
    Product,
    TotalPrice,
    PaymentMethod
FROM 
    SalesTable
WHERE 
    TotalPrice > 2000 
    AND OrderStatus NOT IN ('Cancelled', 'Returned')
ORDER BY 
    TotalPrice DESC;
    SELECT 
    OrderStatus,
    COUNT(OrderID) AS Total_Count,
    SUM(TotalPrice) AS Total_Financial_Impact
FROM 
    SalesTable
GROUP BY 
    OrderStatus
ORDER BY 
    Total_Count DESC;
    SELECT 
    PaymentMethod,
    COUNT(OrderID) AS Usage_Frequency,
    SUM(TotalPrice) AS Total_Amount,
    AVG(TotalPrice) AS Avg_Spent_Per_Order
FROM 
    SalesTable
GROUP BY 
    PaymentMethod
ORDER BY 
    Usage_Frequency DESC;
    
