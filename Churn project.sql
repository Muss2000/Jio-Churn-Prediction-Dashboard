create database db_churn;

Select db_churn;

select count(*) from stg_churn;

SELECT * 
FROM stg_Churn 
LIMIT 10;

SELECT Gender, Count(Gender) as TotalCount,
Count(Gender) * 1.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by Gender;

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 1.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by Contract;


SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from stg_Churn) * 100  as RevPercentage
from stg_Churn
Group by Customer_Status;

SELECT State, Count(State) as TotalCount,
Count(State) * 1.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by State
Order by Percentage desc;

#Data Exploration – Check Nulls

SELECT 
    SUM(CASE WHEN Customer_ID IS NULL OR Customer_ID = '' THEN 1 ELSE 0 END) AS Customer_ID_Null_Count,
    SUM(CASE WHEN Gender IS NULL OR Gender = '' THEN 1 ELSE 0 END) AS Gender_Null_Count,
    SUM(CASE WHEN Age IS NULL OR Age = '' THEN 1 ELSE 0 END) AS Age_Null_Count,
    SUM(CASE WHEN Married IS NULL OR Married = '' THEN 1 ELSE 0 END) AS Married_Null_Count,
    SUM(CASE WHEN State IS NULL OR State = '' THEN 1 ELSE 0 END) AS State_Null_Count,
    SUM(CASE WHEN Number_of_Referrals IS NULL OR Number_of_Referrals = '' THEN 1 ELSE 0 END) AS Number_of_Referrals_Null_Count,
    SUM(CASE WHEN Tenure_in_Months IS NULL OR Tenure_in_Months = '' THEN 1 ELSE 0 END) AS Tenure_in_Months_Null_Count,
    SUM(CASE WHEN Value_Deal IS NULL OR Value_Deal = '' THEN 1 ELSE 0 END) AS Value_Deal_Null_Count,
    SUM(CASE WHEN Phone_Service IS NULL OR Phone_Service = '' THEN 1 ELSE 0 END) AS Phone_Service_Null_Count,
    SUM(CASE WHEN Multiple_Lines IS NULL OR Multiple_Lines = '' THEN 1 ELSE 0 END) AS Multiple_Lines_Null_Count,
    SUM(CASE WHEN Internet_Service IS NULL OR Internet_Service = '' THEN 1 ELSE 0 END) AS Internet_Service_Null_Count,
    SUM(CASE WHEN Internet_Type IS NULL OR Internet_Type = '' THEN 1 ELSE 0 END) AS Internet_Type_Null_Count,
    SUM(CASE WHEN Online_Security IS NULL OR Online_Security = '' THEN 1 ELSE 0 END) AS Online_Security_Null_Count,
    SUM(CASE WHEN Online_Backup IS NULL OR Online_Backup = '' THEN 1 ELSE 0 END) AS Online_Backup_Null_Count,
    SUM(CASE WHEN Device_Protection_Plan IS NULL OR Device_Protection_Plan = '' THEN 1 ELSE 0 END) AS Device_Protection_Plan_Null_Count,
    SUM(CASE WHEN Premium_Support IS NULL OR Premium_Support = '' THEN 1 ELSE 0 END) AS Premium_Support_Null_Count,
    SUM(CASE WHEN Streaming_TV IS NULL OR Streaming_TV = '' THEN 1 ELSE 0 END) AS Streaming_TV_Null_Count,
    SUM(CASE WHEN Streaming_Movies IS NULL OR Streaming_Movies = '' THEN 1 ELSE 0 END) AS Streaming_Movies_Null_Count,
    SUM(CASE WHEN Streaming_Music IS NULL OR Streaming_Music = '' THEN 1 ELSE 0 END) AS Streaming_Music_Null_Count,
    SUM(CASE WHEN Unlimited_Data IS NULL OR Unlimited_Data = '' THEN 1 ELSE 0 END) AS Unlimited_Data_Null_Count,
    SUM(CASE WHEN Contract IS NULL OR Contract = '' THEN 1 ELSE 0 END) AS Contract_Null_Count,
    SUM(CASE WHEN Paperless_Billing IS NULL OR Paperless_Billing = '' THEN 1 ELSE 0 END) AS Paperless_Billing_Null_Count,
    SUM(CASE WHEN Payment_Method IS NULL OR Payment_Method = '' THEN 1 ELSE 0 END) AS Payment_Method_Null_Count,
    SUM(CASE WHEN Monthly_Charge IS NULL OR Monthly_Charge = '' THEN 1 ELSE 0 END) AS Monthly_Charge_Null_Count,
    SUM(CASE WHEN Total_Charges IS NULL OR Total_Charges = '' THEN 1 ELSE 0 END) AS Total_Charges_Null_Count,
    SUM(CASE WHEN Total_Refunds IS NULL OR Total_Refunds = '' THEN 1 ELSE 0 END) AS Total_Refunds_Null_Count,
    SUM(CASE WHEN Total_Extra_Data_Charges IS NULL OR Total_Extra_Data_Charges = '' THEN 1 ELSE 0 END) AS Total_Extra_Data_Charges_Null_Count,
    SUM(CASE WHEN Total_Long_Distance_Charges IS NULL OR Total_Long_Distance_Charges = '' THEN 1 ELSE 0 END) AS Total_Long_Distance_Charges_Null_Count,
    SUM(CASE WHEN Total_Revenue IS NULL OR Total_Revenue = '' THEN 1 ELSE 0 END) AS Total_Revenue_Null_Count,
    SUM(CASE WHEN Customer_Status IS NULL OR Customer_Status = '' THEN 1 ELSE 0 END) AS Customer_Status_Null_Count,
    SUM(CASE WHEN Churn_Category IS NULL OR Churn_Category = '' THEN 1 ELSE 0 END) AS Churn_Category_Null_Count,
    SUM(CASE WHEN Churn_Reason IS NULL OR Churn_Reason = '' THEN 1 ELSE 0 END) AS Churn_Reason_Null_Count
