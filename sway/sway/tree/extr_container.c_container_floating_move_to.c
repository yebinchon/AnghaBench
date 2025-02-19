
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int dummy; } ;
struct sway_output {int dummy; } ;
struct sway_container {struct sway_workspace* workspace; scalar_t__ y; scalar_t__ x; } ;


 int arrange_workspace (struct sway_workspace*) ;
 int container_detach (struct sway_container*) ;
 struct sway_output* container_floating_find_output (struct sway_container*) ;
 int container_floating_translate (struct sway_container*,scalar_t__,scalar_t__) ;
 struct sway_output* container_is_floating (struct sway_container*) ;
 scalar_t__ container_is_scratchpad_hidden (struct sway_container*) ;
 struct sway_workspace* output_get_active_workspace (struct sway_output*) ;
 int sway_assert (struct sway_output*,char*) ;
 int workspace_add_floating (struct sway_workspace*,struct sway_container*) ;
 int workspace_detect_urgent (struct sway_workspace*) ;

void container_floating_move_to(struct sway_container *con,
  double lx, double ly) {
 if (!sway_assert(container_is_floating(con),
   "Expected a floating container")) {
  return;
 }
 container_floating_translate(con, lx - con->x, ly - con->y);
 if (container_is_scratchpad_hidden(con)) {
  return;
 }
 struct sway_workspace *old_workspace = con->workspace;
 struct sway_output *new_output = container_floating_find_output(con);
 if (!sway_assert(new_output, "Unable to find any output")) {
  return;
 }
 struct sway_workspace *new_workspace =
  output_get_active_workspace(new_output);
 if (new_workspace && old_workspace != new_workspace) {
  container_detach(con);
  workspace_add_floating(new_workspace, con);
  arrange_workspace(old_workspace);
  arrange_workspace(new_workspace);
  workspace_detect_urgent(old_workspace);
  workspace_detect_urgent(new_workspace);
 }
}
