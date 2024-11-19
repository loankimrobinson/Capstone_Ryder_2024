ui <- tagList(
  tags$head(includeCSS(file.path('www', 'style.css'))),
  navbarPage(
    id = "nav",
    selected = "dashboard",
    windowTitle = "Analytics Dashboard",
    title = div(
      div(
        id = "logo",
        img(src = "logo-ryder.svg", height = 25),
        align = "left",
        style = "position:fixed; left:10px; top:10px"
      ),
      div("Analytics Dashboard")
    ),
    tabPanel(
      "Dashboard",
      value = "dashboard",
      div(style = "padding-left:10px; padding-right:10px;text-align:center;",
          br(),
          br(),
          tags$span(
            h2(
              "Port-to-Door Solutions",
              style = "display:inline-block;font-size: 35px;
                       background: -webkit-linear-gradient(#CF202A,#CF202A);
                       -webkit-background-clip: text;
                       -webkit-text-fill-color: transparent; text-shadow: 2px 2px 1px 1px #CF202A;"
            )
          ),
          br(),
          h2("Engineered to Overcome Supply Chain Challenges", style = "color:darkgray;"),
          hr(style="color:#c0902d;height:10px;background:#c0902d;"),
          fluidRow( div(style = "padding-left:20px; padding-right:20px;height:50px;",)),
          fluidRow( div(style = "padding-left:20px; padding-right:20px;",source(file.path("source", "footer.R"), local = TRUE)$value))
          )
    ),
    tabPanel(
      "Explore",
      value = "explore",
      div(style = "padding-left:10px; padding-right:10px;padding-top:20px;",
          fluidRow( div(style = "padding-left:20px; padding-right:20px;height:50px;",)),
          fluidRow( div(style = "padding-left:20px; padding-right:20px;",source(file.path("source", "footer.R"), local = TRUE)$value))
      )
    )
  )
)
