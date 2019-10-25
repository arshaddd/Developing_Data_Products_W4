
library(shiny)



shinyUI(
    
    navbarPage("Shiny Application Assignment",
               
               tabPanel("Analysis",    
    
    
    fluidPage(

    # Application title
    titlePanel("My Developing Data Products Application"),

    
    sidebarLayout(
        sidebarPanel(
            selectInput("Distribution", "Please Select The Distribution Type",
                        
                choices = c("Normal", "Exponential")),
            
        sliderInput("sampleSize", "Please Select The Sample Size: ",
                    min = 100, max = 5000, value = 1000, step = 100),
        conditionalPanel(condition = "input.Distribution == 'Normal' ",
                         textInput("mean", "Please Enter The Value of Mean", 10),
                         textInput("sd", "Please Enter The Value of Standard Deviation", 3)),
        conditionalPanel(condition = "input.Distribution == 'Exponential'",
                         textInput("lambda", "plz select exponential lambda:", 1))
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("myPlot")
        )
    )
))
))