
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_xdg_surface {int dummy; } ;
struct sway_view {struct wlr_xdg_surface* wlr_xdg_surface; } ;
typedef enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;


 int WLR_EDGE_BOTTOM ;
 int WLR_EDGE_LEFT ;
 int WLR_EDGE_NONE ;
 int WLR_EDGE_RIGHT ;
 int WLR_EDGE_TOP ;
 int wlr_xdg_toplevel_set_tiled (struct wlr_xdg_surface*,int) ;
 int * xdg_shell_view_from_view (struct sway_view*) ;

__attribute__((used)) static void set_tiled(struct sway_view *view, bool tiled) {
 if (xdg_shell_view_from_view(view) == ((void*)0)) {
  return;
 }
 struct wlr_xdg_surface *surface = view->wlr_xdg_surface;
 enum wlr_edges edges = WLR_EDGE_NONE;
 if (tiled) {
  edges = WLR_EDGE_LEFT | WLR_EDGE_RIGHT | WLR_EDGE_TOP |
    WLR_EDGE_BOTTOM;
 }
 wlr_xdg_toplevel_set_tiled(surface, edges);
}
