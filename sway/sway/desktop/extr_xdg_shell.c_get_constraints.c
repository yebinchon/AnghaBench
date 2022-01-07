
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_xdg_toplevel_state {double min_width; double max_width; double min_height; double max_height; } ;
struct sway_view {TYPE_2__* wlr_xdg_surface; } ;
struct TYPE_4__ {TYPE_1__* toplevel; } ;
struct TYPE_3__ {struct wlr_xdg_toplevel_state current; } ;


 double DBL_MAX ;
 double DBL_MIN ;

__attribute__((used)) static void get_constraints(struct sway_view *view, double *min_width,
  double *max_width, double *min_height, double *max_height) {
 struct wlr_xdg_toplevel_state *state =
  &view->wlr_xdg_surface->toplevel->current;
 *min_width = state->min_width > 0 ? state->min_width : DBL_MIN;
 *max_width = state->max_width > 0 ? state->max_width : DBL_MAX;
 *min_height = state->min_height > 0 ? state->min_height : DBL_MIN;
 *max_height = state->max_height > 0 ? state->max_height : DBL_MAX;
}
