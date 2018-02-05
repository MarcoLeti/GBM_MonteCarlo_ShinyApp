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
       headerPanel(withMathJax("$$\\text{GBM Model: } S_0 \\exp\\left(\\left(\\mu - \\frac{\\sigma^2}{2}\\right)t + \\sigma W_t\\right) $$"))
    )
  )
))
