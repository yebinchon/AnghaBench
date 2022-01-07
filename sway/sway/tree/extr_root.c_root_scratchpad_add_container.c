
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_workspace {int node; } ;
struct sway_seat {int dummy; } ;
struct sway_node {int dummy; } ;
struct sway_container {int scratchpad; scalar_t__ fullscreen_mode; int node; struct sway_workspace* workspace; struct sway_container* parent; } ;
struct TYPE_2__ {int scratchpad; } ;


 scalar_t__ FULLSCREEN_NONE ;
 int arrange_container (struct sway_container*) ;
 int arrange_workspace (struct sway_workspace*) ;
 int container_detach (struct sway_container*) ;
 int container_floating_move_to_center (struct sway_container*) ;
 int container_floating_set_default_size (struct sway_container*) ;
 int container_fullscreen_disable (struct sway_container*) ;
 int container_is_floating (struct sway_container*) ;
 int container_set_floating (struct sway_container*,int) ;
 struct sway_seat* input_manager_current_seat () ;
 int ipc_event_window (struct sway_container*,char*) ;
 int list_add (int ,struct sway_container*) ;
 TYPE_1__* root ;
 struct sway_node* seat_get_focus_inactive (struct sway_seat*,int *) ;
 int seat_set_focus (struct sway_seat*,struct sway_node*) ;
 int sway_assert (int,char*) ;
 int workspace_add_floating (struct sway_workspace*,struct sway_container*) ;

void root_scratchpad_add_container(struct sway_container *con, struct sway_workspace *ws) {
 if (!sway_assert(!con->scratchpad, "Container is already in scratchpad")) {
  return;
 }

 struct sway_container *parent = con->parent;
 struct sway_workspace *workspace = con->workspace;


 if (con->fullscreen_mode != FULLSCREEN_NONE) {
  container_fullscreen_disable(con);
 }


 if (!container_is_floating(con)) {
  container_set_floating(con, 1);
  container_floating_set_default_size(con);
  container_floating_move_to_center(con);
 }

 container_detach(con);
 con->scratchpad = 1;
 list_add(root->scratchpad, con);
 if (ws) {
  workspace_add_floating(ws, con);
 }

 if (!ws) {
  struct sway_seat *seat = input_manager_current_seat();
  struct sway_node *new_focus = ((void*)0);
  if (parent) {
   arrange_container(parent);
   new_focus = seat_get_focus_inactive(seat, &parent->node);
  }
  if (!new_focus) {
   arrange_workspace(workspace);
   new_focus = seat_get_focus_inactive(seat, &workspace->node);
  }
  seat_set_focus(seat, new_focus);
 }

 ipc_event_window(con, "move");
}
