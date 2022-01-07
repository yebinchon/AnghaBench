
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_xdg_surface {scalar_t__ role; TYPE_1__* toplevel; } ;
struct wlr_surface {int dummy; } ;
struct TYPE_2__ {struct wlr_xdg_surface* parent; } ;


 scalar_t__ WLR_XDG_SURFACE_ROLE_NONE ;
 scalar_t__ WLR_XDG_SURFACE_ROLE_POPUP ;
 scalar_t__ wlr_surface_is_xdg_surface (struct wlr_surface*) ;
 struct wlr_xdg_surface* wlr_xdg_surface_from_wlr_surface (struct wlr_surface*) ;

__attribute__((used)) static bool surface_is_popup(struct wlr_surface *surface) {
 if (wlr_surface_is_xdg_surface(surface)) {
  struct wlr_xdg_surface *xdg_surface =
   wlr_xdg_surface_from_wlr_surface(surface);
  while (xdg_surface && xdg_surface->role != WLR_XDG_SURFACE_ROLE_NONE) {
   if (xdg_surface->role == WLR_XDG_SURFACE_ROLE_POPUP) {
    return 1;
   }
   xdg_surface = xdg_surface->toplevel->parent;
  }
  return 0;
 }

 return 0;
}
