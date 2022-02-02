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
