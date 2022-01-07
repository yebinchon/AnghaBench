
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_cursor {scalar_t__ hidden; TYPE_1__* seat; int hide_source; } ;
struct TYPE_4__ {int idle; } ;
struct TYPE_3__ {int wlr_seat; } ;


 int cursor_get_timeout (struct sway_cursor*) ;
 int cursor_unhide (struct sway_cursor*) ;
 TYPE_2__ server ;
 int wl_event_source_timer_update (int ,int ) ;
 int wlr_idle_notify_activity (int ,int ) ;

void cursor_handle_activity(struct sway_cursor *cursor) {
 wl_event_source_timer_update(
   cursor->hide_source, cursor_get_timeout(cursor));

 wlr_idle_notify_activity(server.idle, cursor->seat->wlr_seat);
 if (cursor->hidden) {
  cursor_unhide(cursor);
 }
}
