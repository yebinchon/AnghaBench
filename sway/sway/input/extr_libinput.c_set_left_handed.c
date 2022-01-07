
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libinput_device {int dummy; } ;


 int SWAY_DEBUG ;
 int libinput_device_config_left_handed_get (struct libinput_device*) ;
 int libinput_device_config_left_handed_is_available (struct libinput_device*) ;
 int libinput_device_config_left_handed_set (struct libinput_device*,int) ;
 int log_status (int ) ;
 int sway_log (int ,char*,int) ;

__attribute__((used)) static bool set_left_handed(struct libinput_device *device, bool left) {
 if (!libinput_device_config_left_handed_is_available(device) ||
   libinput_device_config_left_handed_get(device) == left) {
  return 0;
 }
 sway_log(SWAY_DEBUG, "left_handed_set(%d)", left);
 log_status(libinput_device_config_left_handed_set(device, left));
 return 1;
}
