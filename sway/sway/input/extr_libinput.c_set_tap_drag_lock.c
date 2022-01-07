
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libinput_device {int dummy; } ;
typedef enum libinput_config_drag_lock_state { ____Placeholder_libinput_config_drag_lock_state } libinput_config_drag_lock_state ;


 int SWAY_DEBUG ;
 int libinput_device_config_tap_get_drag_lock_enabled (struct libinput_device*) ;
 scalar_t__ libinput_device_config_tap_get_finger_count (struct libinput_device*) ;
 int libinput_device_config_tap_set_drag_lock_enabled (struct libinput_device*,int) ;
 int log_status (int ) ;
 int sway_log (int ,char*,int) ;

__attribute__((used)) static bool set_tap_drag_lock(struct libinput_device *device,
  enum libinput_config_drag_lock_state lock) {
 if (libinput_device_config_tap_get_finger_count(device) <= 0 ||
   libinput_device_config_tap_get_drag_lock_enabled(device) == lock) {
  return 0;
 }
 sway_log(SWAY_DEBUG, "tap_set_drag_lock_enabled(%d)", lock);
 log_status(libinput_device_config_tap_set_drag_lock_enabled(device, lock));
 return 1;
}
