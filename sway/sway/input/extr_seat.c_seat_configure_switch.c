
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_seat_device {int switch_device; } ;
struct sway_seat {int dummy; } ;


 int seat_apply_input_config (struct sway_seat*,struct sway_seat_device*) ;
 int sway_switch_configure (int ) ;
 int sway_switch_create (struct sway_seat*,struct sway_seat_device*) ;

__attribute__((used)) static void seat_configure_switch(struct sway_seat *seat,
        struct sway_seat_device *seat_device) {
 if (!seat_device->switch_device) {
  sway_switch_create(seat, seat_device);
 }
 seat_apply_input_config(seat, seat_device);
 sway_switch_configure(seat_device->switch_device);
}
