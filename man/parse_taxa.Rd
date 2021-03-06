\name{parse_taxa}
\alias{parse_taxa}

\title{
Parsing scientific names
}
\description{
Parse a scientific name into different parts, namely: (1)genus, (2)species, (2)author, (3)infraspecific rank, i.e. var., f., subsp., (4)infraspecific epithet, (5)author of infraspecific rank
}
\usage{
parse_taxa(taxa)
}
\arguments{
  \item{taxa}{
A character string, usually the scientific name of a plant species
}
}
\details{
The details are explained in the value section
}
\value{
    A data.frame containing the following columns:
\item{TAXON_PARSED}{The input taxa name}
\item{GENUS_PARSED}{The genus: letters before the first white space}
\item{SPECIES_PARSED}{The specific epithet: letters after the first white space but before the second white spaccce}
\item{AUTHOR_OF_SPECIES_PARSED}{the Author of this taxa, if no var./f./subsp. is fouund with, AUTHOR_OF_SPECIES_PARSED will include all letters (including whitespace) from the second gap onwards }
\item{INFRASPECIFIC_RANK_PARSED}{either f., var. or subsp., if these values were detected in the taxa name. If neighther f., var. or subsp. is not detected, this field will be left empty}
\item{INFRASPECIFIC_EPITHET_PARSED}{if either f., var. or subsp. is detected, letters after the "INFRASPECIFIC_RANK_PARSED" but before a white space will be extracted as INFRASPECIFIC_EPITHET_PARSED. If neighther f., var. or subsp. is not detected, this field will be left empty }
\item{AUTHOR_OF_INFRASPECIFIC_RANK_PARSED}{All the letters after INFRASPECIFIC_EPITHET_PARSED will be treated as AUTHOR_OF_INFRASPECIFIC_RANK_PARSED. If neighther f., var. or subsp. is not detected, this field will be left empty }
}

\author{
Jinlong Zhang
}

\seealso{
\code{\link{status}}, \code{\link{make_checklist}}
}
\examples{
parse_taxa("Epirixanthes elongata Blume")
parse_taxa("Epirixanthes elongata")
}
