
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int EV_KEY ;
 scalar_t__ SWAY_SCROLL_DOWN ;
 scalar_t__ SWAY_SCROLL_LEFT ;
 scalar_t__ SWAY_SCROLL_RIGHT ;
 scalar_t__ SWAY_SCROLL_UP ;
 char* libevdev_event_code_get_name (int ,scalar_t__) ;

const char *get_mouse_button_name(uint32_t button) {
 const char *name = libevdev_event_code_get_name(EV_KEY, button);
 if (!name) {
  if (button == SWAY_SCROLL_UP) {
   name = "SWAY_SCROLL_UP";
  } else if (button == SWAY_SCROLL_DOWN) {
   name = "SWAY_SCROLL_DOWN";
  } else if (button == SWAY_SCROLL_LEFT) {
   name = "SWAY_SCROLL_LEFT";
  } else if (button == SWAY_SCROLL_RIGHT) {
   name = "SWAY_SCROLL_RIGHT";
  }
 }
 return name;
}
