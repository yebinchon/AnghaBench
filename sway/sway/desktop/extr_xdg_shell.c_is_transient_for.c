
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_xdg_surface {scalar_t__ role; TYPE_1__* toplevel; } ;
struct sway_view {struct wlr_xdg_surface* wlr_xdg_surface; } ;
struct TYPE_2__ {struct wlr_xdg_surface* parent; } ;


 scalar_t__ WLR_XDG_SURFACE_ROLE_TOPLEVEL ;
 int * xdg_shell_view_from_view (struct sway_view*) ;

__attribute__((used)) static bool is_transient_for(struct sway_view *child,
  struct sway_view *ancestor) {
 if (xdg_shell_view_from_view(child) == ((void*)0)) {
  return 0;
 }
 struct wlr_xdg_surface *surface = child->wlr_xdg_surface;
 while (surface && surface->role == WLR_XDG_SURFACE_ROLE_TOPLEVEL) {
  if (surface->toplevel->parent == ancestor->wlr_xdg_surface) {
   return 1;
  }
  surface = surface->toplevel->parent;
 }
 return 0;
}
