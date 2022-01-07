
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_names ;


 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static const char *pretty_type_name(const char *name) {

 struct {
  const char *a;
  const char *b;
 } type_names[] = {
  { "keyboard", "Keyboard" },
  { "pointer", "Mouse" },
  { "touchpad", "Touchpad" },
  { "tablet_pad", "Tablet pad" },
  { "tablet_tool", "Tablet tool" },
  { "touch", "Touch" },
  { "switch", "Switch" },
 };

 for (size_t i = 0; i < sizeof(type_names) / sizeof(type_names[0]); ++i) {
  if (strcmp(type_names[i].a, name) == 0) {
   return type_names[i].b;
  }
 }

 return name;
}
