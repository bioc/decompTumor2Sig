#' decompTumor2Sig - Decomposition of individual tumors into mutational
#' signatures by signature refitting
#' 
#' The decompTumor2Sig package uses quadratic programming to decompose the
#' somatic mutation catalog from an individual tumor sample (or multiple
#' individual tumor samples) into a set of given mutational signatures (either
#' of the "Alexandrov model" by Alexandrov et al, Nature 500(7463):415-421,
#' 2013, or the "Shiraishi model" by Shiraishi et al, PLoS Genet
#' 11(12):e1005657, 2015), thus computing weights (or "exposures") that reflect
#' the contributions of the signatures to the mutation load of the tumor.
#' 
#' \tabular{ll}{
#' Package: \tab decompTumor2Sig\cr
#' Type: \tab Package\cr
#' Version: \tab 2.13.1\cr
#' Date: \tab 2022-05-09\cr
#' License: \tab GPL (>=2)\cr
#' }
#' 
#' The package provides the following functions:
#' 
#' \tabular{ll}{
#'
#' adjustSignaturesForRegionSet():\tab adjust (normalize) mutational\cr
#'                         \tab signatures for use with mutation data from a\cr
#'                         \tab specific, limited subset of genomic regions\cr
#'                         \tab (e.g., for targetted sequencing).\cr 
#' 
#' composeGenomesFromExposures():\tab (re-)construct tumor genome mutation\cr
#'                         \tab frequencies from the signatures and\cr
#'                         \tab their corresponding exposures, or\cr
#'                         \tab contributions.\cr
#'
#' computeExplainedVariance():\tab determine the variance explained by \cr
#'                         \tab estimated signature contributions\cr
#'                         \tab (i.e., exposures to signatures).\cr
#'
#' convertAlexandrov2Shiraishi():\tab convert a set of Alexandrov \cr
#'                         \tab signatures to Shiraishi signatures.\cr
#'
#' convertGenomesFromVRanges():\tab convert a genome or set of genomes\cr
#'                         \tab from a \code{VariantAnnotation::VRanges}\cr
#'                         \tab object.\cr
#'
#' decomposeTumorGenomes():\tab determine the weights/contributions of\cr
#'                         \tab a set of signatures to each of a set of\cr
#'                         \tab individual tumor genomes.\cr
#' 
#' determineSignatureDistances():\tab for a given signature \cr
#'                         \tab compute its distances to each of a set\cr
#'                         \tab of target signatures.\cr
#'
#' downgradeShiraishiSignatures():\tab downgrade Shiraishi signatures\cr
#'                         \tab by removing flanking bases and/or the\cr
#'                         \tab transcription direction.\cr
#' 
#' evaluateDecompositionQuality():\tab evaluate the quality of a\cr
#'                         \tab decomposition by comparing the\cr
#'                         \tab re-composed (=re-constructed) tumor\cr
#'                         \tab mutation frequencies to those actually\cr
#'                         \tab observed in the tumor genome.\cr
#'
#' getGenomesFromMutFeatData():\tab extract the genomes from a \cr
#'                         \tab \code{MutationFeatureData} object as \cr
#'                         \tab provided by, for example,\cr
#'                         \tab \code{pmsignature::readMPFile}.\cr
#'
#' getSignaturesFromEstParam():\tab extract a set of signatures from an \cr
#'                         \tab \code{EstimatedParameters} object as\cr
#'                         \tab returned by function \code{getPMSignature}\cr
#'                         \tab of the \code{pmsignature} package.\cr
#'
#' isAlexandrovSet():      \tab checks whether the input list is\cr
#'                         \tab compatible with the Alexandrov format\cr
#'                         \tab (probability vectors).\cr
#'
#' isExposureSet():        \tab checks whether the input list is\cr
#'                         \tab compatible with exposure output obtained\cr
#'                         \tab from \code{decomposeTumorGenomes}.\cr
#' 
#' isShiraishiSet():       \tab checks whether the input list is\cr
#'                         \tab compatible with the Shiraishi format\cr
#'                         \tab (matrices or data.frames of\cr
#'                         \tab probabilities).\cr
#' 
#' isSignatureSet():       \tab checks whether the input list is\cr
#'                         \tab compatible with either the Alexandrov\cr
#'                         \tab or Shiraishi format.\cr
#' 
#' mapSignatureSets():     \tab find a mapping from one signature\cr
#'                         \tab set to another.\cr
#'
#' plotDecomposedContribution():\tab plot the decomposition of a\cr
#'                         \tab genome into mutational signatures\cr
#'                         \tab (i.e., the contributions of, or\cr
#'                         \tab exposures to, the signatures).\cr
#'
#' plotExplainedVariance():\tab plot the variance of a genome's\cr
#'                         \tab mutation patterns which can be\cr
#'                         \tab explained with an increasing number\cr
#'                         \tab of signatures.\cr
#'
#' plotMutationDistribution():\tab plot a single signature or the\cr
#'                         \tab mutation frequency data for a single\cr
#'                         \tab genome.\cr
#'
#' readAlexandrovSignatures():\tab read Alexandrov signatures in the\cr
#'                         \tab COSMIC format from a flat file or URL.\cr
#'
#' readGenomesFromMPF():   \tab read a genome or set of genomes from a \cr
#'                         \tab Mutation Position Format (MPF) file.\cr
#'
#' readGenomesFromVCF():   \tab read a genome or set of genomes from a\cr
#'                         \tab Variant Call Format (VCF) file.\cr
#'
#' readShiraishiSignatures():\tab read Shiraishi signatures from\cr
#'                         \tab flat files.\cr
#'
#' sameSignatureFormat():  \tab checks whether two input lists are sets\cr
#'                         \tab of signatures of the same format.\cr
#' 
#' }
#' 
#' @name decompTumor2Sig-package
#' @aliases decompTumor2Sig-package decompTumor2Sig
#' @docType package
#' @author Rosario M. Piro, Politecnico di Milano [aut, cre]\cr
#' Sandra Krueger, Freie Universitaet Berlin [ctb]\cr
#' Maintainer: Rosario M. Piro\cr
#' E-Mail: <rmpiro@@gmail.com> or <rosariomichael.piro@@polimi.it>
#' @references \url{http://rmpiro.net/decompTumor2Sig/}\cr
#' Krueger, Piro (2019) decompTumor2Sig: Identification of mutational
#' signatures active in individual tumors. BMC Bioinformatics 
#' 20(Suppl 4):152.\cr
NULL
