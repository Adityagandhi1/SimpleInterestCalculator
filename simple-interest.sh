#!/bin/bash

# Simple Interest Calculator Script

# Get user input
read -p "Enter Principal Amount (P): " P
read -p "Enter Annual Interest Rate (R, as a decimal, e.g., 0.05 for 5%): " R
read -p "Enter Time Period (T, in years): " T

# Calculate Simple Interest (SI = P * R * T)
# The 'bc' command is used for floating-point arithmetic in shell scripts
SI=$(echo "$P * $R * $T" | bc)

# Calculate Total Amount (A = P + SI)
A=$(echo "$P + $SI" | bc)

# Display the results
echo "-------------------------------------"
echo "Simple Interest (SI): $SI"
echo "Total Amount (A): $A"
echo "-------------------------------------"
