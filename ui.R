library(plyr)


files <- list.files("images/CopyOfmanhattan_plots/")
files <- strsplit(files, "_")
traits <- unlist(llply(1:length(files), function (x) paste(unlist(files[x])[1:2], collapse = "_")))

shinyUI(
	fluidPage(
		titlePanel("renderImage example"),
		sidebarLayout(
			sidebarPanel(
				selectInput("dyd", "trait", traits)
				),
			mainPanel(
				# Use imageOutput to place the image on the page
				imageOutput("preImage")
				)
		)
	)
)
