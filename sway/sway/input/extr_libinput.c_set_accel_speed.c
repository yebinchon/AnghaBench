
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libinput_device {int dummy; } ;


 int SWAY_DEBUG ;
 double libinput_device_config_accel_get_speed (struct libinput_device*) ;
 int libinput_device_config_accel_is_available (struct libinput_device*) ;
 int libinput_device_config_accel_set_speed (struct libinput_device*,double) ;
 int log_status (int ) ;
 int sway_log (int ,char*,double) ;

__attribute__((used)) static bool set_accel_speed(struct libinput_device *device, double speed) {
 if (!libinput_device_config_accel_is_available(device) ||
   libinput_device_config_accel_get_speed(device) == speed) {
  return 0;
 }
 sway_log(SWAY_DEBUG, "accel_set_speed(%f)", speed);
 log_status(libinput_device_config_accel_set_speed(device, speed));
 return 1;
}
