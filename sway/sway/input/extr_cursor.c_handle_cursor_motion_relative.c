
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_event_pointer_motion {int unaccel_dy; int unaccel_dx; int delta_y; int delta_x; int device; int time_msec; } ;
struct wl_listener {int dummy; } ;
struct sway_cursor {int dummy; } ;


 struct sway_cursor* cursor ;
 int cursor_motion (struct sway_cursor*,int ,int ,int ,int ,int ,int ) ;
 int motion ;
 int transaction_commit_dirty () ;
 struct sway_cursor* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void handle_cursor_motion_relative(
  struct wl_listener *listener, void *data) {
 struct sway_cursor *cursor = wl_container_of(listener, cursor, motion);
 struct wlr_event_pointer_motion *e = data;

 cursor_motion(cursor, e->time_msec, e->device, e->delta_x, e->delta_y,
   e->unaccel_dx, e->unaccel_dy);
 transaction_commit_dirty();
}