FROM stg_Churn;

# Replace



CREATE TABLE prod_Churn (
    Customer_ID VARCHAR(255),
    Gender VARCHAR(50),
    Age INT,
    Married VARCHAR(50),
    State VARCHAR(255),
    Number_of_Referrals INT,
    Tenure_in_Months INT,
    Value_Deal VARCHAR(255),
    Phone_Service VARCHAR(50),
    Multiple_Lines VARCHAR(50),
    Internet_Service VARCHAR(50),
    Internet_Type VARCHAR(255),
    Online_Security VARCHAR(50),
    Online_Backup VARCHAR(50),
    Device_Protection_Plan VARCHAR(50),
    Premium_Support VARCHAR(50),
    Streaming_TV VARCHAR(50),
    Streaming_Movies VARCHAR(50),
    Streaming_Music VARCHAR(50),
    Unlimited_Data VARCHAR(50),
    Contract VARCHAR(50),
    Paperless_Billing VARCHAR(50),
    Payment_Method VARCHAR(255),
    Monthly_Charge DECIMAL(10, 2),
    Total_Charges DECIMAL(10, 2),
    Total_Refunds DECIMAL(10, 2),
    Total_Extra_Data_Charges DECIMAL(10, 2),
    Total_Long_Distance_Charges DECIMAL(10, 2),
    Total_Revenue DECIMAL(10, 2),
    Customer_Status VARCHAR(50),
    Churn_Category VARCHAR(255),
    Churn_Reason VARCHAR(255)
);



INSERT INTO prod_Churn (
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    Value_Deal,
    Phone_Service,
    Multiple_Lines,
    Internet_Service,
    Internet_Type,
    Online_Security,
    Online_Backup,
    Device_Protection_Plan,
    Premium_Support,
    Streaming_TV,
    Streaming_Movies,
    Streaming_Music,
    Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    Churn_Category,
    Churn_Reason
)
SELECT 
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    COALESCE(NULLIF(Value_Deal, ''), 'None') AS Value_Deal,
    Phone_Service,
    COALESCE(NULLIF(Multiple_Lines, ''), 'No') AS Multiple_Lines,
    Internet_Service,
    COALESCE(NULLIF(Internet_Type, ''), 'None') AS Internet_Type,
    COALESCE(NULLIF(Online_Security, ''), 'No') AS Online_Security,
    COALESCE(NULLIF(Online_Backup, ''), 'No') AS Online_Backup,
    COALESCE(NULLIF(Device_Protection_Plan, ''), 'No') AS Device_Protection_Plan,
    COALESCE(NULLIF(Premium_Support, ''), 'No') AS Premium_Support,
    COALESCE(NULLIF(Streaming_TV, ''), 'No') AS Streaming_TV,
    COALESCE(NULLIF(Streaming_Movies, ''), 'No') AS Streaming_Movies,
    COALESCE(NULLIF(Streaming_Music, ''), 'No') AS Streaming_Music,
    COALESCE(NULLIF(Unlimited_Data, ''), 'No') AS Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    COALESCE(NULLIF(Churn_Category, ''), 'Others') AS Churn_Category,
    COALESCE(NULLIF(Churn_Reason, ''), 'Others') AS Churn_Reason
FROM stg_Churn;

select count(*) from prod_Churn;

# Views


Create View vw_ChurnData as
	select * from prod_Churn where Customer_Status In ('Churned', 'Stayed');


Create View vw_JoinData as
	select * from prod_Churn where Customer_Status = 'Joined';

