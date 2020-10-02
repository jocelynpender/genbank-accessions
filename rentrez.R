library(rentrez)
library(tidyverse)

genbank_search <- entrez_search("nucleotide", "DAOMC 252096")
taxize_summ <- lapply(genbank_search$ids, function (x) entrez_summary(db="nucleotide", id=x))
#taxize_summ$title

# Goal: Search GenBank for data corresponding to an accession number