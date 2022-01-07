
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_event_pointer_axis {int dummy; } ;
struct wl_listener {int dummy; } ;
struct sway_cursor {int dummy; } ;


 int axis ;
 struct sway_cursor* cursor ;
 int cursor_handle_activity (struct sway_cursor*) ;
 int dispatch_cursor_axis (struct sway_cursor*,struct wlr_event_pointer_axis*) ;
 int transaction_commit_dirty () ;
 struct sway_cursor* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void handle_cursor_axis(struct wl_listener *listener, void *data) {
 struct sway_cursor *cursor = wl_container_of(listener, cursor, axis);
 struct wlr_event_pointer_axis *event = data;
 cursor_handle_activity(cursor);
 dispatch_cursor_axis(cursor, event);
 transaction_commit_dirty();
}
