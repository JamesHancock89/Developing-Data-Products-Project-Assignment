
library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Body Mass Index (BMI) Calculator"),
    
    sidebarPanel(
      numericInput('weight', 'Insert your weight in kilograms', 90) ,
      numericInput('height', 'Insert your height in metres', 1.80, min = 0.50, max = 2.50, step = 0.01),
      submitButton('Submit')
    ), 
    mainPanel(
      p('The Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.'),
      p('Regarding the BMI measure, the World Health Organization (WHO) proposes the following classification:'),
      tags$div(
        tags$ul(
          tags$li('BMI <18.5       : Underweight'),
          tags$li('BMI [18.5-24.9] : Normal weight'),
          tags$li('BMI [25-29.9]   : Overweight'),
          tags$li('BMI >=30        : Obesity')
        )
      ),
      
      h4('Taking into account the values entered by you:'), 
      p('weight:'), verbatimTextOutput("inputweightvalue"),
      p('height:'), verbatimTextOutput("inputheightvalue"),
      h4('Your BMI is:'),
      verbatimTextOutput("estimation"),
      p('It means that you are:'),strong(verbatimTextOutput("diagnostic"))
      
      
    )
    
  )   
)