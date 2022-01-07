
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_box {int height; double y; int width; int x; } ;
struct sway_workspace {double gaps_inner; } ;
struct sway_container {scalar_t__ height_fraction; double y; double height; int width; int x; struct sway_container* parent; struct sway_workspace* workspace; } ;
struct TYPE_3__ {int length; struct sway_container** items; } ;
typedef TYPE_1__ list_t ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;


 int L_STACKED ;
 int L_TABBED ;
 int MIN_SANE_H ;
 int SWAY_DEBUG ;
 int container_parent_layout (struct sway_container*) ;
 double floor (double) ;
 int fmax (int ,int) ;
 double fmin (double,int ) ;
 int sway_log (int ,char*,struct wlr_box*) ;

__attribute__((used)) static void apply_vert_layout(list_t *children, struct wlr_box *parent) {
 if (!children->length) {
  return;
 }



 int new_children = 0;
 double current_height_fraction = 0;
 for (int i = 0; i < children->length; ++i) {
  struct sway_container *child = children->items[i];
  current_height_fraction += child->height_fraction;
  if (child->height_fraction <= 0) {
   new_children += 1;
  }
 }


 double total_height_fraction = 0;
 for (int i = 0; i < children->length; ++i) {
  struct sway_container *child = children->items[i];
  if (child->height_fraction <= 0) {
   if (current_height_fraction <= 0) {
    child->height_fraction = 1.0;
   } else if (children->length > new_children) {
    child->height_fraction = current_height_fraction /
     (children->length - new_children);
   } else {
    child->height_fraction = current_height_fraction;
   }
  }
  total_height_fraction += child->height_fraction;
 }

 for (int i = 0; i < children->length; ++i) {
  struct sway_container *child = children->items[i];
  child->height_fraction /= total_height_fraction;
 }


 double inner_gap = 0;
 struct sway_container *child = children->items[0];
 struct sway_workspace *ws = child->workspace;
 if (ws) {
  inner_gap = ws->gaps_inner;
 }

 struct sway_container *temp = child;
 while (temp) {
  enum sway_container_layout layout = container_parent_layout(temp);
  if (layout == L_TABBED || layout == L_STACKED) {
   inner_gap = 0;
  }
  temp = temp->parent;
 }
 double total_gap = fmin(inner_gap * (children->length - 1),
  fmax(0, parent->height - MIN_SANE_H * children->length));
 double child_total_height = parent->height - total_gap;
 inner_gap = total_gap / (children->length - 1);


 sway_log(SWAY_DEBUG, "Arranging %p vertically", parent);
 double child_y = parent->y;
 for (int i = 0; i < children->length; ++i) {
  struct sway_container *child = children->items[i];
  child->x = parent->x;
  child->y = child_y;
  child->width = parent->width;
  child->height = floor(child->height_fraction * child_total_height);
  child_y += child->height + inner_gap;


  if (i == children->length - 1) {
   child->height = parent->y + parent->height - child->y;
  }
 }
}
