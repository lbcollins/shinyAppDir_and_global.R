library(shiny)

#############################
# Shiny doc is NOT rendered by "Run Document" in RStudio
# UNLESS if the following is uncommented (i.e., ignore global.R)
# Shiny doc IS rendered by console command 'runApp("my_01_hello")'
# EVEN if the following command is commented (i.e., runApp will use global.R)
# mylabel <- "Number of bins:"
#############################

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Hello Shiny!"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
	 	#############################
		# USER CHANGE: "Number of bins:" is replaced with reference to variable "mylabel" (defined in global.R)
	 	#############################
      sliderInput("bins",
                  mylabel,
                  min = 1,
                  max = 50,
                  value = 30)
    ),  

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
