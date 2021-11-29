setwd("D:/Web Apps and Dashboards/R Shiny/MyWebsite/jadatatechconsulting")
# Librairies
library(shiny)
#library(rgdal)
library(leaflet)
#library(sp)
library(plotly)
#library(dplyr)
#library(tidyr)
#library(magrittr)
#library(lubridate)
#library(ggmap)
#library(xts)
library(shinyjs)
#library(jsonlite)
#library(urltools)
#library(utils)
#library(rvest)
#library(stringr)
#library(rgeos)
library(xml2)
#library(selectr)
#library(raster)
#library(purrr)
library(RColorBrewer)
#library(DT)
library(shinyBS)
source("appParts.R")


# Define UI for application that draws a histogram
ui <- navbarPage(title = "Intelligentsia",
                 theme = "style/style.css", 
                 footer = includeHTML("footer.html"),
                 fluid = TRUE, 
                 collapsible = TRUE,
                 
                 # ----------------------------------
                 # tab panel 1 - Home
                 tabPanel("Home",
                          includeHTML("home.html"),
                          tags$script(src = "plugins/scripts.js"),
                          tags$head(
                              tags$link(rel = "stylesheet", 
                                        type = "text/css", 
                                        href = "plugins/font-awesome-4.7.0/css/font-awesome.min.css"),
                              tags$link(rel = "icon", 
                                        type = "image/png", 
                                        href = "images/logo_icon.png")
                          )
                 ),
                 
                 # ----------------------------------
                 # tab panel 2 - Neighborhood Browser
                 tabPanel("Neighborhood Browser",
                          neighborhoodDescription(),
                          includeHTML("scrollToTop.html")
                 ),
                 
                 # ----------------------------------
                 # tab panel 3 - Location Comparison
                 tabPanel("Location Comparison",
                          propertyComparison()
                 ),
                 
                 # ----------------------------------
                 # tab panel 4 - About
                 tabPanel("About",
                          includeHTML("about.html"),
                          shinyjs::useShinyjs(),
                          tags$head(
                              tags$link(rel = "stylesheet", 
                                        type = "text/css", 
                                        href = "plugins/carousel.css"),
                              tags$script(src = "plugins/holder.js")
                          ),
                          tags$style(type="text/css",
                                     ".shiny-output-error { visibility: hidden; }",
                                     ".shiny-output-error:before { visibility: hidden; }"
                          )
                 )
                 
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    
}

# Run the application 
shinyApp(ui = ui, server = server)
#runApp(list(ui = ui, server = server), launch.browser =T)
