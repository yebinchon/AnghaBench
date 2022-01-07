
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libinput_device {int dummy; } ;


 int SWAY_DEBUG ;
 int libinput_device_config_scroll_get_natural_scroll_enabled (struct libinput_device*) ;
 int libinput_device_config_scroll_has_natural_scroll (struct libinput_device*) ;
 int libinput_device_config_scroll_set_natural_scroll_enabled (struct libinput_device*,int) ;
 int log_status (int ) ;
 int sway_log (int ,char*,int) ;

__attribute__((used)) static bool set_natural_scroll(struct libinput_device *d, bool n) {
 if (!libinput_device_config_scroll_has_natural_scroll(d) ||
   libinput_device_config_scroll_get_natural_scroll_enabled(d) == n) {
  return 0;
 }
 sway_log(SWAY_DEBUG, "scroll_set_natural_scroll(%d)", n);
 log_status(libinput_device_config_scroll_set_natural_scroll_enabled(d, n));
 return 1;
}
