
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct libinput_device {int dummy; } ;
struct json_object {int dummy; } ;
typedef int json_object ;
 int json_object_array_add (struct json_object*,struct json_object*) ;
 struct json_object* json_object_new_array () ;
 struct json_object* json_object_new_double (float) ;
 struct json_object* json_object_new_int (int) ;
 int * json_object_new_object () ;
 struct json_object* json_object_new_string (char const*) ;
 int json_object_object_add (int *,char*,struct json_object*) ;
 int libinput_device_config_accel_get_profile (struct libinput_device*) ;
 double libinput_device_config_accel_get_speed (struct libinput_device*) ;
 scalar_t__ libinput_device_config_accel_is_available (struct libinput_device*) ;
 int libinput_device_config_calibration_get_matrix (struct libinput_device*,float*) ;
 scalar_t__ libinput_device_config_calibration_has_matrix (struct libinput_device*) ;
 int libinput_device_config_click_get_method (struct libinput_device*) ;
 int libinput_device_config_click_get_methods (struct libinput_device*) ;
 int libinput_device_config_dwt_get_enabled (struct libinput_device*) ;
 scalar_t__ libinput_device_config_dwt_is_available (struct libinput_device*) ;
 scalar_t__ libinput_device_config_left_handed_get (struct libinput_device*) ;
 scalar_t__ libinput_device_config_left_handed_is_available (struct libinput_device*) ;
 int libinput_device_config_middle_emulation_get_enabled (struct libinput_device*) ;
 scalar_t__ libinput_device_config_middle_emulation_is_available (struct libinput_device*) ;
 int libinput_device_config_scroll_get_button (struct libinput_device*) ;
 int libinput_device_config_scroll_get_method (struct libinput_device*) ;
 int libinput_device_config_scroll_get_methods (struct libinput_device*) ;
 scalar_t__ libinput_device_config_scroll_get_natural_scroll_enabled (struct libinput_device*) ;
 scalar_t__ libinput_device_config_scroll_has_natural_scroll (struct libinput_device*) ;
 int libinput_device_config_send_events_get_mode (struct libinput_device*) ;
 int libinput_device_config_tap_get_button_map (struct libinput_device*) ;
 int libinput_device_config_tap_get_drag_enabled (struct libinput_device*) ;
 int libinput_device_config_tap_get_drag_lock_enabled (struct libinput_device*) ;
 int libinput_device_config_tap_get_enabled (struct libinput_device*) ;
 scalar_t__ libinput_device_config_tap_get_finger_count (struct libinput_device*) ;

