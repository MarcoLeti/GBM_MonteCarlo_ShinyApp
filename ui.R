library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Geometric Brownian Motion - Monte Carlo Simulation"),
  
  sidebarLayout(
    sidebarPanel(
       numericInput("drift",
                    "Drift Rate (%):",
                    min = 1,
                    value = 15),
       numericInput("stdev",
                    "Yearly Standard Deviation (%)",
                    min = 1,
                    value = 30),
       numericInput("initPrice",
                    "Initial Stock Price",
                    min = 1,
                    value = 100),
       numericInput("simul",
                    "Number of Simulations",
                    min = 1,
                    value = 1),
       checkboxInput("seeds",
                     "Set seed?"),
       numericInput("setseed",
                    "Select number of seed",
                    min = 1,
                    value = 1),
       submitButton("Submit")
    ),
    
    mainPanel(
       plotOutput("distPlot"),
       headerPanel(withMathJax("$$\\text{GBM Model: } S_0 \\exp\\left(\\left(\\mu - \\frac{\\sigma^2}{2}\\right)t + \\sigma W_t\\right) $$")),
       h4("To run the simulation you have to enter the following inputs on the side bar:"),
       h4("Initial Stock Price is the current price of the stock;"),
       h4("Drift rate is the expected rate of return;"),
       h4("Yearly Standard Deviation is the volatility of the stock price;"),
       h4("Number of Simulation represents how many simulation of stock price you want to display;"),
       h4("In the side bar is also possible, through a check box, to set the seed to a fix value. Please mark the check box and select the value from the numeric box. If it is unmarked the seed will be assigned randomly.
            As the calculation time increases with the number of simulation, there is a 'Submit' button to click as soon as the parameters are decided.")
    )
  )
))
