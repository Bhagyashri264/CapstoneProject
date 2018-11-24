
library(shiny)
#library(NLP)
#library(tm)
#library(RWeka)

#set source file for NLP and next word prediction
source("WordPred_file.R")

shinyServer(
    function(input, output, session) {
        output$inputValue <- renderPrint({input$text})
        output$prediction <- renderPrint({wordpred(input$text)})
        }
)