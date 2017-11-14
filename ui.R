library(shiny)
library(ggplot2)
library(plotly)

dataset <- diamonds[sample(nrow(diamonds), 2000),]
nms<- names(diamonds)

shinyUI(fluidPage(
  headerPanel("Diamond Price Explorer: a Shiny App by J. A. Carrasco"),
  sidebarPanel(
       h5("This application aims to explore the Price distribution in a sample from
          the Data set Diamonds. Select the Price, the independent variable X and
       the color of the graph to group the values of the price. 
       You can also select the size of the final graph."),
    selectInput('y', 'Y', choices = nms, selected = "price"),
    selectInput('x', 'X', choices = nms, selected = "carat"),
    selectInput('color', 'Color', choices = nms, selected = "cut")
    ),
  mainPanel(
    plotlyOutput('plot', height = "600px")
    
  )
  ))