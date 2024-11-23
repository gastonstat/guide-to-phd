# Title: Download PhD image files
# Description: Script that allows you to download the jpg image files
# of The Illustrated Guide to a Ph.D. (by Matt Might)
# Date: Fall 2024
# Author: Gaston Sanchez

library(tidyverse)


phd_url = "https://matt.might.net/articles/phd-school-in-pictures/"

numbers = str_extract(paste0("00", 1:12), "\\d{3}$")

phd_jpgs = paste0("images/PhDKnowledge.", numbers, ".jpg")

# download jpg's to images/
for (i in seq_along(phd_jpgs)) {
  phd_img_url = paste0(phd_url, phd_jpgs[i])
  phd_dest = paste0("phd_", numbers[i], ".jpg")
  download.file(phd_img_url, destfile = phd_dest)
}
