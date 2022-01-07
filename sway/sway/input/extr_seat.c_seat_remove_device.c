
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_seat_device {int dummy; } ;
struct sway_seat {TYPE_1__* wlr_seat; } ;
struct sway_input_device {int identifier; } ;
struct TYPE_2__ {int name; } ;


 int SWAY_DEBUG ;
 int seat_device_destroy (struct sway_seat_device*) ;
 struct sway_seat_device* seat_get_device (struct sway_seat*,struct sway_input_device*) ;
 int seat_update_capabilities (struct sway_seat*) ;
 int sway_log (int ,char*,int ,int ) ;

void seat_remove_device(struct sway_seat *seat,
  struct sway_input_device *input_device) {
 struct sway_seat_device *seat_device = seat_get_device(seat, input_device);

 if (!seat_device) {
  return;
 }

 sway_log(SWAY_DEBUG, "removing device %s from seat %s",
  input_device->identifier, seat->wlr_seat->name);

 seat_device_destroy(seat_device);

 seat_update_capabilities(seat);
}
