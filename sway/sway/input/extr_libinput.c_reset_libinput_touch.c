
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libinput_device {int dummy; } ;


 int SWAY_DEBUG ;
 int libinput_device_config_calibration_get_default_matrix (struct libinput_device*,float*) ;
 int libinput_device_config_send_events_get_default_mode (struct libinput_device*) ;
 int set_calibration_matrix (struct libinput_device*,float*) ;
 int set_send_events (struct libinput_device*,int ) ;
 int sway_log (int ,char*,char const*) ;

__attribute__((used)) static bool reset_libinput_touch(struct libinput_device *device,
  const char *device_id) {
 sway_log(SWAY_DEBUG, "reset_libinput_touch(%s)", device_id);
 bool changed = 0;

 changed |= set_send_events(device,
  libinput_device_config_send_events_get_default_mode(device));

 float matrix[6];
 libinput_device_config_calibration_get_default_matrix(device, matrix);
 changed |= set_calibration_matrix(device, matrix);

 return changed;
}
