% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/misc.R
\name{getSequences}
\alias{getSequences}
\title{Get vector of sequences.}
\usage{
getSequences(object)
}
\arguments{
\item{object}{(Required). The object from which to extract the sequences.}
}
\value{
\code{character}. A character vector of the sequences.
}
\description{
This function extracts the unique sequences from several different data objects, including
 \code{\link{dada-class}}, \code{\link{derep-class}} and \code{data.frame} objects that have both
 $sequence and $abundance columns. This function wraps the \code{\link{getUniques}} function, but
 return only the names (i.e. the sequences).
}
\examples{
derep1 = derepFastq(system.file("extdata", "sam1F.fastq.gz", package="dada2"))
dada1 <- dada(derep1, err=tperr1)
getSequences(derep1)
getSequences(dada1)
getSequences(dada1$clustering)
}

