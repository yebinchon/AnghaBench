
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sway_seat_device {TYPE_3__* input_device; } ;
struct sway_seat {TYPE_2__* cursor; TYPE_1__* wlr_seat; } ;
struct TYPE_6__ {int wlr_device; } ;
struct TYPE_5__ {int cursor; } ;
struct TYPE_4__ {int capabilities; } ;


 int WL_SEAT_CAPABILITY_POINTER ;
 int seat_apply_input_config (struct sway_seat*,struct sway_seat_device*) ;
 int seat_configure_xcursor (struct sway_seat*) ;
 int wlr_cursor_attach_input_device (int ,int ) ;

__attribute__((used)) static void seat_configure_pointer(struct sway_seat *seat,
  struct sway_seat_device *sway_device) {
 if ((seat->wlr_seat->capabilities & WL_SEAT_CAPABILITY_POINTER) == 0) {
  seat_configure_xcursor(seat);
 }
 wlr_cursor_attach_input_device(seat->cursor->cursor,
  sway_device->input_device->wlr_device);
 seat_apply_input_config(seat, sway_device);
}
