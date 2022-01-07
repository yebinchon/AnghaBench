
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct TYPE_2__ {int link; } ;
struct sway_view {int surface; } ;
struct sway_xwayland_view {TYPE_1__ commit; struct sway_view view; } ;


 int sway_assert (int ,char*) ;
 int unmap ;
 int view_unmap (struct sway_view*) ;
 struct sway_xwayland_view* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_remove (int *) ;
 struct sway_xwayland_view* xwayland_view ;

__attribute__((used)) static void handle_unmap(struct wl_listener *listener, void *data) {
 struct sway_xwayland_view *xwayland_view =
  wl_container_of(listener, xwayland_view, unmap);
 struct sway_view *view = &xwayland_view->view;

 if (!sway_assert(view->surface, "Cannot unmap unmapped view")) {
  return;
 }

 view_unmap(view);

 wl_list_remove(&xwayland_view->commit.link);
}
