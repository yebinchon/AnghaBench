
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libinput_device {int dummy; } ;
struct input_config {scalar_t__ send_events; int identifier; } ;


 scalar_t__ INT_MIN ;
 int SWAY_DEBUG ;
 int set_send_events (struct libinput_device*,scalar_t__) ;
 int sway_log (int ,char*,int ,char const*) ;

__attribute__((used)) static bool config_libinput_switch(struct libinput_device *device,
  struct input_config *ic, const char *device_id) {
 sway_log(SWAY_DEBUG, "config_libinput_switch('%s' on  '%s')",
   ic->identifier, device_id);
 if (ic->send_events != INT_MIN) {
  return set_send_events(device, ic->send_events);
 }
 return 0;
}
