
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_seat {int dummy; } ;
struct sway_container {int dummy; } ;
typedef enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;







 int WLR_DIRECTION_DOWN ;
 int WLR_DIRECTION_LEFT ;
 int WLR_DIRECTION_RIGHT ;
 int WLR_DIRECTION_UP ;
 int container_parent_layout (struct sway_container*) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static bool get_direction_from_next_prev(struct sway_container *container,
  struct sway_seat *seat, const char *name, enum wlr_direction *out) {
 enum sway_container_layout parent_layout = 131;
 if (container) {
  parent_layout = container_parent_layout(container);
 }

 if (strcasecmp(name, "prev") == 0) {
  switch (parent_layout) {
  case 132:
  case 129:
   *out = WLR_DIRECTION_LEFT;
   break;
  case 128:
  case 130:
   *out = WLR_DIRECTION_UP;
   break;
  case 131:
   return 1;
  default:
   return 0;
  }
 } else if (strcasecmp(name, "next") == 0) {
  switch (parent_layout) {
  case 132:
  case 129:
   *out = WLR_DIRECTION_RIGHT;
   break;
  case 128:
  case 130:
   *out = WLR_DIRECTION_DOWN;
   break;
  case 131:
   return 1;
  default:
   return 0;
  }
 } else {
  return 0;
 }

 return 1;
}
