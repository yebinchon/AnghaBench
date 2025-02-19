
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AXIS_HORIZONTAL ;
 int AXIS_VERTICAL ;
 int WLR_EDGE_BOTTOM ;
 int WLR_EDGE_LEFT ;
 int WLR_EDGE_NONE ;
 int WLR_EDGE_RIGHT ;
 int WLR_EDGE_TOP ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static uint32_t parse_resize_axis(const char *axis) {
 if (strcasecmp(axis, "width") == 0 || strcasecmp(axis, "horizontal") == 0) {
  return AXIS_HORIZONTAL;
 }
 if (strcasecmp(axis, "height") == 0 || strcasecmp(axis, "vertical") == 0) {
  return AXIS_VERTICAL;
 }
 if (strcasecmp(axis, "up") == 0) {
  return WLR_EDGE_TOP;
 }
 if (strcasecmp(axis, "down") == 0) {
  return WLR_EDGE_BOTTOM;
 }
 if (strcasecmp(axis, "left") == 0) {
  return WLR_EDGE_LEFT;
 }
 if (strcasecmp(axis, "right") == 0) {
  return WLR_EDGE_RIGHT;
 }
 return WLR_EDGE_NONE;
}
