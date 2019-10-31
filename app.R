#ui <- fluidPage(
 # selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
#  verbatimTextOutput("summary"),
#  tableOutput("table")
#)

#server <- function(input, output, session) {
  #output$summary <- renderPrint({
   # dataset <- get(input$dataset, "package:datasets")
    # summary(dataset)
  #})
  
  #output$table <- renderTable({
   # dataset <- get(input$dataset, "package:datasets")
    #dataset
  #})
#}


#In the above server function, the out put has duplicated code. Instead use reactive expressions so you only have to retrieive the data set once
#Below is how you would correctly code with reactive expressions using the reactive ({})
#server <- function(input, output, session) {
 # dataset <- reactive({
  #  get(input$dataset, "package:datasets")
#  })
  
 # output$summary <- renderPrint({
  #  summary(dataset())
  #})
  
  #output$table <- renderTable({
   # dataset()
#  })
#}


#shinyApp(ui, server)


#Chapter 2 Excercise 1

#ui <- fluidPage(
 # textInput("name", "What's your name?")

#)

#server <- function(input, output, session) {
#output$summary <- renderText({
 #sayhi <- paste0("Hello", input$name)
#})

#output$table <- renderTable({
 # sayhi()
#})
#}

#shinyApp(ui, server)



