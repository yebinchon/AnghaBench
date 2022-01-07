
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link; } ;
struct sway_switch {TYPE_1__ switch_toggle; int state; struct sway_seat_device* seat_device; } ;
struct sway_seat_device {struct sway_switch* switch_device; } ;
struct sway_seat {int dummy; } ;


 int SWAY_DEBUG ;
 int WLR_SWITCH_STATE_OFF ;
 struct sway_switch* calloc (int,int) ;
 int sway_assert (struct sway_switch*,char*) ;
 int sway_log (int ,char*) ;
 int wl_list_init (int *) ;

struct sway_switch *sway_switch_create(struct sway_seat *seat,
  struct sway_seat_device *device) {
 struct sway_switch *switch_device =
  calloc(1, sizeof(struct sway_switch));
 if (!sway_assert(switch_device, "could not allocate switch")) {
  return ((void*)0);
 }
 device->switch_device = switch_device;
 switch_device->seat_device = device;
 switch_device->state = WLR_SWITCH_STATE_OFF;
 wl_list_init(&switch_device->switch_toggle.link);
 sway_log(SWAY_DEBUG, "Allocated switch for device");

 return switch_device;
}
