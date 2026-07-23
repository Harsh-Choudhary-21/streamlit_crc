import streamlit as st
import pandas as pd
import numpy as np
st.header("Indian govt expenditure")
dataset = pd.read_csv(r"D:\Harsh\Streamlit_CRC\Dataset\total-expenditure-estimated-under-each-indian-union-budget-since-1947-48.csv")
dataset = dataset.drop(columns="note")
st.write(dataset)
st.write("Metadata")
metadata = pd.read_csv(r"D:\Harsh\Streamlit_CRC\Dataset\metadata.csv")
st.table(metadata)

x = pd.DataFrame(
    {
        "Name":["Harsh Choudhary","Ananya Aggarwal","Divyansh Gupta"],
        "Age":[18,24,25],
        "City":["Delhi","Bangalore","Mumbai"]
    }
)

y =pd.DataFrame([
    [1,2,3,4],
    [2,3,4,5]
])

z = pd.DataFrame([
    (1,2,3,4),
    (2,3,4,5)
])

st.write(x)
st.text("Example of text")
st.header("Example of write is given below")
st.write(
    {
        "Name":["Harsh Choudhary",""],
        "Age":[18],
        "City":["Delhi"]
    }
)