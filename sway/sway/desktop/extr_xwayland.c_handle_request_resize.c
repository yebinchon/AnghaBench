
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_xwayland_surface {int mapped; } ;
struct wlr_xwayland_resize_event {int edges; } ;
struct wl_listener {int dummy; } ;
struct sway_view {int container; struct wlr_xwayland_surface* wlr_xwayland_surface; } ;
struct sway_xwayland_view {struct sway_view view; } ;
struct sway_seat {int dummy; } ;


 int container_is_floating (int ) ;
 struct sway_seat* input_manager_current_seat () ;
 int request_resize ;
 int seatop_begin_resize_floating (struct sway_seat*,int ,int ) ;
 struct sway_xwayland_view* wl_container_of (struct wl_listener*,int ,int ) ;
 struct sway_xwayland_view* xwayland_view ;

__attribute__((used)) static void handle_request_resize(struct wl_listener *listener, void *data) {
 struct sway_xwayland_view *xwayland_view =
  wl_container_of(listener, xwayland_view, request_resize);
 struct sway_view *view = &xwayland_view->view;
 struct wlr_xwayland_surface *xsurface = view->wlr_xwayland_surface;
 if (!xsurface->mapped) {
  return;
 }
 if (!container_is_floating(view->container)) {
  return;
 }
 struct wlr_xwayland_resize_event *e = data;
 struct sway_seat *seat = input_manager_current_seat();
 seatop_begin_resize_floating(seat, view->container, e->edges);
}
