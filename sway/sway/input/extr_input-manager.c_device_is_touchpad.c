
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sway_input_device {TYPE_1__* wlr_device; } ;
struct libinput_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ WLR_INPUT_DEVICE_POINTER ;
 scalar_t__ libinput_device_config_tap_get_finger_count (struct libinput_device*) ;
 int wlr_input_device_is_libinput (TYPE_1__*) ;
 struct libinput_device* wlr_libinput_get_device_handle (TYPE_1__*) ;

__attribute__((used)) static bool device_is_touchpad(struct sway_input_device *device) {
 if (device->wlr_device->type != WLR_INPUT_DEVICE_POINTER ||
   !wlr_input_device_is_libinput(device->wlr_device)) {
  return 0;
 }

 struct libinput_device *libinput_device =
  wlr_libinput_get_device_handle(device->wlr_device);

 return libinput_device_config_tap_get_finger_count(libinput_device) > 0;
}
