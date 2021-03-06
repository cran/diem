% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/em.R
\name{init_param}
\alias{init_param}
\title{Initialize EM parameters given group assignments}
\usage{
init_param(counts, groups, psc = 1e-04)
}
\arguments{
\item{counts}{an observation by variable matrix of non-negative
integer counts.}

\item{groups}{A character vector or factor, the same length 
as the number of columns in counts. The assignment of the 
index in groups corresponds to the group assignment of the 
column index in counts. Thus, the ordering of groups must 
be consistent with the column ordering in counts.}

\item{psc}{Pseudocount to add to the resulting mean for 
each multinomial mean parameter.}
}
\value{
List
\describe{
 \item{mu0}{A observation by k matrix of multinomial means.}
 \item{mc0}{A numeric vector of length k of micture coefficients.}
}
}
\description{
Initialize EM parameters given group assignments
}
