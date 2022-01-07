
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wlr_input_device {int dummy; } ;
struct sway_input_device {struct wlr_input_device* wlr_device; } ;
struct libinput_device {int dummy; } ;
struct input_config {int send_events; } ;
typedef enum libinput_config_send_events_mode { ____Placeholder_libinput_config_send_events_mode } libinput_config_send_events_mode ;





 int libinput_device_config_send_events_get_mode (struct libinput_device*) ;
 int libinput_device_config_send_events_get_modes (struct libinput_device*) ;
 int wlr_input_device_is_libinput (struct wlr_input_device*) ;
 struct libinput_device* wlr_libinput_get_device_handle (struct wlr_input_device*) ;

__attribute__((used)) static void toggle_supported_send_events_for_device(struct input_config *ic,
  struct sway_input_device *input_device) {
 struct wlr_input_device *wlr_device = input_device->wlr_device;
 if (!wlr_input_device_is_libinput(wlr_device)) {
  return;
 }
 struct libinput_device *libinput_dev =
  wlr_libinput_get_device_handle(wlr_device);

 enum libinput_config_send_events_mode mode =
  libinput_device_config_send_events_get_mode(libinput_dev);
 uint32_t possible =
  libinput_device_config_send_events_get_modes(libinput_dev);

 switch (mode) {
 case 128:
  mode = 129;
  if (possible & mode) {
   break;
  }

 case 129:
  mode = 130;
  if (possible & mode) {
   break;
  }

 case 130:
 default:
  mode = 128;
  break;
 }

 ic->send_events = mode;
}
