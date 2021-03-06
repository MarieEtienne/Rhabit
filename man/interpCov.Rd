% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gradientInterpolation.R
\name{interpCov}
\alias{interpCov}
\title{Interpolate 2D covariate}
\usage{
interpCov(locs, x_grid, y_grid, cov_mat)
}
\arguments{
\item{locs}{Point where the covariate should be interpolated}

\item{x_grid}{Grid on which the covariate is known}

\item{y_grid}{Grid on which the covariate is known}

\item{cov_mat}{Matrix of values of the covariate at the points given by
x_grid and y_grid.}
}
\value{
Interpolated value of the covariate at the point xy.
}
\description{
At the moment, this is based on the function \code{interp.surface} from
the package fields (bilinear interpolation).
}
\details{
Note that covmat needs to rotated (as e.g. with "image"), so you
might need to use something like
  covmat <- t(apply(as.matrix(covraster),2,rev))
before passing it to this function
}
