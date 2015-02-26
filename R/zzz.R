.all_packages <- strsplit("avantcredit/aws-tools
hadley/purrr
robertzk/Ramd
robertzk/testthatsomemore
robertzk/objectdiff
robertzk/stagerunner
robertzk/director
robertzk/statsUtils
robertzk/mungebits
robertzk/tundra
robertzk/syberiaMungebits
robertzk/syberiaStructure
robertzk/syberiaStages
robertzk/syberia
robertzk/s3mpi
robertzk/productivus
robertzk/berdie
robertzk/cachemeifyoucan
peterhurford/batchman
robertzk/microserver
robertzk/hipchat
robertzk/mungebits2
robertzk/K.R
jimhester/covr", "\n")[[1]]


.onAttach <- function(...) {
  for (pkg in .all_packages) {
    pkg_name <- gsub("^[^/]+/", "", pkg)
    if (pkg_name == "aws-tools") pkg_name <- "AWS.tools"
    if (!pkg_name %in% installed.packages()[,1]) {
      devtools::install_github(pkg)
    }
  }
}
