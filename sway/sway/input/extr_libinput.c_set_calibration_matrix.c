
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libinput_device {int dummy; } ;


 int SWAY_DEBUG ;
 int libinput_device_config_calibration_get_matrix (struct libinput_device*,float*) ;
 int libinput_device_config_calibration_has_matrix (struct libinput_device*) ;
 int libinput_device_config_calibration_set_matrix (struct libinput_device*,float*) ;
 int log_status (int ) ;
 int sway_log (int ,char*,float,float,float,float,float,float) ;

__attribute__((used)) static bool set_calibration_matrix(struct libinput_device *dev, float mat[6]) {
 if (!libinput_device_config_calibration_has_matrix(dev)) {
  return 0;
 }
 bool changed = 0;
 float current[6];
 libinput_device_config_calibration_get_matrix(dev, current);
 for (int i = 0; i < 6; i++) {
  if (current[i] != mat[i]) {
   changed = 1;
   break;
  }
 }
 if (changed) {
  sway_log(SWAY_DEBUG, "calibration_set_matrix(%f, %f, %f, %f, %f, %f)",
    mat[0], mat[1], mat[2], mat[3], mat[4], mat[5]);
  log_status(libinput_device_config_calibration_set_matrix(dev, mat));
 }
 return changed;
}
