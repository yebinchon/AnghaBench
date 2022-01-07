
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct sway_cursor {TYPE_1__* seat; } ;
struct TYPE_2__ {int wlr_seat; } ;


 struct sway_cursor* cursor ;
 int cursor_handle_activity (struct sway_cursor*) ;
 int frame ;
 struct sway_cursor* wl_container_of (struct wl_listener*,int ,int ) ;
 int wlr_seat_pointer_notify_frame (int ) ;

__attribute__((used)) static void handle_cursor_frame(struct wl_listener *listener, void *data) {
 struct sway_cursor *cursor = wl_container_of(listener, cursor, frame);
 cursor_handle_activity(cursor);
 wlr_seat_pointer_notify_frame(cursor->seat->wlr_seat);
}
