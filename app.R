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


#Chapter 3
#Insert a Name, Password and Bio
#ui <- fluidPage(
 # textInput("name", "Username"),
#  passwordInput("password", "Password"),
 # textAreaInput("story", "Biography", rows = 4)
#)

#server <- function(input, output, session) {
#output$summary <- renderText({
#sayhi <- paste0("Hello", input$name)
#})

#output$table <- renderTable({
 #sayhi()
#})
#}

#shinyApp(ui, server)

#Use numerical Inputs
#ui <- fluidPage(
 # numericInput("num", "Number one", value = 0, min = 0, max = 100),
  ##dropdown
  #sliderInput("num2", "Number two", value = 50, min = 0, max = 100),
  ##slider at specific value
  #sliderInput("rng", "Range", value = c(10, 20), min = 0, max = 100)
  ##slider for a range
#)

#server <- function(input, output, session) {}


#shinyApp(ui, server)

#ui <- fluidPage(
 # dateInput("dob", "When were you born?"),
  ##US style dates
  #dateRangeInput("holiday", "When do you want to go on vacation next?")
  ##add at date range also US style
#)


#server <- function(input, output, session) {}


#shinyApp(ui, server)






#Limited Choice and Having the user select certain options
#animals <- c("dog", "cat", "mouse", "bird", "other", "I hate animals")

#ui <- fluidPage(
 # selectInput("state", "What's your favourite state?", state.name),
  ##this is a drop box with choice
  # multiple = TRUE enables multiple choices
  #radioButtons("animal", "What's your favourite animal?", animals)
  ##this has a fill in the dot style with choices
#)


#server <- function(input, output, session) {}


#shinyApp(ui, server)

#making radio buttons icons
#ui <- fluidPage(
 # radioButtons("rb", "Choose one:",
  #             choiceNames = list(
   #              icon("angry"),
   #              icon("smile"),
   #              icon("sad-tear")
   #            ),
        #       choiceValues = list("angry", "happy", "sad")
 # )
#)


#making selection boxes
#animals <- c("dog", "cat", "mouse", "bird", "other", "I hate animals")
#ui <- fluidPage(
 # checkboxGroupInput("animal", "What animals do you like?", animals)
#)

#this is for a yes or no check box - value = TRUE
#ui <- fluidPage(
 # checkboxInput("cleanup", "Clean up?", value = TRUE),
  #checkboxInput("shutdown", "Shutdown?")
#) 
#server <- function(input, output, session) {}


#shinyApp(ui, server)


#to upload a file - requires special handling on the server side
#ui <- fluidPage(
 # fileInput("upload", NULL)
#)
#server <- function(input, output, session) {}


#shinyApp(ui, server)


#To add action buttons
#Let the user perform an action with actionButton() or actionLink(). These are most naturally paired with observeEvent() or eventReactive() in the server function; 

#ui <- fluidPage(
 # actionButton("click", "Click me!"),
  #actionButton("drink", "Drink me!", icon = icon("cocktail"))
#)
#server <- function(input, output, session) {}


#shinyApp(ui, server)





#First Excercises in chapter 3
#adding the label as a placeholder in a text box
#ui <- fluidPage(
#textInput("name",label = "", placeholder="Your Name"))

#server <- function(input, output, session) {}

#shinyApp(ui, server)


#Second Excercise in Chapter 3
#Creating a more complicated slider input
#ui <- fluidPage(
 # sliderInput("DatesMerge",
  #"When Should We Deliver?",
  #min = as.Date("2019-08-09","%Y-%m-%d"),
  #max = as.Date("2019-08-16","%Y-%m-%d"),
  #value=as.Date("2016-08-10"),timeFormat="%Y-%m-%d")
#)

#server <- function(input, output, session) {}

#shinyApp(ui, server)

#Breaking the List up into Subheadings
#ui <- fluidPage(
 # selectizeInput('x1','Choose a State', choices = list(
  #  Eastern = c(`New York` = 'NY', `New Jersey` = 'NJ', `Massachusetts` = 'MA', `Connecticut` = 'CT', `Rhode Island` = 'RI'),
   # Western = c(`California` = 'CA', `Washington` = 'WA', `Oregon` = 'OR')
  #), multiple = TRUE)
#)

#numeric input box with step
# <- fluidPage(
 # numericInput("number", "Select a Value", value = 150, min = 0, max = 1000, step = 50)
#)

#server <- function(input, output, session) {}

#shinyApp(ui, server)
 