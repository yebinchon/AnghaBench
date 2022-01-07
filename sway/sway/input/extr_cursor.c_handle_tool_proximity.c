
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_tablet_tool {struct sway_tablet_tool* data; } ;
struct wlr_event_tablet_tool_proximity {scalar_t__ state; int time_msec; int y; int x; struct wlr_tablet_tool* tool; int device; } ;
struct wl_listener {int dummy; } ;
struct sway_tablet_tool {int tablet; int tablet_v2_tool; } ;
struct sway_tablet {int dummy; } ;
struct sway_cursor {TYPE_1__* seat; } ;
struct TYPE_4__ {int idle; } ;
struct TYPE_3__ {int wlr_seat; } ;


 int SWAY_ERROR ;
 scalar_t__ WLR_TABLET_TOOL_PROXIMITY_OUT ;
 struct sway_cursor* cursor ;
 struct sway_tablet* get_tablet_for_device (struct sway_cursor*,int ) ;
 int handle_tablet_tool_position (struct sway_cursor*,int ,struct wlr_tablet_tool*,int,int,int ,int ,int ,int ,int ) ;
 TYPE_2__ server ;
 int sway_log (int ,char*) ;
 int sway_tablet_tool_configure (struct sway_tablet*,struct wlr_tablet_tool*) ;
 int tool_proximity ;
 struct sway_cursor* wl_container_of (struct wl_listener*,int ,int ) ;
 int wlr_idle_notify_activity (int ,int ) ;
 int wlr_tablet_v2_tablet_tool_notify_proximity_out (int ) ;

__attribute__((used)) static void handle_tool_proximity(struct wl_listener *listener, void *data) {
 struct sway_cursor *cursor = wl_container_of(listener, cursor, tool_proximity);
 wlr_idle_notify_activity(server.idle, cursor->seat->wlr_seat);
 struct wlr_event_tablet_tool_proximity *event = data;

 struct wlr_tablet_tool *tool = event->tool;
 if (!tool->data) {
  struct sway_tablet *tablet = get_tablet_for_device(cursor, event->device);
  if (!tablet) {
   sway_log(SWAY_ERROR, "no tablet for tablet tool");
   return;
  }
  sway_tablet_tool_configure(tablet, tool);
 }

 struct sway_tablet_tool *sway_tool = tool->data;
 if (!sway_tool) {
  sway_log(SWAY_ERROR, "tablet tool not initialized");
  return;
 }

 if (event->state == WLR_TABLET_TOOL_PROXIMITY_OUT) {
  wlr_tablet_v2_tablet_tool_notify_proximity_out(sway_tool->tablet_v2_tool);
  return;
 }

 handle_tablet_tool_position(cursor, sway_tool->tablet, event->tool,
  1, 1, event->x, event->y, 0, 0, event->time_msec);
}
