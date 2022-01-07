
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_xwayland_surface {int dummy; } ;
struct wlr_xdg_surface {int dummy; } ;
struct wlr_surface {TYPE_1__* role; } ;
struct wlr_subsurface {struct wlr_surface* parent; } ;
struct sway_view {int dummy; } ;
struct TYPE_2__ {char* name; } ;


 int SWAY_DEBUG ;
 int sway_log (int ,char*,char const*,struct wlr_surface*) ;
 struct sway_view* view_from_wlr_xdg_surface (struct wlr_xdg_surface*) ;
 struct sway_view* view_from_wlr_xwayland_surface (struct wlr_xwayland_surface*) ;
 struct wlr_subsurface* wlr_subsurface_from_wlr_surface (struct wlr_surface*) ;
 scalar_t__ wlr_surface_is_layer_surface (struct wlr_surface*) ;
 scalar_t__ wlr_surface_is_subsurface (struct wlr_surface*) ;
 scalar_t__ wlr_surface_is_xdg_surface (struct wlr_surface*) ;
 scalar_t__ wlr_surface_is_xwayland_surface (struct wlr_surface*) ;
 struct wlr_xdg_surface* wlr_xdg_surface_from_wlr_surface (struct wlr_surface*) ;
 struct wlr_xwayland_surface* wlr_xwayland_surface_from_wlr_surface (struct wlr_surface*) ;

struct sway_view *view_from_wlr_surface(struct wlr_surface *wlr_surface) {
 if (wlr_surface_is_xdg_surface(wlr_surface)) {
  struct wlr_xdg_surface *xdg_surface =
   wlr_xdg_surface_from_wlr_surface(wlr_surface);
  return view_from_wlr_xdg_surface(xdg_surface);
 }







 if (wlr_surface_is_subsurface(wlr_surface)) {
  struct wlr_subsurface *subsurface =
   wlr_subsurface_from_wlr_surface(wlr_surface);
  return view_from_wlr_surface(subsurface->parent);
 }
 if (wlr_surface_is_layer_surface(wlr_surface)) {
  return ((void*)0);
 }

 const char *role = wlr_surface->role ? wlr_surface->role->name : ((void*)0);
 sway_log(SWAY_DEBUG, "Surface of unknown type (role %s): %p",
  role, wlr_surface);
 return ((void*)0);
}
