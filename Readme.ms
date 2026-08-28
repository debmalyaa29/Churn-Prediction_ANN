# Customer Churn Prediction using ANN

A **Customer Churn Prediction** web application built using **Artificial Neural Networks (ANN)** and deployed using **Streamlit**.

The application predicts whether a customer is likely to leave (churn) based on customer information such as credit score, geography, age, balance, number of products, activity status, and estimated salary.

## 🚀 Live Demo

**Try the application here:**

https://churn-predictionann-24wrcl2s3bhjaphlmbwujt.streamlit.app/

---

## 📌 Project Overview

Customer churn is an important business problem for banks and financial institutions. Identifying customers who are likely to churn allows organizations to take preventive actions and improve customer retention.

This project uses an **Artificial Neural Network (ANN)** to learn patterns from historical customer data and predict the probability of customer churn.

The trained model is integrated into a **Streamlit web application**, allowing users to enter customer details and receive a real-time prediction.

---

## 🧠 Machine Learning Workflow

The project follows the following pipeline:

```text
Customer Dataset
       ↓
Data Preprocessing
       ↓
Categorical Encoding
       ↓
Feature Scaling
       ↓
ANN Model
       ↓
Model Evaluation
       ↓
Save Model & Preprocessors
       ↓
Streamlit Deployment
       ↓
Customer Churn Prediction
```

---

## 🏗️ ANN Architecture

The Artificial Neural Network consists of:

```text
Input Layer
     ↓
Dense Layer - 64 neurons
     ↓
Dense Layer - 32 neurons
     ↓
Output Layer - 1 neuron
     ↓
Sigmoid Activation
```

### Model Structure

```python
model = Sequential([
    Dense(64, activation='relu', input_shape=(X_train.shape[1],)),
    Dense(32, activation='relu'),
    Dense(1, activation='sigmoid')
])
```

### Activation Functions

**ReLU**

Used in the hidden layers:

```text
ReLU(x) = max(0, x)
```

It introduces non-linearity and allows the neural network to learn complex relationships.

**Sigmoid**

Used in the output layer:

```text
0 ≤ output ≤ 1
```

The output represents the probability that the customer will churn.

---

## 📊 Input Features

The application accepts the following customer information:

| Feature            | Description                              |
| ------------------ | ---------------------------------------- |
| Credit Score       | Customer's credit score                  |
| Geography          | Customer's country/region                |
| Gender             | Customer's gender                        |
| Age                | Customer's age                           |
| Tenure             | Number of years with the bank            |
| Balance            | Customer's account balance               |
| Number of Products | Number of bank products used             |
| Has Credit Card    | Whether the customer has a credit card   |
| Is Active Member   | Whether the customer is an active member |
| Estimated Salary   | Estimated customer salary                |

---

## 🔄 Data Preprocessing

### 1. Gender Encoding

Gender is converted into numerical values using `LabelEncoder`.

Example:

```text
Female → 0
Male   → 1
```

The trained encoder is saved as:

```text
label_encoder_gender.pkl
```

### 2. Geography One-Hot Encoding

Geography is encoded using `OneHotEncoder`.

Example:

```text
France  → [1, 0, 0]
Germany → [0, 1, 0]
Spain   → [0, 0, 1]
```

The encoder is saved as:

```text
onehot_encoder_geo.pkl
```

### 3. Feature Scaling

Numerical features are scaled using `StandardScaler`.

The trained scaler is saved as:

```text
scaler.pkl
```

The same preprocessing objects used during training are reused during prediction to ensure consistency between training and deployment.

---

## 🤖 Model Prediction

The ANN produces a probability between `0` and `1`.

Example:

```text
Churn Probability: 0.83
```

This represents an approximately **83% probability of churn**.

The application uses a threshold of `0.5`:

```python
if prediction_proba > 0.5:
    customer is likely to churn
else:
    customer is not likely to churn
```

### Prediction Logic

