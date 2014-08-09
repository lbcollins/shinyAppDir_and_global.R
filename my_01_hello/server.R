library(shiny)

#############################
# Shiny doc is NOT rendered by "Run Document" in RStudio
# UNLESS if the following is uncommented (i.e., ignore global.R)
# Shiny doc IS rendered by console command 'runApp("my_01_hello")'
# EVEN if the following command is commented (i.e., runApp will use global.R)
# mytitle <- "My histogram title"
#############################


# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot

  output$distPlot <- renderPlot({
    x    <- faithful[, 2]  # Old Faithful Geyser data
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
	 #############################
	 # USER CHANGE: A title has been added using variable "mytitle" (defined in global.R)
	 #############################
    hist(x, breaks = bins, col = 'darkgray', border = 'white', main=mytitle)
  })

})
