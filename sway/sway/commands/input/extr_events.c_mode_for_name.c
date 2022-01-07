
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIBINPUT_CONFIG_SEND_EVENTS_DISABLED ;
 int LIBINPUT_CONFIG_SEND_EVENTS_DISABLED_ON_EXTERNAL_MOUSE ;
 int LIBINPUT_CONFIG_SEND_EVENTS_ENABLED ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int mode_for_name(const char *name) {
 if (!strcmp(name, "enabled")) {
  return LIBINPUT_CONFIG_SEND_EVENTS_ENABLED;
 } else if (!strcmp(name, "disabled_on_external_mouse")) {
  return LIBINPUT_CONFIG_SEND_EVENTS_DISABLED_ON_EXTERNAL_MOUSE;
 } else if (!strcmp(name, "disabled")) {
  return LIBINPUT_CONFIG_SEND_EVENTS_DISABLED;
 }
 return -1;
}
