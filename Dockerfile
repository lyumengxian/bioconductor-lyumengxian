# Docker inheritance
FROM bioconductor/bioconductor_docker:devel

RUN apt-get update
RUN R -e 'BiocManager::install(ask = F)' && R -e 'BiocManager::install(c("magick", \
    "tidyverse", "vroom", "VennDiagram", \
    "Biostrings", "corrplot","limma", ask = F))' \
	&& R -e 'tinytex::install_tinytex()' \
	&& R -e 'install.packages("dplyr")'

### Install asciinema
RUN apt-get install -y  \
asciinema 
