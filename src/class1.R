############
# @title
# @description
# Get data in Static Pages: countries
# @authors
###########

# install.packages("rvest")
# install.packages("dplyr")
install.packages("janitor")

library(rvest)
library(purrr)
library(dplyr)
library(janitor)

# url <- "https://pt.wikipedia.org/wiki/Lista_de_pa%C3%ADses_por_popula%C3%A7%C3%A3o"
# 
# url %>% 
#   read_html() %>%
#   html_table() %>%
#   pluck(1) %>% View()
url <- "https://www.chancedegol.com.br/br24.htm"

url %>%
  read_html() %>%
  html_table() %>%
  pluck(2) %>% #View() 
  slice(69, 277) %>%
  select(X1:X7) %>%
  janitor::row_to_names(row_number=1)
