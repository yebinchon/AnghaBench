
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_box {int dummy; } ;
struct sway_cursor {TYPE_1__* cursor; } ;
struct sway_container {double x; double width; double y; double height; } ;
struct TYPE_2__ {int y; int x; } ;


 int container_get_box (struct sway_container*,struct wlr_box*) ;
 scalar_t__ wlr_box_contains_point (struct wlr_box*,int ,int ) ;
 int wlr_cursor_warp (TYPE_1__*,int *,double,double) ;

void cursor_warp_to_container(struct sway_cursor *cursor,
  struct sway_container *container) {
 if (!container) {
  return;
 }

 struct wlr_box box;
 container_get_box(container, &box);
 if (wlr_box_contains_point(&box, cursor->cursor->x, cursor->cursor->y)) {
  return;
 }

 double x = container->x + container->width / 2.0;
 double y = container->y + container->height / 2.0;

 wlr_cursor_warp(cursor->cursor, ((void*)0), x, y);
}
