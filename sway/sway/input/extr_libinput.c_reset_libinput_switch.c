
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libinput_device {int dummy; } ;


 int SWAY_DEBUG ;
 int libinput_device_config_send_events_get_default_mode (struct libinput_device*) ;
 int set_send_events (struct libinput_device*,int ) ;
 int sway_log (int ,char*,char const*) ;

__attribute__((used)) static bool reset_libinput_switch(struct libinput_device *device,
  const char *device_id) {
 sway_log(SWAY_DEBUG, "reset_libinput_switch(%s)", device_id);
 return set_send_events(device,
  libinput_device_config_send_events_get_default_mode(device));
}
