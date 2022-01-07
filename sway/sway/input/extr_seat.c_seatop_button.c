
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct wlr_input_device {int dummy; } ;
struct sway_seat {TYPE_1__* seatop_impl; } ;
typedef enum wlr_button_state { ____Placeholder_wlr_button_state } wlr_button_state ;
struct TYPE_2__ {int (* button ) (struct sway_seat*,int ,struct wlr_input_device*,int ,int) ;} ;


 int stub1 (struct sway_seat*,int ,struct wlr_input_device*,int ,int) ;

void seatop_button(struct sway_seat *seat, uint32_t time_msec,
  struct wlr_input_device *device, uint32_t button,
  enum wlr_button_state state) {
 if (seat->seatop_impl->button) {
  seat->seatop_impl->button(seat, time_msec, device, button, state);
 }
}
