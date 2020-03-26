.onAttach <- function(libname, pkgname) { # nolint
  packageStartupMessage(glue::glue("
    EpiGraphDB v0.2

    Web API: http://api.epigraphdb.org

    To turn off this message, use
    suppressPackageStartupMessages({{library(\"epigraphdb\")}})
  "))
}

.onLoad <- function(libname, pkgname) { # nolint
  op <- options()
  op.epigraphdb <- list( # nolint
    epigraphdb.api.url = "http://api.epigraphdb.org/v0.2.0"
  )
  toset <- !(names(op.epigraphdb) %in% names(op))
  if (any(toset)) options(op.epigraphdb[toset])

  invisible()
}