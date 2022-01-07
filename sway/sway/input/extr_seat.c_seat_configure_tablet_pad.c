
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_seat_device {int tablet_pad; int tablet; } ;
struct sway_seat {int dummy; } ;


 int sway_configure_tablet_pad (int ) ;
 int sway_tablet_pad_create (struct sway_seat*,struct sway_seat_device*) ;

__attribute__((used)) static void seat_configure_tablet_pad(struct sway_seat *seat,
  struct sway_seat_device *sway_device) {
 if (!sway_device->tablet) {
  sway_device->tablet_pad = sway_tablet_pad_create(seat, sway_device);
 }
 sway_configure_tablet_pad(sway_device->tablet_pad);
}
