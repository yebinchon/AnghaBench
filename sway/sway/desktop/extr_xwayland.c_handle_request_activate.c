
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_xwayland_surface {int mapped; } ;
struct wl_listener {int dummy; } ;
struct sway_view {struct wlr_xwayland_surface* wlr_xwayland_surface; } ;
struct sway_xwayland_view {struct sway_view view; } ;


 int request_activate ;
 int transaction_commit_dirty () ;
 int view_request_activate (struct sway_view*) ;
 struct sway_xwayland_view* wl_container_of (struct wl_listener*,int ,int ) ;
 struct sway_xwayland_view* xwayland_view ;

__attribute__((used)) static void handle_request_activate(struct wl_listener *listener, void *data) {
 struct sway_xwayland_view *xwayland_view =
  wl_container_of(listener, xwayland_view, request_activate);
 struct sway_view *view = &xwayland_view->view;
 struct wlr_xwayland_surface *xsurface = view->wlr_xwayland_surface;
 if (!xsurface->mapped) {
  return;
 }
 view_request_activate(view);

 transaction_commit_dirty();
}
