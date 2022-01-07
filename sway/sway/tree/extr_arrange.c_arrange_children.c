
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct wlr_box {int dummy; } ;
struct sway_container {int dummy; } ;
struct TYPE_7__ {int length; struct sway_container** items; } ;
typedef TYPE_1__ list_t ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;







 int apply_horiz_layout (TYPE_1__*,struct wlr_box*) ;
 int apply_stacked_layout (TYPE_1__*,struct wlr_box*) ;
 int apply_tabbed_layout (TYPE_1__*,struct wlr_box*) ;
 int apply_vert_layout (TYPE_1__*,struct wlr_box*) ;
 int arrange_container (struct sway_container*) ;

__attribute__((used)) static void arrange_children(list_t *children,
  enum sway_container_layout layout, struct wlr_box *parent) {

 switch (layout) {
 case 132:
  apply_horiz_layout(children, parent);
  break;
 case 128:
  apply_vert_layout(children, parent);
  break;
 case 129:
  apply_tabbed_layout(children, parent);
  break;
 case 130:
  apply_stacked_layout(children, parent);
  break;
 case 131:
  apply_horiz_layout(children, parent);
  break;
 }


 for (int i = 0; i < children->length; ++i) {
  struct sway_container *child = children->items[i];
  arrange_container(child);
 }
}
