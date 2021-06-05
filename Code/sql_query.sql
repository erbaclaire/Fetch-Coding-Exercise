-- When considering average spend from receipts with 'rewardsReceiptStatus’ of ‘Accepted’ or ‘Rejected’, which is greater?
-- When considering total number of items purchased from receipts with 'rewardsReceiptStatus’ of ‘Accepted’ or ‘Rejected’, which is greater

SELECT AVERAGE(Receipts.totalSpent) AS avgSpend, SUM(ReceiptItems.totalItemsPurchased) 
FROM Receipts
LEFT JOIN (SELECT COUNT(*) AS totalItemsPurchased 
	       FROM ReceiptItems
           GROUP BY _id) AS ReceiptItems
ON Receipt._id = ReceiptItems.receiptId
WHERE rewardsReceiptStatus IN ('Accepted', 'Rejected')
GROUP BY rewardsReceiptStatus;