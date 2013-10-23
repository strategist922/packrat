\name{libdir}
\alias{libdir}
\title{
Show the path to the current private library
}
\description{
Returns the path to the private package library used by packrat.
}
\usage{
libdir(appDir = ".")
}
\arguments{
  \item{appDir}{Directory containing application. Defaults to current working
directory.}
}
\value{
A character vector containing the path to the private package library. The path
is not guaranteed to exist on disk. 
}
\note{
The private package library is normally created by \code{\link{bootstrap}}.
}
\examples{
# Show the library directory for the current working directory
libdir()
}