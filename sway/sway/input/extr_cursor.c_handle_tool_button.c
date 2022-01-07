
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wlr_tablet_v2_tablet {int dummy; } ;
struct wlr_surface {int dummy; } ;
struct wlr_event_tablet_tool_button {int state; scalar_t__ button; int time_msec; int device; TYPE_1__* tool; } ;
struct wl_listener {int dummy; } ;
struct sway_tablet_tool {int tablet_v2_tool; TYPE_2__* tablet; } ;
struct sway_seat {int wlr_seat; } ;
struct sway_cursor {int tool_buttons; struct sway_seat* seat; TYPE_3__* cursor; } ;
typedef enum zwp_tablet_pad_v2_button_state { ____Placeholder_zwp_tablet_pad_v2_button_state } zwp_tablet_pad_v2_button_state ;
struct TYPE_8__ {int idle; } ;
struct TYPE_7__ {int y; int x; } ;
struct TYPE_6__ {struct wlr_tablet_v2_tablet* tablet_v2; } ;
struct TYPE_5__ {struct sway_tablet_tool* data; } ;


 int BTN_RIGHT ;
 int SWAY_DEBUG ;


 struct sway_cursor* cursor ;
 int dispatch_cursor_button (struct sway_cursor*,int ,int ,int ,int) ;
 int node_at_coords (struct sway_seat*,int ,int ,struct wlr_surface**,double*,double*) ;
 TYPE_4__ server ;
 int sway_log (int ,char*) ;
 int tool_button ;
 int transaction_commit_dirty () ;
 struct sway_cursor* wl_container_of (struct wl_listener*,int ,int ) ;
 int wlr_idle_notify_activity (int ,int ) ;
 int wlr_seat_pointer_notify_frame (int ) ;
 int wlr_surface_accepts_tablet_v2 (struct wlr_tablet_v2_tablet*,struct wlr_surface*) ;
 int wlr_tablet_v2_tablet_tool_notify_button (int ,int,int) ;

__attribute__((used)) static void handle_tool_button(struct wl_listener *listener, void *data) {
 struct sway_cursor *cursor = wl_container_of(listener, cursor, tool_button);
 wlr_idle_notify_activity(server.idle, cursor->seat->wlr_seat);
 struct wlr_event_tablet_tool_button *event = data;
 struct sway_tablet_tool *sway_tool = event->tool->data;
 struct wlr_tablet_v2_tablet *tablet_v2 = sway_tool->tablet->tablet_v2;
 struct sway_seat *seat = cursor->seat;

 if (!sway_tool) {
  sway_log(SWAY_DEBUG, "tool button before proximity");
  return;
 }

 double sx, sy;
 struct wlr_surface *surface = ((void*)0);

 node_at_coords(seat, cursor->cursor->x, cursor->cursor->y,
  &surface, &sx, &sy);

 if (!surface || !wlr_surface_accepts_tablet_v2(tablet_v2, surface)) {


  switch (event->state) {
  case 129:
   if (cursor->tool_buttons == 0) {
    dispatch_cursor_button(cursor, event->device,
      event->time_msec, BTN_RIGHT, event->state);
   }
   cursor->tool_buttons++;
   break;
  case 128:
   if (cursor->tool_buttons == 1) {
    dispatch_cursor_button(cursor, event->device,
      event->time_msec, BTN_RIGHT, event->state);
   }
   cursor->tool_buttons--;
   break;
  }
  wlr_seat_pointer_notify_frame(cursor->seat->wlr_seat);
  transaction_commit_dirty();
  return;
 }

 wlr_tablet_v2_tablet_tool_notify_button(sway_tool->tablet_v2_tool,
  (enum zwp_tablet_pad_v2_button_state)event->button,
  (enum zwp_tablet_pad_v2_button_state)event->state);
}
