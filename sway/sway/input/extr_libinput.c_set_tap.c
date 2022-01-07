
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libinput_device {int dummy; } ;
typedef enum libinput_config_tap_state { ____Placeholder_libinput_config_tap_state } libinput_config_tap_state ;


 int SWAY_DEBUG ;
 int libinput_device_config_tap_get_enabled (struct libinput_device*) ;
 scalar_t__ libinput_device_config_tap_get_finger_count (struct libinput_device*) ;
 int libinput_device_config_tap_set_enabled (struct libinput_device*,int) ;
 int log_status (int ) ;
 int sway_log (int ,char*,int) ;

__attribute__((used)) static bool set_tap(struct libinput_device *device,
  enum libinput_config_tap_state tap) {
 if (libinput_device_config_tap_get_finger_count(device) <= 0 ||
   libinput_device_config_tap_get_enabled(device) == tap) {
  return 0;
 }
 sway_log(SWAY_DEBUG, "tap_set_enabled(%d)", tap);
 log_status(libinput_device_config_tap_set_enabled(device, tap));
 return 1;
}
