
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_xdg_toplevel_state {scalar_t__ min_width; scalar_t__ min_height; scalar_t__ max_width; scalar_t__ max_height; } ;
struct wlr_xdg_toplevel {scalar_t__ parent; struct wlr_xdg_toplevel_state current; } ;
struct sway_view {TYPE_1__* wlr_xdg_surface; } ;
struct TYPE_2__ {struct wlr_xdg_toplevel* toplevel; } ;



__attribute__((used)) static bool wants_floating(struct sway_view *view) {
 struct wlr_xdg_toplevel *toplevel = view->wlr_xdg_surface->toplevel;
 struct wlr_xdg_toplevel_state *state = &toplevel->current;
 return (state->min_width != 0 && state->min_height != 0
  && (state->min_width == state->max_width
  || state->min_height == state->max_height))
  || toplevel->parent;
}
