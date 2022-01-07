
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
struct wlr_event_tablet_tool_tip {scalar_t__ state; int time_msec; int device; TYPE_1__* tool; } ;
struct wl_listener {int dummy; } ;
struct sway_tablet_tool {int tablet_v2_tool; TYPE_2__* tablet; } ;
struct sway_seat {int wlr_seat; } ;
struct sway_cursor {struct sway_seat* seat; TYPE_3__* cursor; } ;
struct TYPE_8__ {int idle; } ;
struct TYPE_7__ {int y; int x; } ;
struct TYPE_6__ {struct wlr_tablet_v2_tablet* tablet_v2; } ;
struct TYPE_5__ {struct sway_tablet_tool* data; } ;


 int BTN_LEFT ;
 int WLR_BUTTON_PRESSED ;
 int WLR_BUTTON_RELEASED ;
 scalar_t__ WLR_TABLET_TOOL_TIP_DOWN ;
 struct sway_cursor* cursor ;
 int dispatch_cursor_button (struct sway_cursor*,int ,int ,int ,int ) ;
 int node_at_coords (struct sway_seat*,int ,int ,struct wlr_surface**,double*,double*) ;
 TYPE_4__ server ;
 int tool_tip ;
 int transaction_commit_dirty () ;
 struct sway_cursor* wl_container_of (struct wl_listener*,int ,int ) ;
 int wlr_idle_notify_activity (int ,int ) ;
 int wlr_seat_pointer_notify_frame (int ) ;
 int wlr_surface_accepts_tablet_v2 (struct wlr_tablet_v2_tablet*,struct wlr_surface*) ;
 int wlr_tablet_tool_v2_start_implicit_grab (int ) ;
 int wlr_tablet_v2_tablet_tool_notify_down (int ) ;
 int wlr_tablet_v2_tablet_tool_notify_up (int ) ;

__attribute__((used)) static void handle_tool_tip(struct wl_listener *listener, void *data) {
 struct sway_cursor *cursor = wl_container_of(listener, cursor, tool_tip);
 wlr_idle_notify_activity(server.idle, cursor->seat->wlr_seat);
 struct wlr_event_tablet_tool_tip *event = data;
 struct sway_tablet_tool *sway_tool = event->tool->data;
 struct wlr_tablet_v2_tablet *tablet_v2 = sway_tool->tablet->tablet_v2;
 struct sway_seat *seat = cursor->seat;

 double sx, sy;
 struct wlr_surface *surface = ((void*)0);
 node_at_coords(seat, cursor->cursor->x, cursor->cursor->y,
  &surface, &sx, &sy);

 if (!surface || !wlr_surface_accepts_tablet_v2(tablet_v2, surface)) {
  dispatch_cursor_button(cursor, event->device, event->time_msec,
    BTN_LEFT, event->state == WLR_TABLET_TOOL_TIP_DOWN ?
     WLR_BUTTON_PRESSED : WLR_BUTTON_RELEASED);
  wlr_seat_pointer_notify_frame(cursor->seat->wlr_seat);
  transaction_commit_dirty();
  return;
 }

 if (event->state == WLR_TABLET_TOOL_TIP_DOWN) {
  wlr_tablet_v2_tablet_tool_notify_down(sway_tool->tablet_v2_tool);
  wlr_tablet_tool_v2_start_implicit_grab(sway_tool->tablet_v2_tool);
 } else {
  wlr_tablet_v2_tablet_tool_notify_up(sway_tool->tablet_v2_tool);
 }
}
