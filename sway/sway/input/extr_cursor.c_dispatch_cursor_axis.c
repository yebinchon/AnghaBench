
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_event_pointer_axis {int dummy; } ;
struct sway_cursor {int seat; } ;


 int seatop_axis (int ,struct wlr_event_pointer_axis*) ;

void dispatch_cursor_axis(struct sway_cursor *cursor,
  struct wlr_event_pointer_axis *event) {
 seatop_axis(cursor->seat, event);
}
