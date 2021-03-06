% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/measures.R
\name{cbs_mult}
\alias{cbs_mult}
\title{Profile Based Standardization (cbs)}
\usage{
cbs_mult(table, clus = NULL)
}
\arguments{
\item{table}{A dataframe with 4 columns (columns need to be in the right order)\cr
column 1: A document identifier\cr
column 2: The concept id\cr
column 3: A term identifier\cr
column 4: The term frequency}

\item{clus}{Number of cores to be used}
}
\value{
A dataframe with showing the cbs for each unique firm-pair for each concept
}
\description{
Profile Based Standardization (cbs)
}
\examples{
library (RFtex)

table <- tibble::tibble(
doc_id = c(1,1,1,1,1,2,2,2,2,3,3,3,3),
con_id = c(1,1,2,2,2,1,1,3,3,1,3,2,3),
term   = c("a", "b", "c", "d", "e", "a", "b", "f", "g", "a", "f", "e", "g"),
freq   = c(21,12,58,32,14,21,14,66,14,12,85,100,12))

cbs_mult(table)
clus <- parallel::makeCluster(getOption("cl.cores", 3))
cbs_mult(table, clus = clus)
}
