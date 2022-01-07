
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sway_seat {int wlr_seat; int last_button_serial; } ;
typedef enum wlr_button_state { ____Placeholder_wlr_button_state } wlr_button_state ;


 int wlr_seat_pointer_notify_button (int ,int ,int ,int) ;

void seat_pointer_notify_button(struct sway_seat *seat, uint32_t time_msec,
  uint32_t button, enum wlr_button_state state) {
 seat->last_button_serial = wlr_seat_pointer_notify_button(seat->wlr_seat,
   time_msec, button, state);
}
