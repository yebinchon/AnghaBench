
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_input_device {int wlr_device; } ;
struct input_config {scalar_t__ send_events; } ;


 scalar_t__ libinput_device_config_send_events_get_mode (int ) ;
 scalar_t__ mode_for_name (char*) ;
 int wlr_input_device_is_libinput (int ) ;
 int wlr_libinput_get_device_handle (int ) ;

__attribute__((used)) static void toggle_select_send_events_for_device(struct input_config *ic,
  struct sway_input_device *input_device, int argc, char **argv) {
 if (!wlr_input_device_is_libinput(input_device->wlr_device)) {
  return;
 }


 ic->send_events = libinput_device_config_send_events_get_mode(
   wlr_libinput_get_device_handle(input_device->wlr_device));

 int index;
 for (index = 0; index < argc; ++index) {
  if (mode_for_name(argv[index]) == ic->send_events) {
   ++index;
   break;
  }
 }
 ic->send_events = mode_for_name(argv[index % argc]);
}
