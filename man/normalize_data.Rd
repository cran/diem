% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normalize.R
\name{normalize_data}
\alias{normalize_data}
\title{Normalize raw counts.}
\usage{
normalize_data(x, droplets.use = NULL, genes.use = NULL,
  use_var = TRUE, sf = "median", logt = TRUE)
}
\arguments{
\item{x}{An SCE object.}

\item{droplets.use}{A character vector of droplet IDs to subset the counts data. 
Normalization will only be run on these droplets.}

\item{genes.use}{A character vector of gene names to subset the counts data. 
Normalization will only be run for these genes.}

\item{use_var}{A logical indicating whether to subset the data to include
only variable genes. This overrides \code{genes.use}.
The default is TRUE as it may better identify cell types.}

\item{sf}{Either a numeric scaling factor to multiply counts after 
division by column sums, or "median" indicating to multiply by the median 
number of total read/UMI counts in droplets (default).}

\item{logt}{A logical specifying whether to log(x+1) transform counts after 
size normalization. Default is TRUE.}
}
\value{
An SCE object
}
\description{
Normalization of raw counts in an SCE object. Normalization is performed 
for the initialiation of the EM. The initialization involves 
clustering the high-count high-confidence droplets to approximately 
identify the cell types present in the data. To best identify 
cell types, clustering is done on the normalized counts.
}
\details{
By default this only normalizes droplets in the cluster set, as 
only these droplets that are used for the intialization and are 
the only droplets that require count normalization. Unless specified 
with \code{genes.use}, only variable genes are included in the 
normalization. 
The data is normalized by dividing counts by the total counts per droplet. 
Then, the counts are multiplied by a scaling factor, given by 
\code{sf} (the median of total counts by default). Finally, the data is 
log transformed after adding a constant value of 1.
}
