#' @title Create interactive line segments of ggtree  
#' @description
#' The geometry is based on `geom_segment2()`.
#' See the documentation for those functions for more details.
#' @param ... see also the parameters of `geom_segment2()` of `ggtree`
#' @export
geom_segment2_interactive <- function(...){
  rlang::check_installed('ggiraph', "for `geom_segment2_interactive()`.")
  layer_interactive(geom_segment2, interactive_geom = GeomInteractiveSegmentGGtree, ...)
}

#' @title Create interactive text of ggtree
#' @description
#' The geometry is based on `geom_text2()`.
#' See the documentation for those functions for more details.
#' @param ... see also the parameters of `geom_text2()` of `ggtree`
#' @export
geom_text2_interactive <- function(...){
  rlang::check_installed('ggiraph', "for `geom_text2_interactive()`.")
  layer_interactive(geom_text2, interactive_geom = GeomInteractiveTextGGtree, ...)
}


#' @title Create interactive label of ggtree
#' @description
#' The geometry is based on `geom_label2()`.
#' See the documentation for those functions for more details.
#' @param ... see also the parameters of `geom_label2()` of `ggtree`
#' @export
geom_label2_interactive <- function(...){
  rlang::check_installed('ggiraph', "for `geom_label2_interactive()`.")
  layer_interactive(geom_label2, interactive_geom = GeomInteractiveLabelGGtree, ...)
}

#' @title Create interactive point of ggtree
#' @description
#' The geometry is based on `geom_point2()`.
#' See the documentation for those functions for more details.
#' @param ... see also the parameters of `geom_point2()` of `ggtree`
#' @export 
geom_point2_interactive <- function(...){
  rlang::check_installed('ggiraph', "for `geom_point2_interactive()`.")
  layer_interactive(geom_point2, interactive_geom = GeomInteractivePointGGtree, ...)
}


#' @keywords internal
geom_hilight_rect2_interactive <- function(...){
  layer_interactive(geom_hilight_rect2, interactive_geom = GeomInteractiveHilightRect, ...)
}

#' @keywords internal
geom_hilight_encircle2_interactive <- function(...){
  layer_interactive(geom_hilight_encircle2, interactive_geom = GeomInteractiveHilightEncircle, ...)
}



#' @keywords internal
geom_curvelink_interactive <- function(...){
  layer_interactive(geom_curvelink, interactive_geom = GeomInteractiveCurvelink, ...)
}

.check_ipar_params <- function(x){
  any(colnames(x) %in% IPAR_NAMES)
}
