
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_xwayland_surface_size_hints {double min_width; double max_width; double min_height; double max_height; } ;
struct wlr_xwayland_surface {struct wlr_xwayland_surface_size_hints* size_hints; } ;
struct sway_view {struct wlr_xwayland_surface* wlr_xwayland_surface; } ;


 double DBL_MAX ;
 double DBL_MIN ;

__attribute__((used)) static void get_constraints(struct sway_view *view, double *min_width,
  double *max_width, double *min_height, double *max_height) {
 struct wlr_xwayland_surface *surface = view->wlr_xwayland_surface;
 struct wlr_xwayland_surface_size_hints *size_hints = surface->size_hints;
 *min_width = size_hints->min_width > 0 ? size_hints->min_width : DBL_MIN;
 *max_width = size_hints->max_width > 0 ? size_hints->max_width : DBL_MAX;
 *min_height = size_hints->min_height > 0 ? size_hints->min_height : DBL_MIN;
 *max_height = size_hints->max_height > 0 ? size_hints->max_height : DBL_MAX;
}
