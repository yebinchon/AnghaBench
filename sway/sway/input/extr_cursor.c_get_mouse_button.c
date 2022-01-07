
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ get_mouse_bindcode (char const*,char**) ;
 scalar_t__ get_mouse_bindsym (char const*,char**) ;

uint32_t get_mouse_button(const char *name, char **error) {
 uint32_t button = get_mouse_bindsym(name, error);
 if (!button && !*error) {
  button = get_mouse_bindcode(name, error);
 }
 return button;
}
