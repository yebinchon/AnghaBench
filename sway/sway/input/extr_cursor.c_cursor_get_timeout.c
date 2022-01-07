
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_cursor {scalar_t__ pressed_button_count; int seat; } ;
struct seat_config {int hide_cursor_timeout; } ;


 struct seat_config* seat_get_config (int ) ;
 struct seat_config* seat_get_config_by_name (char*) ;

int cursor_get_timeout(struct sway_cursor *cursor) {
 if (cursor->pressed_button_count > 0) {

  return 0;
 }

 struct seat_config *sc = seat_get_config(cursor->seat);
 if (!sc) {
  sc = seat_get_config_by_name("*");
 }
 int timeout = sc ? sc->hide_cursor_timeout : 0;
 if (timeout < 0) {
  timeout = 0;
 }
 return timeout;
}
