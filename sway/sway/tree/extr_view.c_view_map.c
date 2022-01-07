
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int new_subsurface; } ;
struct wlr_surface {TYPE_1__ events; } ;
struct wlr_output {struct sway_output* data; } ;
struct sway_workspace {int node; } ;
struct TYPE_9__ {int notify; } ;
struct sway_view {struct sway_container* container; TYPE_2__* impl; TYPE_3__ surface_new_subsurface; struct wlr_surface* surface; } ;
struct sway_seat {int dummy; } ;
struct sway_output {int dummy; } ;
struct sway_node {scalar_t__ type; struct sway_container* sway_container; } ;
struct sway_container {int node; TYPE_6__* workspace; scalar_t__ parent; scalar_t__ view; int border_thickness; int border; } ;
struct TYPE_12__ {struct sway_container* fullscreen; } ;
struct TYPE_11__ {scalar_t__ popup_during_fullscreen; int border_thickness; int border; int floating_border_thickness; int floating_border; } ;
struct TYPE_10__ {int node; } ;
struct TYPE_8__ {scalar_t__ (* wants_floating ) (struct sway_view*) ;} ;


 scalar_t__ N_CONTAINER ;
 scalar_t__ POPUP_LEAVE ;
 int arrange_container (scalar_t__) ;
 int arrange_workspace (TYPE_6__*) ;
 TYPE_5__* config ;
 int container_add_sibling (struct sway_container*,struct sway_container*,int) ;
 struct sway_container* container_create (struct sway_view*) ;
 scalar_t__ container_is_floating (struct sway_container*) ;
 int container_set_floating (struct sway_container*,int) ;
 int container_set_fullscreen (struct sway_container*,int) ;
 int container_update_representation (struct sway_container*) ;
 struct sway_seat* input_manager_current_seat () ;
 int input_manager_set_focus (int *) ;
 int ipc_event_window (struct sway_container*,char*) ;
 struct sway_workspace* output_get_active_workspace (struct sway_output*) ;
 TYPE_4__* root ;
 struct sway_node* seat_get_focus_inactive (struct sway_seat*,int *) ;
 struct sway_workspace* seat_get_last_known_workspace (struct sway_seat*) ;
 struct sway_workspace* select_workspace (struct sway_view*) ;
 scalar_t__ should_focus (struct sway_view*) ;
 scalar_t__ stub1 (struct sway_view*) ;
 int sway_assert (int ,char*) ;
 int view_execute_criteria (struct sway_view*) ;
 int view_handle_surface_new_subsurface ;
 int view_init_subsurfaces (struct sway_view*,struct wlr_surface*) ;
 scalar_t__ view_is_transient_for (struct sway_view*,scalar_t__) ;
 int view_populate_pid (struct sway_view*) ;
 int view_set_tiled (struct sway_view*,int) ;
 int view_update_csd_from_client (struct sway_view*,int) ;
 int view_update_title (struct sway_view*,int) ;
 int wl_signal_add (int *,TYPE_3__*) ;
 int workspace_add_tiling (struct sway_workspace*,struct sway_container*) ;

void view_map(struct sway_view *view, struct wlr_surface *wlr_surface,
     bool fullscreen, struct wlr_output *fullscreen_output,
     bool decoration) {
 if (!sway_assert(view->surface == ((void*)0), "cannot map mapped view")) {
  return;
 }
 view->surface = wlr_surface;
 view_populate_pid(view);
 view->container = container_create(view);




 struct sway_workspace *ws = ((void*)0);
 if (fullscreen_output && fullscreen_output->data) {
  struct sway_output *output = fullscreen_output->data;
  ws = output_get_active_workspace(output);
 }
 if (!ws) {
  ws = select_workspace(view);
 }

 struct sway_seat *seat = input_manager_current_seat();
 struct sway_node *node = ws ? seat_get_focus_inactive(seat, &ws->node)
  : seat_get_focus_inactive(seat, &root->node);
 struct sway_container *target_sibling = node->type == N_CONTAINER ?
  node->sway_container : ((void*)0);



 if (target_sibling && container_is_floating(target_sibling)) {
  target_sibling = ((void*)0);
  ws = seat_get_last_known_workspace(seat);
 }

 if (target_sibling) {
  container_add_sibling(target_sibling, view->container, 1);
 } else if (ws) {
  workspace_add_tiling(ws, view->container);
 }
 ipc_event_window(view->container, "new");

 view_init_subsurfaces(view, wlr_surface);
 wl_signal_add(&wlr_surface->events.new_subsurface,
  &view->surface_new_subsurface);
 view->surface_new_subsurface.notify = view_handle_surface_new_subsurface;

 if (decoration) {
  view_update_csd_from_client(view, decoration);
 }

 if (view->impl->wants_floating && view->impl->wants_floating(view)) {
  view->container->border = config->floating_border;
  view->container->border_thickness = config->floating_border_thickness;
  container_set_floating(view->container, 1);
 } else {
  view->container->border = config->border;
  view->container->border_thickness = config->border_thickness;
  view_set_tiled(view, 1);
 }

 if (config->popup_during_fullscreen == POPUP_LEAVE &&
   view->container->workspace &&
   view->container->workspace->fullscreen &&
   view->container->workspace->fullscreen->view) {
  struct sway_container *fs = view->container->workspace->fullscreen;
  if (view_is_transient_for(view, fs->view)) {
   container_set_fullscreen(fs, 0);
  }
 }

 view_update_title(view, 0);
 container_update_representation(view->container);

 if (fullscreen) {
  container_set_fullscreen(view->container, 1);
  arrange_workspace(view->container->workspace);
 } else {
  if (view->container->parent) {
   arrange_container(view->container->parent);
  } else if (view->container->workspace) {
   arrange_workspace(view->container->workspace);
  }
 }

 view_execute_criteria(view);

 if (should_focus(view)) {
  input_manager_set_focus(&view->container->node);
 }
}
