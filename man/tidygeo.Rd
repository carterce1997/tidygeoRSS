% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidygeo.R
\name{tidygeo}
\alias{tidygeo}
\title{Extract a tidy data frame from geoRSS, geo-Atom and geoJSON feeds}
\usage{
tidygeo(
  feed,
  config = list(),
  clean_tags = TRUE,
  list = FALSE,
  parse_dates = TRUE
)
}
\arguments{
\item{feed}{\code{character}, the url for the feed that you want to parse,
e.g. "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.atom".}

\item{config}{Arguments passed off to \code{httr::GET()}.}

\item{clean_tags}{default \code{TRUE}. Clean HTML tags from summary and content?}

\item{list}{default \code{FALSE}. Return metadata and entry information in separate dataframes?
These will be combined in a named list.}

\item{parse_dates}{\code{logical}, default \code{TRUE}.
If \code{TRUE}, tidyRSS will attempt to parse columns that contain
datetime values, although this may fail, see note.}
}
\value{
A data frame of class "sf", "tbl_df", "tbl" and "data.frame".
}
\description{
Extract a tidy data frame from geoRSS, geo-Atom and geoJSON feeds
}
\note{
\code{tidygeo()} attempts to parse columns that should contain
dates. This can fail, as can be seen in tidyRSS
\href{https://github.com/RobertMyles/tidyRSS/issues/37}{here}. If you need
lower-level control over the parsing of dates, it's better to leave
\code{parse_dates} equal to \code{FALSE} and then parse these yourself.
}
\examples{
\dontrun{tidygeo("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.atom")}
}
