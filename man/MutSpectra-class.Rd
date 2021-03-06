% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MutSpectra-class.R
\name{MutSpectra-class}
\alias{MutSpectra-class}
\alias{MutSpectra}
\title{Class MutSpectra}
\usage{
MutSpectra(object, BSgenome = NULL, sorting = NULL, palette = NULL,
  clinical = NULL, sectionHeights = NULL, sampleNames = TRUE,
  verbose = FALSE, plotALayers = NULL, plotBLayers = NULL,
  plotCLayers = NULL)
}
\arguments{
\item{object}{Object of class MutationAnnotationFormat, GMS, VEP.}

\item{BSgenome}{Object of class BSgenome, used to extract reference bases if
not supplied by the file format.}

\item{sorting}{Character vector specifying how samples should be ordered in the plot, one
of "mutation", "sample", or a vector of length equal to the number of samples explicitly 
providing the order of samples.}

\item{palette}{Character vector specifying the colors used for encoding transitions and transversions
, should be of length 6. If NULL a default palette will be used.}

\item{clinical}{Object of class Clinical, used for adding a clinical data subplot.}

\item{sectionHeights}{Numeric vector specifying relative heights of each plot section,
should sum to one. Expects a value for each section.}

\item{sampleNames}{Boolean specifying if samples should be labeled on the plot.}

\item{verbose}{Boolean specifying if status messages should be reported}

\item{plotALayers}{list of ggplot2 layers to be passed to the frequency plot.}

\item{plotBLayers}{list of ggplot2 layers to be passed to the proportion plot.}

\item{plotCLayers}{list of ggplot2 layers to be passed to the clinical plot.}
}
\description{
An S4 class for the MutSpectra plot object
}
\section{Slots}{

\describe{
\item{\code{PlotA}}{gtable object for the mutation frequencies.}

\item{\code{PlotB}}{gtable object for the mutation proportions.}

\item{\code{PlotC}}{gtable object for clinical data sub-plot.}

\item{\code{Grob}}{gtable object for the arranged plot.}

\item{\code{primaryData}}{data.table object storing the primary data, should have
column names sample, mutation, frequency, proportion.}

\item{\code{ClinicalData}}{data.table object storing the data used to plot the
clinical sub-plot.}
}}

