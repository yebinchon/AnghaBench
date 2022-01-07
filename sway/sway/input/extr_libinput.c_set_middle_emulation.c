
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libinput_device {int dummy; } ;
typedef enum libinput_config_middle_emulation_state { ____Placeholder_libinput_config_middle_emulation_state } libinput_config_middle_emulation_state ;


 int SWAY_DEBUG ;
 int libinput_device_config_middle_emulation_get_enabled (struct libinput_device*) ;
 int libinput_device_config_middle_emulation_is_available (struct libinput_device*) ;
 int libinput_device_config_middle_emulation_set_enabled (struct libinput_device*,int) ;
 int log_status (int ) ;
 int sway_log (int ,char*,int) ;

__attribute__((used)) static bool set_middle_emulation(struct libinput_device *dev,
  enum libinput_config_middle_emulation_state mid) {
 if (!libinput_device_config_middle_emulation_is_available(dev) ||
   libinput_device_config_middle_emulation_get_enabled(dev) == mid) {
  return 0;
 }
 sway_log(SWAY_DEBUG, "middle_emulation_set_enabled(%d)", mid);
 log_status(libinput_device_config_middle_emulation_set_enabled(dev, mid));
 return 1;
}
