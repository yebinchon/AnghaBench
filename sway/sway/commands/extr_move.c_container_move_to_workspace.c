
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {struct sway_output* output; } ;
struct sway_output {int dummy; } ;
struct sway_container {scalar_t__ view; scalar_t__ height_fraction; scalar_t__ width_fraction; scalar_t__ height; scalar_t__ width; int fullscreen_mode; struct sway_workspace* workspace; } ;


 int container_detach (struct sway_container*) ;
 int container_floating_move_to_center (struct sway_container*) ;
 int container_handle_fullscreen_reparent (struct sway_container*) ;
 scalar_t__ container_is_floating (struct sway_container*) ;
 int container_update_representation (struct sway_container*) ;
 int ipc_event_window (struct sway_container*,char*) ;
 int workspace_add_floating (struct sway_workspace*,struct sway_container*) ;
 int workspace_add_tiling (struct sway_workspace*,struct sway_container*) ;
 int workspace_detect_urgent (struct sway_workspace*) ;
 int workspace_focus_fullscreen (struct sway_workspace*) ;

__attribute__((used)) static void container_move_to_workspace(struct sway_container *container,
  struct sway_workspace *workspace) {
 if (container->workspace == workspace) {
  return;
 }
 struct sway_workspace *old_workspace = container->workspace;
 if (container_is_floating(container)) {
  struct sway_output *old_output = container->workspace->output;
  container_detach(container);
  workspace_add_floating(workspace, container);
  container_handle_fullscreen_reparent(container);

  if (old_output != workspace->output && !container->fullscreen_mode) {
   container_floating_move_to_center(container);
  }
 } else {
  container_detach(container);
  container->width = container->height = 0;
  container->width_fraction = container->height_fraction = 0;
  workspace_add_tiling(workspace, container);
  container_update_representation(container);
 }
 if (container->view) {
  ipc_event_window(container, "move");
 }
 workspace_detect_urgent(old_workspace);
 workspace_detect_urgent(workspace);
 workspace_focus_fullscreen(workspace);
}
