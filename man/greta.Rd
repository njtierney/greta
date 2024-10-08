% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/package.R
\docType{package}
\name{greta}
\alias{greta-package}
\alias{greta}
\title{greta: simple and scalable statistical modelling in R}
\description{
greta lets you write statistical models interactively in native
R code, then sample from them efficiently using Hamiltonian Monte Carlo.

The computational heavy lifting is done by TensorFlow, Google's automatic
differentiation library. So greta is particularly fast where the model
contains lots of linear algebra, and greta models can be run across CPU
clusters or on GPUs.

See the simple example below, and take a look at the
\href{https://greta-stats.org}{greta website} for more information
including
\href{https://greta-stats.org/articles/get_started.html}{tutorials} and
\href{https://greta-stats.org/articles/example_models.html}{examples}.
}
\examples{
\dontrun{
# a simple Bayesian regression model for the iris data

# priors
int <- normal(0, 5)
coef <- normal(0, 3)
sd <- lognormal(0, 3)

# likelihood
mean <- int + coef * iris$Petal.Length
distribution(iris$Sepal.Length) <- normal(mean, sd)

# build and sample
m <- model(int, coef, sd)
draws <- mcmc(m, n_samples = 100)
}
}
\seealso{
Useful links:
\itemize{
  \item \url{https://greta-stats.org}
  \item \url{https://github.com/greta-dev/greta}
  \item Report bugs at \url{https://github.com/greta-dev/greta/issues}
}

}
\author{
\strong{Maintainer}: Nicholas Tierney \email{nicholas.tierney@gmail.com} (\href{https://orcid.org/0000-0003-1460-8722}{ORCID})

Authors:
\itemize{
  \item Nick Golding \email{nick.golding.research@gmail.com} (\href{https://orcid.org/0000-0001-8916-5570}{ORCID})
}

Other contributors:
\itemize{
  \item Simon Dirmeier [contributor]
  \item Adam Fleischhacker [contributor]
  \item Shirin Glander [contributor]
  \item Martin Ingram [contributor]
  \item Lee Hazel [contributor]
  \item Lionel Hertzog [contributor]
  \item Tiphaine Martin [contributor]
  \item Matt Mulvahill [contributor]
  \item Michael Quinn [contributor]
  \item David Smith [contributor]
  \item Paul Teetor [contributor]
  \item Jian Yen [contributor]
}

}
