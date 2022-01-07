
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_event_pointer_button {scalar_t__ state; int button; int time_msec; int device; } ;
struct wl_listener {int dummy; } ;
struct sway_cursor {scalar_t__ pressed_button_count; } ;


 int SWAY_ERROR ;
 scalar_t__ WLR_BUTTON_PRESSED ;
 int button ;
 struct sway_cursor* cursor ;
 int cursor_handle_activity (struct sway_cursor*) ;
 int dispatch_cursor_button (struct sway_cursor*,int ,int ,int ,scalar_t__) ;
 int sway_log (int ,char*) ;
 int transaction_commit_dirty () ;
 struct sway_cursor* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void handle_cursor_button(struct wl_listener *listener, void *data) {
 struct sway_cursor *cursor = wl_container_of(listener, cursor, button);
 struct wlr_event_pointer_button *event = data;

 if (event->state == WLR_BUTTON_PRESSED) {
  cursor->pressed_button_count++;
 } else {
  if (cursor->pressed_button_count > 0) {
   cursor->pressed_button_count--;
  } else {
   sway_log(SWAY_ERROR, "Pressed button count was wrong");
  }
 }

 cursor_handle_activity(cursor);
 dispatch_cursor_button(cursor, event->device,
   event->time_msec, event->button, event->state);
 transaction_commit_dirty();
}
