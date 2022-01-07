
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;


 int WLR_DIRECTION_DOWN ;
 int WLR_DIRECTION_LEFT ;
 int WLR_DIRECTION_RIGHT ;
 int WLR_DIRECTION_UP ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static bool parse_direction(const char *name,
  enum wlr_direction *out) {
 if (strcasecmp(name, "left") == 0) {
  *out = WLR_DIRECTION_LEFT;
 } else if (strcasecmp(name, "right") == 0) {
  *out = WLR_DIRECTION_RIGHT;
 } else if (strcasecmp(name, "up") == 0) {
  *out = WLR_DIRECTION_UP;
 } else if (strcasecmp(name, "down") == 0) {
  *out = WLR_DIRECTION_DOWN;
 } else {
  return 0;
 }

 return 1;
}
