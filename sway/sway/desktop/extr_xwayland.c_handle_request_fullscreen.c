
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_xwayland_surface {int fullscreen; int mapped; } ;
struct wl_listener {int dummy; } ;
struct sway_view {int container; struct wlr_xwayland_surface* wlr_xwayland_surface; } ;
struct sway_xwayland_view {struct sway_view view; } ;


 int arrange_root () ;
 int container_set_fullscreen (int ,int ) ;
 int request_fullscreen ;
 int transaction_commit_dirty () ;
 struct sway_xwayland_view* wl_container_of (struct wl_listener*,int ,int ) ;
 struct sway_xwayland_view* xwayland_view ;

__attribute__((used)) static void handle_request_fullscreen(struct wl_listener *listener, void *data) {
 struct sway_xwayland_view *xwayland_view =
  wl_container_of(listener, xwayland_view, request_fullscreen);
 struct sway_view *view = &xwayland_view->view;
 struct wlr_xwayland_surface *xsurface = view->wlr_xwayland_surface;
 if (!xsurface->mapped) {
  return;
 }
 container_set_fullscreen(view->container, xsurface->fullscreen);

 arrange_root();
 transaction_commit_dirty();
}
