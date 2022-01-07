
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint32_t ;







 int EV_KEY ;




 int libevdev_event_code_from_name (int ,char const*) ;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char const*) ;
 char* strdup (char*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char*,size_t) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

uint32_t get_mouse_bindsym(const char *name, char **error) {
 if (strncasecmp(name, "button", strlen("button")) == 0) {

  int number = name[strlen("button")] - '0';
  if (number < 1 || number > 9 || strlen(name) > strlen("button0")) {
   *error = strdup("Only buttons 1-9 are supported. For other mouse "
     "buttons, use the name of the event code.");
   return 0;
  }
  static const uint32_t buttons[] = {135, 134, 133,
   128, 131, 130,
   129, 132, 136};
  return buttons[number - 1];
 } else if (strncmp(name, "BTN_", strlen("BTN_")) == 0) {

  int code = libevdev_event_code_from_name(EV_KEY, name);
  if (code == -1) {
   size_t len = snprintf(((void*)0), 0, "Unknown event %s", name) + 1;
   *error = malloc(len);
   if (*error) {
    snprintf(*error, len, "Unknown event %s", name);
   }
   return 0;
  }
  return code;
 }
 return 0;
}
