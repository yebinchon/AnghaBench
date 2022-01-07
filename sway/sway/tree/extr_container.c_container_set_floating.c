
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_workspace {int height; int width; } ;
struct sway_seat {int dummy; } ;
struct sway_container {scalar_t__ height_fraction; scalar_t__ width_fraction; int saved_border; int border; TYPE_1__* view; int height; int width; scalar_t__ scratchpad; struct sway_container* parent; struct sway_workspace* workspace; } ;
struct TYPE_2__ {scalar_t__ using_csd; } ;


 int B_CSD ;
 int container_add_sibling (struct sway_container*,struct sway_container*,int) ;
 int container_detach (struct sway_container*) ;
 int container_end_mouse_operation (struct sway_container*) ;
 int container_floating_resize_and_center (struct sway_container*) ;
 int container_floating_set_default_size (struct sway_container*) ;
 int container_is_floating (struct sway_container*) ;
 int container_reap_empty (struct sway_container*) ;
 struct sway_seat* input_manager_current_seat () ;
 int ipc_event_window (struct sway_container*,char*) ;
 int root_scratchpad_remove_container (struct sway_container*) ;
 struct sway_container* seat_get_focus_inactive_tiling (struct sway_seat*,struct sway_workspace*) ;
 int view_set_tiled (TYPE_1__*,int) ;
 int workspace_add_floating (struct sway_workspace*,struct sway_container*) ;
 int workspace_add_tiling (struct sway_workspace*,struct sway_container*) ;

void container_set_floating(struct sway_container *container, bool enable) {
 if (container_is_floating(container) == enable) {
  return;
 }

 struct sway_seat *seat = input_manager_current_seat();
 struct sway_workspace *workspace = container->workspace;

 if (enable) {
  struct sway_container *old_parent = container->parent;
  container_detach(container);
  workspace_add_floating(workspace, container);
  if (container->view) {
   view_set_tiled(container->view, 0);
   if (container->view->using_csd) {
    container->border = B_CSD;
   }
  }
  container_floating_set_default_size(container);
  container_floating_resize_and_center(container);
  if (old_parent) {
   container_reap_empty(old_parent);
  }
 } else {

  if (container->scratchpad) {
   root_scratchpad_remove_container(container);
  }
  container_detach(container);
  struct sway_container *reference =
   seat_get_focus_inactive_tiling(seat, workspace);
  if (reference) {
   container_add_sibling(reference, container, 1);
   container->width = reference->width;
   container->height = reference->height;
  } else {
   workspace_add_tiling(workspace, container);
   container->width = workspace->width;
   container->height = workspace->height;
  }
  if (container->view) {
   view_set_tiled(container->view, 1);
   if (container->view->using_csd) {
    container->border = container->saved_border;
   }
  }
  container->width_fraction = 0;
  container->height_fraction = 0;
 }

 container_end_mouse_operation(container);

 ipc_event_window(container, "floating");
}
