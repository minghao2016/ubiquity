% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ubiquity.R
\name{system_select_set}
\alias{system_select_set}
\title{Selecting Parameter Sets}
\usage{
system_select_set(cfg, set_name = "default", parameter_names = NULL)
}
\arguments{
\item{cfg}{ubiquity system object}

\item{set_name}{string containing the name of the parameter set}

\item{parameter_names}{list of parameter names to be estimated}
}
\value{
Ubiquity system object with the specified parameter set active
}
\description{
The system file can contain multiple parameterizations using
the \code{<PSET:?:?>?} notation. This function provides the means for
switching between these parameterizations, and (optionally) specifying a
subset of parameters estimated when performing parameter estimation.
}
\examples{
\donttest{
# Creating a system file from the mab_pk example
fr = system_new(file_name        = "system.txt", 
                system_file      = "mab_pk", 
                overwrite        = TRUE, 
                output_directory = tempdir())

# Building the system 
cfg = build_system(system_file  = file.path(tempdir(), "system.txt"),
      output_directory          = file.path(tempdir(), "output"),
      temporary_directory       = tempdir())

# Selecting the default parameter set
cfg = system_select_set(cfg, "default")
}
}
