library(shiny)
library(ggvis)

shinyServer(function(input, output) {
  faithful %>%
  ggvis(~eruptions) %>%
  layer_histograms() %>%
  add_tooltip(function(data) data$stack_upr_, "hover") %>%
  bind_shiny("plot", "plot_ui")
})
