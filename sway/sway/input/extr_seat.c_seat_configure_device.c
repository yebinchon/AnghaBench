
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_seat_device {int dummy; } ;
struct sway_seat {int dummy; } ;
struct sway_input_device {TYPE_1__* wlr_device; } ;
struct TYPE_2__ {int type; } ;
 int seat_configure_keyboard (struct sway_seat*,struct sway_seat_device*) ;
 int seat_configure_pointer (struct sway_seat*,struct sway_seat_device*) ;
 int seat_configure_switch (struct sway_seat*,struct sway_seat_device*) ;
 int seat_configure_tablet_pad (struct sway_seat*,struct sway_seat_device*) ;
 int seat_configure_tablet_tool (struct sway_seat*,struct sway_seat_device*) ;
 int seat_configure_touch (struct sway_seat*,struct sway_seat_device*) ;
 struct sway_seat_device* seat_get_device (struct sway_seat*,struct sway_input_device*) ;

void seat_configure_device(struct sway_seat *seat,
  struct sway_input_device *input_device) {
 struct sway_seat_device *seat_device = seat_get_device(seat, input_device);
 if (!seat_device) {
  return;
 }

 switch (input_device->wlr_device->type) {
  case 132:
   seat_configure_pointer(seat, seat_device);
   break;
  case 133:
   seat_configure_keyboard(seat, seat_device);
   break;
  case 131:
   seat_configure_switch(seat, seat_device);
   break;
  case 128:
   seat_configure_touch(seat, seat_device);
   break;
  case 129:
   seat_configure_tablet_tool(seat, seat_device);
   break;
  case 130:
   seat_configure_tablet_pad(seat, seat_device);
   break;
 }
}
