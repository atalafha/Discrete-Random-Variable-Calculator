
library(shiny)
library(shinyjqui)

# Define the UI for the application
ui <- fluidPage(
  titlePanel("Discrete Random Variable Calculator"),
  
  sidebarLayout(
    sidebarPanel(
      textInput("x_values", "Enter X Values (comma separated):", value = ""),
      textInput("p_values", "Enter Probabilities (comma separated):", value = ""),
      actionButton("calculate", "Calculate")
    ),
    
    mainPanel(
      tableOutput("results")
    )
  )
)

# Define the server logic
server <- function(input, output) {
  
  observeEvent(input$calculate, {
    # Parse comma-separated values into numeric vectors
    x_vals <- as.numeric(unlist(strsplit(input$x_values, ",")))
    p_vals <- as.numeric(unlist(strsplit(input$p_values, ",")))
    
    # Ensure both vectors have the same length and probabilities sum to 1
    if(length(x_vals) == length(p_vals) && sum(p_vals) == 1) {
      
      E_X <- sum(x_vals * p_vals)
      E_X2 <- sum((x_vals^2) * p_vals)
      var_X <- E_X2 - E_X^2
      
      results <- data.frame(
        Measure = c("Expected Value (E[X])", "Expected Value of Square (E[X^2])", "Variance (Var[X])"),
        Value = c(E_X, E_X2, var_X)
      )
      
      output$results <- renderTable(results, rownames = FALSE)
      
    } else {
      showNotification("Ensure that the number of X values matches the number of probabilities, and that probabilities sum to 1.",
                       type = "error")
    }
  })
}

# Run the application
shinyApp(ui = ui, server = server)
