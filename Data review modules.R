#Data review modules in teal 

library(teal.modules.general)
library(pharmaverseadam)
library(teal.data)
library(teal)

ADSL <-  pharmaverseadam::adsl
ADAE <- pharmaverseadam::adae
ADTTE <- pharmaverseadam::adtte_onco


app <- teal::init(
  data = cdisc_data(ADSL=adsl,ADAE = adae, ADTTE = adtte_onco), #load data into app
  modules = teal::modules(
    tm_data_table(),
    tm_variable_browser()
  )
)

shiny::shinyApp(ui = app$ui, server = app$server)
