shinyServer(function(input, output) {
	# Send a pre-rendered image, and don't delete the image after sending it
	output$preImage <- renderImage({
		# When input$n is 3, filename is ./images/image3.jpeg
		filename <- normalizePath(file.path('./images/CopyOfmanhattan_plots/',
														paste(input$dyd, '_manhattan.png', sep='')))

		# Return a list containing the filename and alt text
		list(src = filename,
			  alt = paste("Fatty acid", input$dyd))

	}, deleteFile = FALSE)
})
