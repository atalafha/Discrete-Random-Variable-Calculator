# Discrete-Random-Variable-Calculator

A Shiny app to compute the expected value, expected value of square, and variance for a discrete dataset with a single variable.

## Setup and Running

1. **Prerequisites**: Ensure you have R and the Shiny package installed.
2. **Get the Code**: Clone or download the repository containing the Shiny app script.
3. **Start the App**: Open the script in R or RStudio and run the app by executing the script.

## Usage

- **Input X Values**: 
  Enter the values of the discrete random variable `X`, separated by commas.
  *Example*: `2,4,6`

- **Input Probabilities**: 
  Enter the corresponding probabilities for each value of `X`, separated by commas.
  *Example*: `0.2,0.3,0.5`

- **Calculate**: 
  Click the `Calculate` button. The app will display the:
  - Expected Value \(E[X]\)
  - Expected Value of Square \(E[X^2]\)
  - Variance \(Var[X]\)

## Notes

- Ensure that the number of `X` values matches the number of probabilities.
- The probabilities should sum up to 1.

## Troubleshooting

If you receive a notification about a mismatch in the number of values or the sum of probabilities, ensure your inputs adhere to the notes mentioned above.

