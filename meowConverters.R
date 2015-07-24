# Git
# $cd /d/ashumeow/
# $git clone https://github.com/ashumeow/go-hardware.git
# cd go-hardware
# ### copy path address, use it in below R code, execute and convert into HTML/.txt

# R
meowConverters= function()
{
  require("ggplot2")
  require("knitr")
  
  ## Converting any markdown file into HTML as well as .txt formats
  
  options(rstudio.markdownToHTML = 
            function(inputFile, outputFile) {      
              system(paste("mmd", inputFile, " > ", outputFile))
            }
  )
  require("markdown")
  knit2html("D:\\ashumeow\\go-hardware\\README.md")
}
meowConverters()

## Source: (check my repo)
## https://github.com/Geek-Research-Lab/meowConverters
