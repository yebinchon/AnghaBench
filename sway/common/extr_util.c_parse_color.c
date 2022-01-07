
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SWAY_DEBUG ;
 int strlen (char const*) ;
 int strtoul (char const*,int *,int) ;
 int sway_log (int ,char*,char const*) ;

uint32_t parse_color(const char *color) {
 if (color[0] == '#') {
  ++color;
 }

 int len = strlen(color);
 if (len != 6 && len != 8) {
  sway_log(SWAY_DEBUG, "Invalid color %s, defaulting to color 0xFFFFFFFF", color);
  return 0xFFFFFFFF;
 }
 uint32_t res = (uint32_t)strtoul(color, ((void*)0), 16);
 if (strlen(color) == 6) {
  res = (res << 8) | 0xFF;
 }
 return res;
}
