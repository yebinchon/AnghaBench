
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;


 int L_HORIZ ;
 int L_TABBED ;
 int WLR_EDGE_LEFT ;
 int WLR_EDGE_RIGHT ;

__attribute__((used)) static bool is_parallel(enum sway_container_layout layout,
  enum wlr_edges edge) {
 bool layout_is_horiz = layout == L_HORIZ || layout == L_TABBED;
 bool edge_is_horiz = edge == WLR_EDGE_LEFT || edge == WLR_EDGE_RIGHT;
 return layout_is_horiz == edge_is_horiz;
}
