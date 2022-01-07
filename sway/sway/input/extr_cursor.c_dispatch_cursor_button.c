
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct wlr_input_device {int dummy; } ;
struct sway_cursor {int seat; } ;
typedef enum wlr_button_state { ____Placeholder_wlr_button_state } wlr_button_state ;


 scalar_t__ get_current_time_msec () ;
 int seatop_button (int ,scalar_t__,struct wlr_input_device*,scalar_t__,int) ;

void dispatch_cursor_button(struct sway_cursor *cursor,
  struct wlr_input_device *device, uint32_t time_msec, uint32_t button,
  enum wlr_button_state state) {
 if (time_msec == 0) {
  time_msec = get_current_time_msec();
 }

 seatop_button(cursor->seat, time_msec, device, button, state);
}
