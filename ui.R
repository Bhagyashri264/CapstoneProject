library(shiny)

shinyUI(fluidPage(
  titlePanel("Word Predictor"),
  
  sidebarLayout(
    sidebarPanel(
        textInput("text",h6("type in a word and then press the submit button below"), value = ""),
        submitButton("submit")
    ),
    
    mainPanel(
        h3('and, the next word is:'),
        verbatimTextOutput("prediction"),
        h4('default value is the word "the", the most common word used in english')
    )
  )
))
