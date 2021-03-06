% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ubiquity.R
\name{run_simulation_titrate}
\alias{run_simulation_titrate}
\title{Simulate With Titration or Rule-Based Inputs}
\usage{
run_simulation_titrate(SIMINT_p, SIMINT_cfg, SIMINT_dropfirst = TRUE)
}
\arguments{
\item{SIMINT_p}{list of system parameters}

\item{SIMINT_cfg}{ubiquity system object}

\item{SIMINT_dropfirst}{when \code{TRUE} it will drop the first sample point (prevents bolus doses from starting at 0)}
}
\value{
som
}
\description{
Provides an interface to \code{\link{run_simulation_ubiquity}}
 to start and stop simulations and apply rules to control dosing and state-resets.
}
\seealso{
\code{\link{system_new_tt_rule}}, \code{\link{system_set_tt_cond}} and the titration vignette (\code{vignette("Titration", package = "ubiquity")})
}
