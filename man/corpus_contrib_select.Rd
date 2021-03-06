% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/corpus.R
\name{corpus_contrib_select}
\alias{corpus_contrib_select}
\title{Selecting the member of a corpus, based on their contributions.}
\usage{
corpus_contrib_select(method, x, threesold, domain = "fr")
}
\arguments{
\item{method}{Method employed to get data into the corpus. \describe{
 \item{firstContrib}{Select only contributors who are part of the \code{threesold} \% of first contibutor of each page}
}}

\item{x}{A corpus created with corpus_contrib_create}

\item{threesold}{An integer used as a threesold to decide weither a contributor can be on the corpus or not. For instance, if \code{threesold=5}, only contribor who are is in the 5 percent first contributor of the article.}

\item{domain}{The domain where the wiki is located}
}
\value{
A data-frame.
}
\description{
This function is used to have a corpus of big contributors of the wiki.
To use this, you need a contributor corpus completed with 'page' method of corpus_contrib_data
}
\details{
BE CAUTIOUS : this function is VERY time-consuming.
}
\examples{
# creating a corpus of 5 contributor of the action page
c <- corpus_contrib_create('page','Action',limit=5)
\donttest{
c <- corpus_contrib_data('page',c)

# Keeping on this corpus only the contributor who are part of
# the 5 percent first contributors of the correspondant article.
c <- corpus_contrib_select(c,5)
}
}
\seealso{
Other corpus functions: \code{\link{corpus_contrib_create}},
  \code{\link{corpus_contrib_data}},
  \code{\link{corpus_page_create}},
  \code{\link{corpus_page_data}}
}

