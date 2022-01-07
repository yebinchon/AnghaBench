
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_workspace {TYPE_1__* floating; } ;
struct sway_seat {int dummy; } ;
struct sway_container {int title; struct sway_container* parent; scalar_t__ scratchpad; } ;
struct TYPE_6__ {TYPE_2__* scratchpad; } ;
struct TYPE_5__ {int length; struct sway_container** items; } ;
struct TYPE_4__ {int length; struct sway_container** items; } ;


 int SWAY_DEBUG ;
 scalar_t__ container_is_floating_or_child (struct sway_container*) ;
 struct sway_seat* input_manager_current_seat () ;
 int ipc_event_window (struct sway_container*,char*) ;
 TYPE_3__* root ;
 int root_scratchpad_hide (struct sway_container*) ;
 int root_scratchpad_show (struct sway_container*) ;
 struct sway_container* seat_get_focused_container (struct sway_seat*) ;
 struct sway_workspace* seat_get_focused_workspace (struct sway_seat*) ;
 int sway_assert (int,char*) ;
 int sway_log (int ,char*,...) ;

__attribute__((used)) static void scratchpad_toggle_auto(void) {
 struct sway_seat *seat = input_manager_current_seat();
 struct sway_container *focus = seat_get_focused_container(seat);
 struct sway_workspace *ws = seat_get_focused_workspace(seat);
 if (!ws) {
  sway_log(SWAY_DEBUG,
    "No focused workspace to toggle scratchpad windows on");
  return;
 }



 if (focus && container_is_floating_or_child(focus)) {
  while (focus->parent) {
   focus = focus->parent;
  }
 }



 if (focus && focus->scratchpad) {
  sway_log(SWAY_DEBUG, "Focus is a scratchpad window - hiding %s",
    focus->title);
  root_scratchpad_hide(focus);
  return;
 }



 for (int i = 0; i < ws->floating->length; ++i) {
  struct sway_container *floater = ws->floating->items[i];
  if (floater->scratchpad && focus != floater) {
   sway_log(SWAY_DEBUG,
     "Focusing other scratchpad window (%s) in this workspace",
     floater->title);
   root_scratchpad_show(floater);
   return;
  }
 }



 for (int i = 0; i < root->scratchpad->length; ++i) {
  struct sway_container *con = root->scratchpad->items[i];
  if (con->parent) {
   sway_log(SWAY_DEBUG,
     "Moving a visible scratchpad window (%s) to this workspace",
     con->title);
   root_scratchpad_show(con);
   ipc_event_window(con, "move");
   return;
  }
 }


 if (!sway_assert(root->scratchpad->length, "Scratchpad is empty")) {
  return;
 }
 struct sway_container *con = root->scratchpad->items[0];
 sway_log(SWAY_DEBUG, "Showing %s from list", con->title);
 root_scratchpad_show(con);
 ipc_event_window(con, "move");
}
