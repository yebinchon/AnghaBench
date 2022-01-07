
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_seat_device {int keyboard; } ;
struct sway_seat {int dummy; } ;
struct sway_input_device {TYPE_1__* wlr_device; } ;
struct TYPE_2__ {int type; } ;


 int SWAY_DEBUG ;






 struct sway_seat_device* seat_get_device (struct sway_seat*,struct sway_input_device*) ;
 int seat_reset_input_config (struct sway_seat*,struct sway_seat_device*) ;
 int sway_keyboard_configure (int ) ;
 int sway_keyboard_disarm_key_repeat (int ) ;
 int sway_log (int ,char*) ;

void seat_reset_device(struct sway_seat *seat,
  struct sway_input_device *input_device) {
 struct sway_seat_device *seat_device = seat_get_device(seat, input_device);
 if (!seat_device) {
  return;
 }

 switch (input_device->wlr_device->type) {
  case 132:
   seat_reset_input_config(seat, seat_device);
   break;
  case 133:
   sway_keyboard_disarm_key_repeat(seat_device->keyboard);
   sway_keyboard_configure(seat_device->keyboard);
   break;
  case 128:
   seat_reset_input_config(seat, seat_device);
   break;
  case 129:
   seat_reset_input_config(seat, seat_device);
   break;
  case 130:
   sway_log(SWAY_DEBUG, "TODO: reset tablet pad");
   break;
  case 131:
   sway_log(SWAY_DEBUG, "TODO: reset switch device");
   break;
 }
}
