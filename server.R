library(shiny)
library(ggplot2)
library(plotly)

dataset <- diamonds[sample(nrow(diamonds), 2000),]
nms<- names(diamonds)

shinyserver <- function(input, output) {
  
  output$plot <- renderPlotly({
      
      p <- ggplot(dataset, aes_string(x = input$x, y = input$y, color = input$color)) + 
        geom_point()
  
      ggplotly(p)   
})
}

