
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wlr_input_device {TYPE_4__* switch_device; } ;
struct TYPE_10__ {int notify; int link; } ;
struct sway_switch {TYPE_5__ switch_toggle; TYPE_2__* seat_device; } ;
struct TYPE_8__ {int toggle; } ;
struct TYPE_9__ {TYPE_3__ events; } ;
struct TYPE_7__ {TYPE_1__* input_device; } ;
struct TYPE_6__ {struct wlr_input_device* wlr_device; } ;


 int SWAY_DEBUG ;
 int handle_switch_toggle ;
 int sway_log (int ,char*) ;
 int wl_list_remove (int *) ;
 int wl_signal_add (int *,TYPE_5__*) ;

void sway_switch_configure(struct sway_switch *sway_switch) {
 struct wlr_input_device *wlr_device =
  sway_switch->seat_device->input_device->wlr_device;
 wl_list_remove(&sway_switch->switch_toggle.link);
 wl_signal_add(&wlr_device->switch_device->events.toggle,
   &sway_switch->switch_toggle);
 sway_switch->switch_toggle.notify = handle_switch_toggle;
 sway_log(SWAY_DEBUG, "Configured switch for device");
}
