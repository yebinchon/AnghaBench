
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_xwayland_surface {struct wlr_xwayland_surface* parent; } ;
struct sway_view {struct wlr_xwayland_surface* wlr_xwayland_surface; } ;


 int * xwayland_view_from_view (struct sway_view*) ;

__attribute__((used)) static bool is_transient_for(struct sway_view *child,
  struct sway_view *ancestor) {
 if (xwayland_view_from_view(child) == ((void*)0)) {
  return 0;
 }
 struct wlr_xwayland_surface *surface = child->wlr_xwayland_surface;
 while (surface) {
  if (surface->parent == ancestor->wlr_xwayland_surface) {
   return 1;
  }
  surface = surface->parent;
 }
 return 0;
}
