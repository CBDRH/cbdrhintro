#' Run an interactive learnr tutorial
#'
#' @param tute
#'
#' @return
#' @export
#'
#' @examples
#' run()
run <- function(tute) {

  # locate all the existing tutorials
  validTutes <- list.files(system.file("tutorials", package = "cbdrhintro"))

  validExamplesMsg <-
    paste0(
      "Available tutorials are: '",
      paste(validTutes, collapse = "', '"),
      "'")

  # if an invalid example is given, throw an error
  if (missing(tute) || !nzchar(tute) || !tute %in% validTutes) {
    stop(
      'Please specify a valid app as an argument.\n',
      validExamplesMsg,
      call. = FALSE)
  }

  learn::safe(learnr::run_tutorial(tute, package = "cbdrhintro"))
}


#' Show an index of available tutorials
#'
#' @return
#' @export
#'
#' @examples
#' index()
index <- function(){

learnr::available_tutorials(package = 'cbdrhintro')

}
