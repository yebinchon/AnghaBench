
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct libinput_device {int dummy; } ;


 int SWAY_DEBUG ;
 scalar_t__ libinput_device_config_send_events_get_mode (struct libinput_device*) ;
 int libinput_device_config_send_events_set_mode (struct libinput_device*,scalar_t__) ;
 int log_status (int ) ;
 int sway_log (int ,char*,scalar_t__) ;

__attribute__((used)) static bool set_send_events(struct libinput_device *device, uint32_t mode) {
 if (libinput_device_config_send_events_get_mode(device) == mode) {
  return 0;
 }
 sway_log(SWAY_DEBUG, "send_events_set_mode(%d)", mode);
 log_status(libinput_device_config_send_events_set_mode(device, mode));
 return 1;
}