__attribute__((used)) static json_object *describe_libinput_device(struct libinput_device *device) {
 json_object *object = json_object_new_object();

 const char *events = "unknown";
 switch (libinput_device_config_send_events_get_mode(device)) {
 case 132:
  events = "enabled";
  break;
 case 133:
  events = "disabled_on_external_mouse";
  break;
 case 134:
  events = "disabled";
  break;
 }
 json_object_object_add(object, "send_events",
   json_object_new_string(events));

 if (libinput_device_config_tap_get_finger_count(device) > 0) {
  const char *tap = "unknown";
  switch (libinput_device_config_tap_get_enabled(device)) {
  case 130:
   tap = "enabled";
   break;
  case 131:
   tap = "disabled";
   break;
  }
  json_object_object_add(object, "tap", json_object_new_string(tap));

  const char *button_map = "unknown";
  switch (libinput_device_config_tap_get_button_map(device)) {
  case 128:
   button_map = "lrm";
   break;
  case 129:
   button_map = "lmr";
   break;
  }
  json_object_object_add(object, "tap_button_map",
    json_object_new_string(button_map));

  const char* drag = "unknown";
  switch (libinput_device_config_tap_get_drag_enabled(device)) {
  case 145:
   drag = "enabled";
   break;
  case 146:
   drag = "disabled";
   break;
  }
  json_object_object_add(object, "tap_drag",
    json_object_new_string(drag));

  const char *drag_lock = "unknown";
  switch (libinput_device_config_tap_get_drag_lock_enabled(device)) {
  case 143:
   drag_lock = "enabled";
   break;
  case 144:
   drag_lock = "disabled";
   break;
  }
  json_object_object_add(object, "tap_drag_lock",
    json_object_new_string(drag_lock));
 }

 if (libinput_device_config_accel_is_available(device)) {
  double accel = libinput_device_config_accel_get_speed(device);
  json_object_object_add(object, "accel_speed",
    json_object_new_double(accel));

  const char *accel_profile = "unknown";
  switch (libinput_device_config_accel_get_profile(device)) {
  case 150:
   accel_profile = "none";
   break;
  case 151:
   accel_profile = "flat";
   break;
  case 152:
   accel_profile = "adaptive";
   break;
  }
  json_object_object_add(object, "accel_profile",
    json_object_new_string(accel_profile));
 }

 if (libinput_device_config_scroll_has_natural_scroll(device)) {
  const char *natural_scroll = "disabled";
  if (libinput_device_config_scroll_get_natural_scroll_enabled(device)) {
   natural_scroll = "enabled";
  }
  json_object_object_add(object, "natural_scroll",
    json_object_new_string(natural_scroll));
 }

 if (libinput_device_config_left_handed_is_available(device)) {
  const char *left_handed = "disabled";
  if (libinput_device_config_left_handed_get(device) != 0) {
   left_handed = "enabled";
  }
  json_object_object_add(object, "left_handed",
    json_object_new_string(left_handed));
 }

 uint32_t click_methods = libinput_device_config_click_get_methods(device);
 if ((click_methods & ~147) != 0) {
  const char *click_method = "unknown";
  switch (libinput_device_config_click_get_method(device)) {
  case 147:
   click_method = "none";
   break;
  case 149:
   click_method = "button_areas";
   break;
  case 148:
   click_method = "clickfinger";
   break;
  }
  json_object_object_add(object, "click_method",
    json_object_new_string(click_method));
 }

 if (libinput_device_config_middle_emulation_is_available(device)) {
  const char *middle_emulation = "unknown";
  switch (libinput_device_config_middle_emulation_get_enabled(device)) {
  case 139:
   middle_emulation = "enabled";
   break;
  case 140:
   middle_emulation = "disabled";
   break;
  }
  json_object_object_add(object, "middle_emulation",
    json_object_new_string(middle_emulation));
 }

 uint32_t scroll_methods = libinput_device_config_scroll_get_methods(device);
 if ((scroll_methods & ~136) != 0) {
  const char *scroll_method = "unknown";
  switch (libinput_device_config_scroll_get_method(device)) {
  case 136:
   scroll_method = "none";
   break;
  case 138:
   scroll_method = "two_finger";
   break;
  case 137:
   scroll_method = "edge";
   break;
  case 135:
   scroll_method = "on_button_down";
   break;
  }
  json_object_object_add(object, "scroll_method",
    json_object_new_string(scroll_method));

  if ((scroll_methods & 135) != 0) {
   uint32_t button = libinput_device_config_scroll_get_button(device);
   json_object_object_add(object, "scroll_button",
     json_object_new_int(button));
  }
 }

 if (libinput_device_config_dwt_is_available(device)) {
  const char *dwt = "unknown";
  switch (libinput_device_config_dwt_get_enabled(device)) {
  case 141:
   dwt = "enabled";
   break;
  case 142:
   dwt = "disabled";
   break;
  }
  json_object_object_add(object, "dwt", json_object_new_string(dwt));
 }

 if (libinput_device_config_calibration_has_matrix(device)) {
  float matrix[6];
  libinput_device_config_calibration_get_matrix(device, matrix);
  struct json_object* array = json_object_new_array();
  struct json_object* x;
  for (int i = 0; i < 6; i++) {
   x = json_object_new_double(matrix[i]);
   json_object_array_add(array, x);
  }
  json_object_object_add(object, "calibration_matrix", array);
 }

 return object;
}
