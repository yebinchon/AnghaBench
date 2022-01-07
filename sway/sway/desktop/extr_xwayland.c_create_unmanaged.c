
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int destroy; int unmap; int map; int request_configure; } ;
struct wlr_xwayland_surface {TYPE_1__ events; } ;
struct TYPE_4__ {int notify; } ;
struct sway_xwayland_unmanaged {TYPE_2__ destroy; TYPE_2__ unmap; TYPE_2__ map; TYPE_2__ request_configure; struct wlr_xwayland_surface* wlr_xwayland_surface; } ;


 int SWAY_ERROR ;
 struct sway_xwayland_unmanaged* calloc (int,int) ;
 int sway_log (int ,char*) ;
 int unmanaged_handle_destroy ;
 int unmanaged_handle_map ;
 int unmanaged_handle_request_configure ;
 int unmanaged_handle_unmap ;
 int wl_signal_add (int *,TYPE_2__*) ;

__attribute__((used)) static struct sway_xwayland_unmanaged *create_unmanaged(
  struct wlr_xwayland_surface *xsurface) {
 struct sway_xwayland_unmanaged *surface =
  calloc(1, sizeof(struct sway_xwayland_unmanaged));
 if (surface == ((void*)0)) {
  sway_log(SWAY_ERROR, "Allocation failed");
  return ((void*)0);
 }

 surface->wlr_xwayland_surface = xsurface;

 wl_signal_add(&xsurface->events.request_configure,
  &surface->request_configure);
 surface->request_configure.notify = unmanaged_handle_request_configure;
 wl_signal_add(&xsurface->events.map, &surface->map);
 surface->map.notify = unmanaged_handle_map;
 wl_signal_add(&xsurface->events.unmap, &surface->unmap);
 surface->unmap.notify = unmanaged_handle_unmap;
 wl_signal_add(&xsurface->events.destroy, &surface->destroy);
 surface->destroy.notify = unmanaged_handle_destroy;

 return surface;
}
