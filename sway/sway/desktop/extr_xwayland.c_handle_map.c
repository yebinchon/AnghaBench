
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wlr_xwayland_surface {int fullscreen; TYPE_3__* surface; int height; int width; int * data; scalar_t__ override_redirect; } ;
struct wl_listener {int dummy; } ;
struct TYPE_5__ {int notify; } ;
struct sway_view {int natural_height; int natural_width; } ;
struct sway_xwayland_view {TYPE_2__ commit; int destroy; struct sway_view view; } ;
struct sway_xwayland_unmanaged {int map; } ;
struct TYPE_4__ {int commit; } ;
struct TYPE_6__ {TYPE_1__ events; } ;


 struct sway_xwayland_unmanaged* create_unmanaged (struct wlr_xwayland_surface*) ;
 int handle_commit ;
 int handle_destroy (int *,struct sway_view*) ;
 int map ;
 int transaction_commit_dirty () ;
 int unmanaged_handle_map (int *,struct wlr_xwayland_surface*) ;
 int view_map (struct sway_view*,TYPE_3__*,int ,int *,int) ;
 struct sway_xwayland_view* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_signal_add (int *,TYPE_2__*) ;
 struct sway_xwayland_view* xwayland_view ;

__attribute__((used)) static void handle_map(struct wl_listener *listener, void *data) {
 struct sway_xwayland_view *xwayland_view =
  wl_container_of(listener, xwayland_view, map);
 struct wlr_xwayland_surface *xsurface = data;
 struct sway_view *view = &xwayland_view->view;

 if (xsurface->override_redirect) {


  handle_destroy(&xwayland_view->destroy, view);
  xsurface->data = ((void*)0);
  struct sway_xwayland_unmanaged *unmanaged = create_unmanaged(xsurface);
  unmanaged_handle_map(&unmanaged->map, xsurface);
  return;
 }

 view->natural_width = xsurface->width;
 view->natural_height = xsurface->height;



 wl_signal_add(&xsurface->surface->events.commit, &xwayland_view->commit);
 xwayland_view->commit.notify = handle_commit;


 view_map(view, xsurface->surface, xsurface->fullscreen, ((void*)0), 0);

 transaction_commit_dirty();
}
