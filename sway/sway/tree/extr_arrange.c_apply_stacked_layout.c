
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_box {scalar_t__ height; int width; scalar_t__ y; int x; } ;
struct sway_container {scalar_t__ height; int width; scalar_t__ y; int x; scalar_t__ view; } ;
struct TYPE_3__ {int length; struct sway_container** items; } ;
typedef TYPE_1__ list_t ;


 int container_titlebar_height () ;

__attribute__((used)) static void apply_stacked_layout(list_t *children, struct wlr_box *parent) {
 if (!children->length) {
  return;
 }
 for (int i = 0; i < children->length; ++i) {
  struct sway_container *child = children->items[i];
  int parent_offset = child->view ? 0 :
   container_titlebar_height() * children->length;
  child->x = parent->x;
  child->y = parent->y + parent_offset;
  child->width = parent->width;
  child->height = parent->height - parent_offset;
 }
}