```text
Probability > 0.5
       ↓
Likely to Churn

Probability ≤ 0.5
       ↓
Not Likely to Churn
```

---

## 🖥️ Streamlit Application

The application provides an interactive interface where users can enter:

* Geography
* Gender
* Age
* Balance
* Credit Score
* Estimated Salary
* Tenure
* Number of Products
* Credit Card status
* Active Member status

The entered information is processed and passed to the trained ANN model.

The application then displays:

```text
Churn Probability
```

and:

```text
Customer is likely to churn
```

or:

```text
Customer is not likely to churn
```

---

## 📁 Project Structure

```text
churn-prediction_ann/
│
├── app.py
├── model.h5
├── scaler.pkl
├── label_encoder_gender.pkl
├── onehot_encoder_geo.pkl
├── requirements.txt
└── README.md
```

### File Description

| File                       | Purpose                       |
| -------------------------- | ----------------------------- |
| `app.py`                   | Streamlit application         |
| `model.h5`                 | Trained ANN model             |
| `scaler.pkl`               | Saved StandardScaler          |
| `label_encoder_gender.pkl` | Saved Gender LabelEncoder     |
| `onehot_encoder_geo.pkl`   | Saved Geography OneHotEncoder |
| `requirements.txt`         | Python dependencies           |
| `README.md`                | Project documentation         |

---

## 🛠️ Technologies Used

* **Python**
* **TensorFlow / Keras**
* **Scikit-learn**
* **Pandas**
* **NumPy**
* **Streamlit**
* **Pickle**

---

## ⚙️ Installation

### 1. Clone the repository

```bash
git clone https://github.com/debmalyaa29/churn-prediction_ann.git
```

```bash
cd churn-prediction_ann
```

### 2. Create a virtual environment

```bash
python -m venv venv
```

### 3. Activate the virtual environment

**Windows:**

```bash
venv\Scripts\activate
```

### 4. Install dependencies

```bash
pip install -r requirements.txt
```

### 5. Run the Streamlit application

```bash
streamlit run app.py
```

The application will open in your browser.

---

## 📦 Requirements

Example `requirements.txt`:

```text
streamlit
tensorflow==2.15.0
pandas
numpy
scikit-learn
```

> Note: When deploying TensorFlow 2.15.0, use a compatible Python version such as Python 3.11 rather than Python 3.14.

---

## 🔮 Prediction Pipeline

The deployed application performs the following steps:

```text
User Input
    ↓
Create DataFrame
    ↓
Encode Gender
    ↓
One-Hot Encode Geography
    ↓
Combine Features
    ↓
Apply StandardScaler
    ↓
ANN Model
    ↓
Sigmoid Probability
    ↓
Churn / No Churn
```

---

## 🎯 Project Goals

The main objectives of this project are:

* Build an ANN-based classification model.
* Understand neural network architecture.
* Perform categorical feature encoding.
* Apply feature scaling.
* Save and reuse preprocessing objects.
* Deploy a machine learning model using Streamlit.
* Build an end-to-end machine learning application.

---

## 🌐 Deployment

The application is deployed using **Streamlit**.

### Live Application

[Open Customer Churn Prediction App](https://churn-predictionann-24wrcl2s3bhjaphlmbwujt.streamlit.app/?utm_source=chatgpt.com)

---

## 📈 Future Improvements

Possible improvements include:

* Hyperparameter tuning of the ANN.
* Adding Early Stopping.
* Adding TensorBoard model visualization.
* Improving the Streamlit UI.
* Displaying additional model evaluation metrics.
* Adding confusion matrix and ROC-AUC visualization.
* Adding probability-based risk levels.
* Containerizing the application using Docker.
* Adding model monitoring and logging.

---

## 👨‍💻 Author

**Debmalyaa Dey**

### Project

**Customer Churn Prediction using Artificial Neural Networks**

---

## ⭐ If you find this project useful

Consider giving the repository a ⭐ on GitHub.
