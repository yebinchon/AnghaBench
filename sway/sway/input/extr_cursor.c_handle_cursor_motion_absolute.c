
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_event_pointer_motion_absolute {int device; int time_msec; int y; int x; } ;
struct wl_listener {int dummy; } ;
struct sway_cursor {TYPE_1__* cursor; } ;
struct TYPE_2__ {double x; double y; } ;


 struct sway_cursor* cursor ;
 int cursor_motion (struct sway_cursor*,int ,int ,double,double,double,double) ;
 int motion_absolute ;
 int transaction_commit_dirty () ;
 struct sway_cursor* wl_container_of (struct wl_listener*,int ,int ) ;
 int wlr_cursor_absolute_to_layout_coords (TYPE_1__*,int ,int ,int ,double*,double*) ;

__attribute__((used)) static void handle_cursor_motion_absolute(
  struct wl_listener *listener, void *data) {
 struct sway_cursor *cursor =
  wl_container_of(listener, cursor, motion_absolute);
 struct wlr_event_pointer_motion_absolute *event = data;

 double lx, ly;
 wlr_cursor_absolute_to_layout_coords(cursor->cursor, event->device,
   event->x, event->y, &lx, &ly);

 double dx = lx - cursor->cursor->x;
 double dy = ly - cursor->cursor->y;

 cursor_motion(cursor, event->time_msec, event->device, dx, dy, dx, dy);
 transaction_commit_dirty();
}
