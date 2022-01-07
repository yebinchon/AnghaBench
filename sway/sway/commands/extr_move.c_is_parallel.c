
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;






 int WLR_DIRECTION_DOWN ;
 int WLR_DIRECTION_LEFT ;
 int WLR_DIRECTION_RIGHT ;
 int WLR_DIRECTION_UP ;

__attribute__((used)) static bool is_parallel(enum sway_container_layout layout,
  enum wlr_direction dir) {
 switch (layout) {
 case 129:
 case 131:
  return dir == WLR_DIRECTION_LEFT || dir == WLR_DIRECTION_RIGHT;
 case 130:
 case 128:
  return dir == WLR_DIRECTION_UP || dir == WLR_DIRECTION_DOWN;
 default:
  return 0;
 }
}
