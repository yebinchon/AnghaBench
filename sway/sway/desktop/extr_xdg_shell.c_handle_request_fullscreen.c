
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_xdg_toplevel_set_fullscreen_event {scalar_t__ fullscreen; TYPE_1__* output; } ;
struct wlr_xdg_surface {scalar_t__ role; int mapped; } ;
struct wl_listener {int dummy; } ;
struct sway_view {int container; struct wlr_xdg_surface* wlr_xdg_surface; } ;
struct sway_xdg_shell_view {struct sway_view view; } ;
struct sway_workspace {int dummy; } ;
struct sway_output {int dummy; } ;
struct TYPE_2__ {struct sway_output* data; } ;


 scalar_t__ WLR_XDG_SURFACE_ROLE_TOPLEVEL ;
 int arrange_root () ;
 scalar_t__ container_is_floating (int ) ;
 int container_is_scratchpad_hidden (int ) ;
 int container_set_fullscreen (int ,scalar_t__) ;
 struct sway_workspace* output_get_active_workspace (struct sway_output*) ;
 int request_fullscreen ;
 int sway_assert (int,char*,scalar_t__) ;
 int transaction_commit_dirty () ;
 struct sway_xdg_shell_view* wl_container_of (struct wl_listener*,int ,int ) ;
 int workspace_add_floating (struct sway_workspace*,int ) ;
 int workspace_add_tiling (struct sway_workspace*,int ) ;
 struct sway_xdg_shell_view* xdg_shell_view ;

__attribute__((used)) static void handle_request_fullscreen(struct wl_listener *listener, void *data) {
 struct sway_xdg_shell_view *xdg_shell_view =
  wl_container_of(listener, xdg_shell_view, request_fullscreen);
 struct wlr_xdg_toplevel_set_fullscreen_event *e = data;
 struct wlr_xdg_surface *xdg_surface =
  xdg_shell_view->view.wlr_xdg_surface;
 struct sway_view *view = &xdg_shell_view->view;

 if (!sway_assert(xdg_surface->role == WLR_XDG_SURFACE_ROLE_TOPLEVEL,
    "xdg_shell requested fullscreen of surface with role %i",
    xdg_surface->role)) {
  return;
 }
 if (!xdg_surface->mapped) {
  return;
 }

 if (e->fullscreen && e->output && e->output->data) {
  struct sway_output *output = e->output->data;
  struct sway_workspace *ws = output_get_active_workspace(output);
  if (ws && !container_is_scratchpad_hidden(view->container)) {
   if (container_is_floating(view->container)) {
    workspace_add_floating(ws, view->container);
   } else {
    workspace_add_tiling(ws, view->container);
   }
  }
 }

 container_set_fullscreen(view->container, e->fullscreen);

 arrange_root();
 transaction_commit_dirty();
}
