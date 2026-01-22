# configure file for proteomics analysis

# clear the work space ####
rm(list=ls())
gc()

# Project title ####
MY_TITLE <- "Differentially expressed proteins in _Arabidopsis_ after Cd exposure in WT and mutants _rbohC_ and _rbohF_"

# Proteomics data files ####
# Cd samples
FILE_rbohC <- "data/rbohC_C_vs_Cd.tsv"
FILE_rbohF <- "data/rbohF_C_vs_Cd.tsv"
FILE_WT <- "data/WT_C_vs_Cd.tsv"
FILE_TOTAL <- "data/identification_all_samples_proteins.tsv"
FILE_NAME <- c("rbohC", "rbohF", "WT")

# Subcellular location of identified proteins ####
LOCATION <- "location/proteins_locations_modified.tsv"

# Subcellular location ontology ####
LOCATION_CAT <- "location/subcel_location_unique.txt"

# Detailed or short report ####
VERBOSE_MODE <- TRUE

# %%%%%%%%%%%%%%%%%%%%%%%%%%%
# END CONFIGURATION FILE ####
# %%%%%%%%%%%%%%%%%%%%%%%%%%%

# %%%%%%%%%%%%%%%%%%%%%%%%%%
# %%%%%%%%%%%%%%%%%%%%%%%%%%
# DO NOT TOUCH THE FOLLOWING
# %%%%%%%%%%%%%%%%%%%%%%%%%%
# %%%%%%%%%%%%%%%%%%%%%%%%%%

# set the initial time ####
T00 <- proc.time()

# load libraries ####
library(knitr)
library(rmarkdown)
library(venn)
library(VennDiagram)
library(ggplot2)
library(plotly)
library(DT)
library(reshape2)

## PATH VARIABLES ####

# PATH TO THE DIRECTORY CONTAINING THE SOURCE FILES ####
SOURCE_DIR <- getwd()

# Path to the directory where we will save the results ####
WD_DIR = getwd()

# variable to customise each working directory created ####
HOY <- format(Sys.time(), "%F_%H.%M.%S")
SUB_DIR <- paste0(WD_DIR, "/results_", HOY, "/")

# create directory to save results ####
dir.create(file.path(SUB_DIR), showWarnings = FALSE)

# path to Rmd ####
render(input = paste0(SOURCE_DIR, "/", "analysis_mutant_CdvsCtrl.Rmd"),
       output_dir = SUB_DIR,
       output_file = " Report.html",
       quiet = TRUE)

message("HTML Report was created")