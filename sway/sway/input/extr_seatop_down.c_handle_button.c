
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct wlr_input_device {int dummy; } ;
struct sway_seat {TYPE_1__* cursor; } ;
typedef enum wlr_button_state { ____Placeholder_wlr_button_state } wlr_button_state ;
struct TYPE_2__ {scalar_t__ pressed_button_count; } ;


 int seat_pointer_notify_button (struct sway_seat*,int ,int ,int) ;
 int seatop_begin_default (struct sway_seat*) ;

__attribute__((used)) static void handle_button(struct sway_seat *seat, uint32_t time_msec,
  struct wlr_input_device *device, uint32_t button,
  enum wlr_button_state state) {
 seat_pointer_notify_button(seat, time_msec, button, state);

 if (seat->cursor->pressed_button_count == 0) {
  seatop_begin_default(seat);
 }
}
