
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int request_mode; int destroy; } ;
struct wlr_xdg_toplevel_decoration_v1 {TYPE_3__ events; TYPE_1__* surface; } ;
struct wl_listener {int dummy; } ;
struct TYPE_9__ {struct sway_xdg_decoration* xdg_decoration; } ;
struct sway_xdg_shell_view {TYPE_2__ view; } ;
struct TYPE_11__ {int (* notify ) (TYPE_4__*,struct wlr_xdg_toplevel_decoration_v1*) ;} ;
struct sway_xdg_decoration {TYPE_4__ request_mode; int link; TYPE_4__ destroy; struct wlr_xdg_toplevel_decoration_v1* wlr_xdg_decoration; TYPE_2__* view; } ;
struct TYPE_12__ {int xdg_decorations; } ;
struct TYPE_8__ {struct sway_xdg_shell_view* data; } ;


 struct sway_xdg_decoration* calloc (int,int) ;
 TYPE_7__ server ;
 int wl_list_insert (int *,int *) ;
 int wl_signal_add (int *,TYPE_4__*) ;
 int xdg_decoration_handle_destroy (TYPE_4__*,struct wlr_xdg_toplevel_decoration_v1*) ;
 int xdg_decoration_handle_request_mode (TYPE_4__*,struct wlr_xdg_toplevel_decoration_v1*) ;

void handle_xdg_decoration(struct wl_listener *listener, void *data) {
 struct wlr_xdg_toplevel_decoration_v1 *wlr_deco = data;
 struct sway_xdg_shell_view *xdg_shell_view = wlr_deco->surface->data;

 struct sway_xdg_decoration *deco = calloc(1, sizeof(*deco));
 if (deco == ((void*)0)) {
  return;
 }

 deco->view = &xdg_shell_view->view;
 deco->view->xdg_decoration = deco;
 deco->wlr_xdg_decoration = wlr_deco;

 wl_signal_add(&wlr_deco->events.destroy, &deco->destroy);
 deco->destroy.notify = xdg_decoration_handle_destroy;

 wl_signal_add(&wlr_deco->events.request_mode, &deco->request_mode);
 deco->request_mode.notify = xdg_decoration_handle_request_mode;

 wl_list_insert(&server.xdg_decorations, &deco->link);

 xdg_decoration_handle_request_mode(&deco->request_mode, wlr_deco);
}
