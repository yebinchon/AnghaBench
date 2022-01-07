
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_workspace {int node; } ;
struct sway_container {double x; double y; scalar_t__ view; struct sway_workspace* workspace; scalar_t__ fullscreen_mode; } ;
struct cmd_results {int dummy; } ;
typedef enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
struct TYPE_4__ {int seat; struct sway_container* container; } ;
struct TYPE_6__ {TYPE_1__ handler_context; } ;
struct TYPE_5__ {scalar_t__ fullscreen_global; } ;


 int CMD_FAILURE ;
 int CMD_SUCCESS ;




 int arrange_root () ;
 int arrange_workspace (struct sway_workspace*) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_3__* config ;
 int container_end_mouse_operation (struct sway_container*) ;
 int container_floating_move_to (struct sway_container*,double,double) ;
 scalar_t__ container_is_floating (struct sway_container*) ;
 int container_move_in_direction (struct sway_container*,int) ;
 int ipc_event_window (struct sway_container*,char*) ;
 int ipc_event_workspace (struct sway_workspace*,struct sway_workspace*,char*) ;
 TYPE_2__* root ;
 int seat_set_focus_container (int ,struct sway_container*) ;
 int seat_set_raw_focus (int ,int *) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strtol (char*,char**,int) ;
 int workspace_detect_urgent (struct sway_workspace*) ;

__attribute__((used)) static struct cmd_results *cmd_move_in_direction(
  enum wlr_direction direction, int argc, char **argv) {
 int move_amt = 10;
 if (argc) {
  char *inv;
  move_amt = (int)strtol(argv[0], &inv, 10);
  if (*inv != '\0' && strcasecmp(inv, "px") != 0) {
   return cmd_results_new(CMD_FAILURE, "Invalid distance specified");
  }
 }

 struct sway_container *container = config->handler_context.container;
 if (!container) {
  return cmd_results_new(CMD_FAILURE,
    "Cannot move workspaces in a direction");
 }
 if (container_is_floating(container)) {
  if (container->fullscreen_mode) {
   return cmd_results_new(CMD_FAILURE,
     "Cannot move fullscreen floating container");
  }
  double lx = container->x;
  double ly = container->y;
  switch (direction) {
  case 130:
   lx -= move_amt;
   break;
  case 129:
   lx += move_amt;
   break;
  case 128:
   ly -= move_amt;
   break;
  case 131:
   ly += move_amt;
   break;
  }
  container_floating_move_to(container, lx, ly);
  return cmd_results_new(CMD_SUCCESS, ((void*)0));
 }
 struct sway_workspace *old_ws = container->workspace;

 if (!container_move_in_direction(container, direction)) {

  return cmd_results_new(CMD_SUCCESS, ((void*)0));
 }

 struct sway_workspace *new_ws = container->workspace;

 if (root->fullscreen_global) {
  arrange_root();
 } else {
  arrange_workspace(old_ws);
  if (new_ws != old_ws) {
   arrange_workspace(new_ws);
  }
 }

 if (container->view) {
  ipc_event_window(container, "move");
 }


 seat_set_raw_focus(config->handler_context.seat, &new_ws->node);
 seat_set_focus_container(config->handler_context.seat, container);

 if (old_ws != new_ws) {
  ipc_event_workspace(old_ws, new_ws, "focus");
  workspace_detect_urgent(old_ws);
  workspace_detect_urgent(new_ws);
 }
 container_end_mouse_operation(container);

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
