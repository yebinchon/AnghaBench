
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;


 int L_HORIZ ;
 int L_NONE ;
 int L_STACKED ;
 int L_TABBED ;
 int L_VERT ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static enum sway_container_layout parse_layout_string(char *s) {
 if (strcasecmp(s, "splith") == 0) {
  return L_HORIZ;
 } else if (strcasecmp(s, "splitv") == 0) {
  return L_VERT;
 } else if (strcasecmp(s, "tabbed") == 0) {
  return L_TABBED;
 } else if (strcasecmp(s, "stacking") == 0) {
  return L_STACKED;
 }
 return L_NONE;
}
