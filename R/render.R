render <- function(dataframe, dimensions) {

  colnames(dataframe) <- dimensions 

  # Alternative source of data for testing
  #dataframe <-read.csv("/usr/local/lib/R/site-library/stan-opencpu/series1.txt", header = TRUE)

	# Render the markdown
  rmarkdown::render("/usr/local/lib/opencpu/apps/ocpu_github_inesani_stan/stanopencpu/stan.Rmd",
		    output_file="output.pdf",
                    output_dir=getwd(),
                    intermediates_dir=getwd(), params=list(test=dataframe), output_format="pdf_document");
  invisible();
}



