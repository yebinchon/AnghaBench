
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_workspace {int node; } ;
struct sway_seat {int dummy; } ;
struct sway_node {int dummy; } ;
struct sway_container {scalar_t__ fullscreen_mode; struct sway_node node; struct sway_workspace* workspace; } ;
struct TYPE_2__ {int scratchpad; int node; } ;


 scalar_t__ FULLSCREEN_GLOBAL ;
 scalar_t__ FULLSCREEN_NONE ;
 int arrange_workspace (struct sway_workspace*) ;
 int container_detach (struct sway_container*) ;
 int container_fullscreen_disable (struct sway_container*) ;
 struct sway_seat* input_manager_current_seat () ;
 int ipc_event_window (struct sway_container*,char*) ;
 int list_move_to_end (int ,struct sway_container*) ;
 scalar_t__ node_has_ancestor (struct sway_node*,struct sway_node*) ;
 TYPE_1__* root ;
 struct sway_node* seat_get_focus_inactive (struct sway_seat*,int *) ;
 int seat_set_focus (struct sway_seat*,struct sway_node*) ;

void root_scratchpad_hide(struct sway_container *con) {
 struct sway_seat *seat = input_manager_current_seat();
 struct sway_node *focus = seat_get_focus_inactive(seat, &root->node);
 struct sway_workspace *ws = con->workspace;

 if (con->fullscreen_mode == FULLSCREEN_GLOBAL && !con->workspace) {


  return;
 }

 if (con->fullscreen_mode != FULLSCREEN_NONE) {
  container_fullscreen_disable(con);
 }
 container_detach(con);
 arrange_workspace(ws);
 if (&con->node == focus || node_has_ancestor(focus, &con->node)) {
  seat_set_focus(seat, seat_get_focus_inactive(seat, &ws->node));
 }
 list_move_to_end(root->scratchpad, con);

 ipc_event_window(con, "move");
}
