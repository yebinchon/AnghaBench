
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libinput_device {int dummy; } ;


 int SWAY_DEBUG ;
 int libinput_device_config_dwt_get_enabled (struct libinput_device*) ;
 int libinput_device_config_dwt_is_available (struct libinput_device*) ;
 int libinput_device_config_dwt_set_enabled (struct libinput_device*,int) ;
 int log_status (int ) ;
 int sway_log (int ,char*,int) ;

__attribute__((used)) static bool set_dwt(struct libinput_device *device, bool dwt) {
 if (!libinput_device_config_dwt_is_available(device) ||
   libinput_device_config_dwt_get_enabled(device) == dwt) {
  return 0;
 }
 sway_log(SWAY_DEBUG, "dwt_set_enabled(%d)", dwt);
 log_status(libinput_device_config_dwt_set_enabled(device, dwt));
 return 1;
}
