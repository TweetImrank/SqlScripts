SELECT 
    c.[No_] AS [No.],
    c.[Name],
    ISNULL((
        SELECT SUM(dcle.[Amount])
        FROM [CRONUS UK Ltd_$Detailed Cust_ Ledg_ Entry$437dbf0e-84ff-417a-965d-ed2bb9650972] AS dcle
        INNER JOIN [CRONUS UK Ltd_$Cust_ Ledger Entry$437dbf0e-84ff-417a-965d-ed2bb9650972] AS cle
            ON dcle.[Cust_ Ledger Entry No_] = cle.[Entry No_]
        WHERE cle.[Customer No_] = c.[No_]
    ), 0) AS [Balance]
FROM [CRONUS UK Ltd_$Customer$437dbf0e-84ff-417a-965d-ed2bb9650972] AS c
ORDER BY c.[No_];