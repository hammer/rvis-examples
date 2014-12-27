library(shiny)

shinyUI(fluidPage(
  titlePanel("Histogram with Tooltips"),
  fluidRow(column(12, ggvisOutput("plot")))
))
