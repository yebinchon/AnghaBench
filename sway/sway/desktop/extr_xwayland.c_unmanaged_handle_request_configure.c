
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_xwayland_surface_configure_event {int height; int width; int y; int x; } ;
struct wlr_xwayland_surface {int dummy; } ;
struct wl_listener {int dummy; } ;
struct sway_xwayland_unmanaged {struct wlr_xwayland_surface* wlr_xwayland_surface; } ;


 int request_configure ;
 struct sway_xwayland_unmanaged* surface ;
 struct sway_xwayland_unmanaged* wl_container_of (struct wl_listener*,int ,int ) ;
 int wlr_xwayland_surface_configure (struct wlr_xwayland_surface*,int ,int ,int ,int ) ;

__attribute__((used)) static void unmanaged_handle_request_configure(struct wl_listener *listener,
  void *data) {
 struct sway_xwayland_unmanaged *surface =
  wl_container_of(listener, surface, request_configure);
 struct wlr_xwayland_surface *xsurface = surface->wlr_xwayland_surface;
 struct wlr_xwayland_surface_configure_event *ev = data;
 wlr_xwayland_surface_configure(xsurface, ev->x, ev->y,
  ev->width, ev->height);
}
