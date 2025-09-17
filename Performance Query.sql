SELECT D.ReportDate, D.Value Deposits, L.Value Loans, G.Value NPL, II.Value Interest_income, 
IE.Value Interest_Expense, II.Value - IE.Value AS Net_Interest_Income,  
NII.Value as NonInterestIncome, OE.Value OperatingExpense, (II.Value - IE.Value) + NII.Value AS Total_Operating_income,
((II.Value - IE.Value) + NII.Value) - OE.Value AS PBT, PAT.Value as Proft_After_Tax, SE.Value AS ShareHolder_Equity, 
TL.Value as Total_liabilities, TL.Value + SE.Value as Total_Assets
FROM dbo.CustomerDeposits D
JOIN dbo.LoansAndAdvances L
ON D.ReportDate = L.ReportDate
JOIN dbo.ProfitBeforeTax P
ON P.ReportDate = D.ReportDate
JOIN dbo.GrossNPLs G
ON G.ReportDate = D.ReportDate
JOIN dbo.InterestIncome II
ON II.ReportDate = D.ReportDate
JOIN dbo.InterestExpense IE
ON IE.ReportDate = D.ReportDate
JOIN dbo.NonInterestIncome NII
ON NII.ReportDate = D.ReportDate
JOIN dbo.OperatingExpenses OE
ON OE.ReportDate = D.ReportDate
JOIN dbo.ProfitAfterTax PAT
ON PAT.ReportDate = D.ReportDate
JOIN dbo.ShareholdersEquity SE
ON SE.ReportDate = D.ReportDate
JOIN dbo.TotalLiabilities AS TL
ON TL.ReportDate = D.ReportDate
ORDER BY D.ReportDate DESC
