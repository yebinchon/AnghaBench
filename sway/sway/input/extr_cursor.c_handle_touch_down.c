
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_surface {int dummy; } ;
struct wlr_seat {int dummy; } ;
struct wlr_event_touch_down {int touch_id; int time_msec; int y; int x; int device; } ;
struct wl_listener {int dummy; } ;
struct sway_seat {double touch_x; double touch_y; int touch_id; struct wlr_seat* wlr_seat; } ;
struct sway_cursor {int cursor; struct sway_seat* seat; } ;
struct TYPE_2__ {int idle; } ;


 struct sway_cursor* cursor ;
 int cursor_hide (struct sway_cursor*) ;
 int node_at_coords (struct sway_seat*,double,double,struct wlr_surface**,double*,double*) ;
 scalar_t__ seat_is_input_allowed (struct sway_seat*,struct wlr_surface*) ;
 TYPE_1__ server ;
 int touch_down ;
 struct sway_cursor* wl_container_of (struct wl_listener*,int ,int ) ;
 int wlr_cursor_absolute_to_layout_coords (int ,int ,int ,int ,double*,double*) ;
 int wlr_idle_notify_activity (int ,struct wlr_seat*) ;
 int wlr_seat_touch_notify_down (struct wlr_seat*,struct wlr_surface*,int ,int ,double,double) ;

__attribute__((used)) static void handle_touch_down(struct wl_listener *listener, void *data) {
 struct sway_cursor *cursor = wl_container_of(listener, cursor, touch_down);
 wlr_idle_notify_activity(server.idle, cursor->seat->wlr_seat);
 struct wlr_event_touch_down *event = data;

 struct sway_seat *seat = cursor->seat;
 struct wlr_seat *wlr_seat = seat->wlr_seat;
 struct wlr_surface *surface = ((void*)0);

 double lx, ly;
 wlr_cursor_absolute_to_layout_coords(cursor->cursor, event->device,
   event->x, event->y, &lx, &ly);
 double sx, sy;
 node_at_coords(seat, lx, ly, &surface, &sx, &sy);

 seat->touch_id = event->touch_id;
 seat->touch_x = lx;
 seat->touch_y = ly;

 if (!surface) {
  return;
 }


 if (seat_is_input_allowed(seat, surface)) {
  wlr_seat_touch_notify_down(wlr_seat, surface, event->time_msec,
    event->touch_id, sx, sy);
  cursor_hide(cursor);
 }
}
