
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int dummy; } ;
struct sway_seat {int dummy; } ;
struct sway_container {struct sway_workspace* workspace; int scratchpad; } ;


 struct sway_seat* input_manager_current_seat () ;
 int ipc_event_window (struct sway_container*,char*) ;
 int root_scratchpad_hide (struct sway_container*) ;
 int root_scratchpad_show (struct sway_container*) ;
 struct sway_workspace* seat_get_focused_workspace (struct sway_seat*) ;
 int sway_assert (int ,char*) ;

__attribute__((used)) static void scratchpad_toggle_container(struct sway_container *con) {
 if (!sway_assert(con->scratchpad, "Container isn't in the scratchpad")) {
  return;
 }

 struct sway_seat *seat = input_manager_current_seat();
 struct sway_workspace *ws = seat_get_focused_workspace(seat);

 if (con->workspace && ws == con->workspace) {
  root_scratchpad_hide(con);
  return;
 }

 root_scratchpad_show(con);
 ipc_event_window(con, "move");
}
