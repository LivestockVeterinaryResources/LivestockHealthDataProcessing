
library(tidyverse)
library(rmarkdown)
library(dtplyr)
library(lubridate)
library(quarto)

start<-now()

### Step 1 Read in data----------
#***Modify This Step to Include Correctly Parse Location and Other custom functions***
source('step1_read_in_data.R')

### Step 2 Intermediate Files----------------------
#***Modify This Step to Include the Events/Disease of Interest***
source('step2_create_intermediate_files.R')

### Step3 Create Denominators ---------------------
#***Modify This Step to Include the Denominators of Interest***
# quarto::quarto_render('step3_create_denominators.qmd') 


### Step 4 Report Templates------------------------
#add basic report templates
# event check report
quarto::quarto_render('explore_event_types.qmd') 
quarto::quarto_render('data_dictionary.qmd')
# disease report 
# quarto::quarto_render('step3_report_disease_template.qmd')

#cohort disease incidence (Location, Lactation, Breed, etc)
#timing of disease (DIM (or Age) and calendar time distributions, Kaplan Meier)
#perfomrance and disease (milk, gain, repro)

end<-now()

end-start
