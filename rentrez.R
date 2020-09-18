library(rentrez)
library(tidyverse)

genbank_search <- entrez_search("nucleotide", "Carex capitata")
taxize_summ <- entrez_summary(db="nucleotide", id=1878287737)
taxize_summ$title

# Goal: Search GenBank for data corresponding to an accession number