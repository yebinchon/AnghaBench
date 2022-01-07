
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libinput_device {int dummy; } ;
typedef enum libinput_config_accel_profile { ____Placeholder_libinput_config_accel_profile } libinput_config_accel_profile ;


 int SWAY_DEBUG ;
 int libinput_device_config_accel_get_profile (struct libinput_device*) ;
 int libinput_device_config_accel_is_available (struct libinput_device*) ;
 int libinput_device_config_accel_set_profile (struct libinput_device*,int) ;
 int log_status (int ) ;
 int sway_log (int ,char*,int) ;

__attribute__((used)) static bool set_accel_profile(struct libinput_device *device,
  enum libinput_config_accel_profile profile) {
 if (!libinput_device_config_accel_is_available(device) ||
   libinput_device_config_accel_get_profile(device) == profile) {
  return 0;
 }
 sway_log(SWAY_DEBUG, "accel_set_profile(%d)", profile);
 log_status(libinput_device_config_accel_set_profile(device, profile));
 return 1;
}
