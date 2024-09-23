# 📊 Jio Telecom Churn Analysis & Prediction Dashboard  <img src="https://github.com/user-attachments/assets/eef56b10-d797-4f69-adf1-5e0a94b57756" alt="images" width="60" height="auto">


<img src="https://github.com/user-attachments/assets/a9f41791-9ecc-4939-abac-deb8e8e7f4dd" alt="image1" width="400">
&nbsp;&nbsp;&nbsp;&nbsp;
<img src="https://github.com/user-attachments/assets/41829e44-c138-472b-8861-00bae0dcd81b" alt="image2" width="400">

## Business Problem:

**Jio**, one of India’s largest telecom service providers, is facing a **churn rate of 27%**, indicating that a substantial portion of its customer base is switching to competitors or discontinuing services. With **1,732 customers churned** and **411 new joiners**, Jio is seeking insights into the factors driving churn, predicting at-risk customers, and identifying strategies to improve retention and customer satisfaction.

Technologies used - MYSQL, Python, Powebi

---

## 📈 Churn Analysis Report:

### 🔍 **Overview:**
- **Churn Rate**: `27%`
- **New Joiners**: `411`
- **Total Churners**: `1,732`
- **Total Customers**: `6,418`

### 🎯 **Demographic Insights:**
- **Gender Breakdown**: 
  - **64%** of total churn is from **female customers**.
  - **31% of female churners** are aged over **50 years**, indicating a higher churn likelihood for older women.
  
- **Age Group**: 
  - The **20-35 age group** has the highest churn rate of **32%**.
  - Other notable churn is from the **35-50 age group**.

### 🌍 **Geographic Insights:**
- **Top Churn States**:
  - **Jammu & Kashmir** shows the highest churn rate at **57%**.
  - **Assam** follows with a churn rate of **38%**.
  
  💡 **Insight**: `Jammu & Kashmir contributes 70% of the churn in Fiber Optics services.`
  
### 🛠️ **Churn by Services**:
- **Internet Type**:
  - **Fiber Optics** customers have the highest churn rate at **41%**.
  - **Cable** customers follow with **26%**.
  
- **Service Subscriptions**:
  - **High churn** is seen among customers **not subscribed** to:
    - Device Protection Plans
    - Online Backup
    - Premium Support
    - Online Security
  - **Surprising insight**: Customers subscribed to **Internet Services**, **Paperless Billing**, and **Phone Services** are also likely to churn.

### 📑 **Account Information Insights**:
- **Payment Method**:
  - Customers paying via **mailed checks** have the highest churn at **38%**.
  - **Bank withdrawals** follow with **34%**.
  
- **Contract Duration**:
  - **One-year contracts** have a churn rate of **37%**.
  
### 🔑 **Competitor Influence**:
- **Competitor-related churn** is driven by better **devices** and **offers** from competitors.
- **Other factors**: Issues with the **attitude** of support staff contribute to churn.

---

##  Churn Prediction Report:

### 🚻 **Predicted Churner Profile**:
- **Female customers** are at higher risk of churn (**249 predicted churners**) compared to **male customers** (**132 predicted churners**).
- The **25-50 age group** shows the highest churn prediction.

### 🗺️ **Geographic Insights**:
- **Top Churn States**:
  - **Uttar Pradesh** and **Maharashtra** have the highest predicted churners at **45 and 41 customers**.
  - **Puducherry**: **75% churn rate** for customers spending more than **₹100** per recharge.

💡 **Recommendation**: Focus on **Puducherry** with targeted retention offers for high-spending customers.

### 🔧 **Service & Payment Insights**:
- **Cable Services**: 100% churn predicted for **cable customers**. This suggests inefficiency issues.
  - 💡 **Actionable Insight**: Introduce marketing campaigns to push **Fiber Optics**, as customers appear ready to spend more on this service.
  
- **Payment Methods**:
  - **Bank withdrawals** and **mailed checks** have the highest predicted churn. Encouraging **automatic payments** could reduce churn.

### ⌛ **Tenure Group**:
- Customers with **6-12 months** and **12-24 months** tenure are most likely to churn, with **105** and **110** predicted churners, respectively.

---

## 🛠️ **Key Recommendations**:
1. **Improve Service Offerings**: Focus on improving **fiber optics** in states like Jammu & Kashmir.
2. **Enhance Device Protection Plans**: Create more attractive bundles for **device protection**, **online backup**, and **premium support**.
3. **Customer Support**: Address issues with **staff attitude** and improve overall **customer experience**.
4. **Targeted Marketing Campaigns**: Launch retention campaigns focused on **high-risk demographics** like **older females** and **high-paying customers**.
5. **Payment Method Optimization**: Incentivize **digital payment methods** over mailed checks.

---

### 💡 Conclusion:

This analysis sheds light on critical areas where Jio needs to focus its efforts. The highest churn rates are seen in **fiber optics**, specific states (like Jammu & Kashmir), and services where competitors offer better plans. Additionally, Jio can work on improving its **customer support**, offering better **device protection**, and tailoring marketing campaigns to retain **high-value customers**.
