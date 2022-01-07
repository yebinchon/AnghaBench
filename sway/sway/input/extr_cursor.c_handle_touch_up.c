
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_seat {int dummy; } ;
struct wlr_event_touch_up {int touch_id; int time_msec; } ;
struct wl_listener {int dummy; } ;
struct sway_cursor {TYPE_1__* seat; } ;
struct TYPE_4__ {int idle; } ;
struct TYPE_3__ {struct wlr_seat* wlr_seat; } ;


 struct sway_cursor* cursor ;
 TYPE_2__ server ;
 int touch_up ;
 struct sway_cursor* wl_container_of (struct wl_listener*,int ,int ) ;
 int wlr_idle_notify_activity (int ,struct wlr_seat*) ;
 int wlr_seat_touch_notify_up (struct wlr_seat*,int ,int ) ;

__attribute__((used)) static void handle_touch_up(struct wl_listener *listener, void *data) {
 struct sway_cursor *cursor = wl_container_of(listener, cursor, touch_up);
 wlr_idle_notify_activity(server.idle, cursor->seat->wlr_seat);
 struct wlr_event_touch_up *event = data;
 struct wlr_seat *seat = cursor->seat->wlr_seat;

 wlr_seat_touch_notify_up(seat, event->time_msec, event->touch_id);
}
