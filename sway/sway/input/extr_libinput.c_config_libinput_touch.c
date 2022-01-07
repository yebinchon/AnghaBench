
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct libinput_device {int dummy; } ;
struct TYPE_2__ {int matrix; scalar_t__ configured; } ;
struct input_config {scalar_t__ send_events; TYPE_1__ calibration_matrix; int identifier; } ;


 scalar_t__ INT_MIN ;
 int SWAY_DEBUG ;
 int set_calibration_matrix (struct libinput_device*,int ) ;
 int set_send_events (struct libinput_device*,scalar_t__) ;
 int sway_log (int ,char*,int ,char const*) ;

__attribute__((used)) static bool config_libinput_touch(struct libinput_device *device,
  struct input_config *ic, const char *device_id) {
 sway_log(SWAY_DEBUG, "config_libinput_touch('%s' on  '%s')",
   ic->identifier, device_id);
 bool changed = 0;
 if (ic->send_events != INT_MIN) {
  changed |= set_send_events(device, ic->send_events);
 }
 if (ic->calibration_matrix.configured) {
  changed |= set_calibration_matrix(device, ic->calibration_matrix.matrix);
 }
 return changed;
}
