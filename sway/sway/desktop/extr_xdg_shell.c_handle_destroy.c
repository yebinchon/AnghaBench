
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct TYPE_7__ {int link; } ;
struct TYPE_6__ {int link; } ;
struct TYPE_5__ {int link; } ;
struct sway_view {TYPE_4__* xdg_decoration; int * wlr_xdg_surface; int * surface; } ;
struct sway_xdg_shell_view {TYPE_3__ unmap; TYPE_2__ map; TYPE_1__ destroy; struct sway_view view; } ;
struct TYPE_8__ {int * view; } ;


 int destroy ;
 int sway_assert (int ,char*) ;
 int view_begin_destroy (struct sway_view*) ;
 struct sway_xdg_shell_view* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_remove (int *) ;
 struct sway_xdg_shell_view* xdg_shell_view ;

__attribute__((used)) static void handle_destroy(struct wl_listener *listener, void *data) {
 struct sway_xdg_shell_view *xdg_shell_view =
  wl_container_of(listener, xdg_shell_view, destroy);
 struct sway_view *view = &xdg_shell_view->view;
 if (!sway_assert(view->surface == ((void*)0), "Tried to destroy a mapped view")) {
  return;
 }
 wl_list_remove(&xdg_shell_view->destroy.link);
 wl_list_remove(&xdg_shell_view->map.link);
 wl_list_remove(&xdg_shell_view->unmap.link);
 view->wlr_xdg_surface = ((void*)0);
 if (view->xdg_decoration) {
  view->xdg_decoration->view = ((void*)0);
 }
 view_begin_destroy(view);
}
