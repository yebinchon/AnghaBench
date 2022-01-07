
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_xwayland_surface {scalar_t__ x; scalar_t__ y; int surface; } ;
struct wl_listener {int dummy; } ;
struct sway_xwayland_unmanaged {scalar_t__ lx; scalar_t__ ly; struct wlr_xwayland_surface* wlr_xwayland_surface; } ;


 int commit ;
 int desktop_damage_surface (int ,scalar_t__,scalar_t__,int) ;
 struct sway_xwayland_unmanaged* surface ;
 struct sway_xwayland_unmanaged* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void unmanaged_handle_commit(struct wl_listener *listener, void *data) {
 struct sway_xwayland_unmanaged *surface =
  wl_container_of(listener, surface, commit);
 struct wlr_xwayland_surface *xsurface = surface->wlr_xwayland_surface;

 if (xsurface->x != surface->lx || xsurface->y != surface->ly) {

  desktop_damage_surface(xsurface->surface, surface->lx, surface->ly,
   1);
  surface->lx = xsurface->x;
  surface->ly = xsurface->y;
  desktop_damage_surface(xsurface->surface, surface->lx, surface->ly,
   1);
 } else {
  desktop_damage_surface(xsurface->surface, xsurface->x, xsurface->y,
   0);
 }
}
