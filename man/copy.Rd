% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wroc.R
\name{copy}
\alias{copy}
\alias{copy.summary.wroc.list}
\alias{copy.wroc}
\alias{copy.wroc.list}
\title{Export WROCs and WROC Lists}
\usage{
copy(x, ...)

\method{copy}{wroc}(x, export = FALSE, ...)

\method{copy}{wroc.list}(x, export = FALSE, ...)

\method{copy}{summary.wroc.list}(x, export = FALSE, ...)
}
\arguments{
\item{x}{An object of class \code{wroc} or \code{wroc.list}.}

\item{...}{Additional parameters for \code{write.table}.}

\item{export}{Should the table be exported? (As opposed to copied to the
clipboard).}
}
\description{
Serialize \code{wroc}'s, \code{wroc.list}'s or a list summaries as tables. There is
also an option for copying them to clipboard for easy pasting into Excel.
}

