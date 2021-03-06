% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/proficiency_tools.R
\name{profpoly.data}
\alias{profpoly.data}
\title{Creates a data frame suitable for building custom polygon layers in ggplot2 objects}
\usage{
profpoly.data(grades, LOSS, minimal, basic, proficient, advanced, HOSS)
}
\arguments{
\item{grades}{a vector of tested grades in sequential order}

\item{LOSS}{is a vector of the lowest obtainable scale score on 
an assessment by grade}

\item{minimal}{is a vector of the floor of the minimal assessment category by grade}

\item{basic}{is a vector of the floor of the basic assessment category by grade}

\item{proficient}{is a vector of the floor of the proficient assessment category by grade}

\item{advanced}{is a vectof of the floor of the advanced assessment category by grade}

\item{HOSS}{is a vector of the highest obtainable scale score by grade}
}
\value{
a dataframe for adding a polygon to layers in other ggplot2 plots
}
\description{
Creates a data frame suitable for building custom polygon layers in ggplot2 objects
}
\examples{
grades<-c(3,4,5,6,7,8)
g<-length(grades)
LOSS<-rep(200,6)
HOSS<-rep(650,6)
basic<-c(320,350,370,390,420,440)
minimal<-basic-30
prof<-c(380,410,430,450,480,500)
adv<-c(480,510,530,550,580,600)

z<-profpoly.data(grades,LOSS,minimal,basic,
               proficient = prof,advanced = adv, HOSS)
z
}
\seealso{
\code{\link{geom_polygon}} which this function assists
}
\keyword{ggplot2}
\keyword{polygon}

