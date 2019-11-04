# ------------------------
# Author: Nicolas Durrande
# ------------------------


library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Catapult simulator"),
  
  sidebarPanel(
    sliderInput("Fact1", 
                "x1: axe rotation", 
                min = 0,
                max = 1, 
                value = 0.5,
                step = 0.01),
    sliderInput("Fact2", 
                "x2: butée", 
                min = 0,
                max = 1, 
                value = .5,
                step = 0.01),
    sliderInput("Fact3", 
                  "x3: ressort 1", 
                  min = 0,
                  max = 1, 
                  value = .5,
                  step = 0.01),
      sliderInput("Fact4", 
                  "x4: ressort 2", 
                  min = 0,
                  max = 1, 
                  value = .5,
                  step = 0.01)
    ),
  
  mainPanel(
    tabsetPanel(type = "tabs", 
                tabPanel("Trajectoire", plotOutput("trajectoryPlot")), 
                tabPanel("Design", plotOutput("catapultPlot"))
    )#,textOutput("text1")
  )
))
