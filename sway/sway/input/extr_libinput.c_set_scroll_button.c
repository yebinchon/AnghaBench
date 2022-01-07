
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct libinput_device {int dummy; } ;


 scalar_t__ LIBINPUT_CONFIG_SCROLL_NO_SCROLL ;
 int SWAY_DEBUG ;
 scalar_t__ libinput_device_config_scroll_get_button (struct libinput_device*) ;
 scalar_t__ libinput_device_config_scroll_get_methods (struct libinput_device*) ;
 int libinput_device_config_scroll_set_button (struct libinput_device*,scalar_t__) ;
 int log_status (int ) ;
 int sway_log (int ,char*,scalar_t__) ;

__attribute__((used)) static bool set_scroll_button(struct libinput_device *dev, uint32_t button) {
 uint32_t scroll = libinput_device_config_scroll_get_methods(dev);
 if ((scroll & ~LIBINPUT_CONFIG_SCROLL_NO_SCROLL) == 0 ||
   libinput_device_config_scroll_get_button(dev) == button) {
  return 0;
 }
 sway_log(SWAY_DEBUG, "scroll_set_button(%d)", button);
 log_status(libinput_device_config_scroll_set_button(dev, button));
 return 1;
}
