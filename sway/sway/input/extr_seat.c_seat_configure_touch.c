
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_seat_device {TYPE_2__* input_device; } ;
struct sway_seat {TYPE_1__* cursor; } ;
struct TYPE_4__ {int wlr_device; } ;
struct TYPE_3__ {int cursor; } ;


 int seat_apply_input_config (struct sway_seat*,struct sway_seat_device*) ;
 int wlr_cursor_attach_input_device (int ,int ) ;

__attribute__((used)) static void seat_configure_touch(struct sway_seat *seat,
  struct sway_seat_device *sway_device) {
 wlr_cursor_attach_input_device(seat->cursor->cursor,
  sway_device->input_device->wlr_device);
 seat_apply_input_config(seat, sway_device);
}
