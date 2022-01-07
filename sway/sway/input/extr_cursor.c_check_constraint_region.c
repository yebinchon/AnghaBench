
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wlr_pointer_constraint_v1 {scalar_t__ type; int surface; int region; } ;
struct TYPE_5__ {double x; double y; } ;
struct sway_view {TYPE_1__ geometry; struct sway_container* container; } ;
struct sway_cursor {int confine; TYPE_3__* cursor; struct wlr_pointer_constraint_v1* active_constraint; } ;
struct sway_container {double content_x; double content_y; } ;
typedef int pixman_region32_t ;
struct TYPE_6__ {int x1; int x2; int y1; int y2; } ;
typedef TYPE_2__ pixman_box32_t ;
struct TYPE_7__ {double x; double y; } ;


 scalar_t__ WLR_POINTER_CONSTRAINT_V1_CONFINED ;
 int floor (double) ;
 int pixman_region32_clear (int *) ;
 int pixman_region32_contains_point (int *,int ,int ,int *) ;
 int pixman_region32_copy (int *,int *) ;
 TYPE_2__* pixman_region32_rectangles (int *,int*) ;
 struct sway_view* view_from_wlr_surface (int ) ;
 int wlr_cursor_warp_closest (TYPE_3__*,int *,double,double) ;

__attribute__((used)) static void check_constraint_region(struct sway_cursor *cursor) {
 struct wlr_pointer_constraint_v1 *constraint = cursor->active_constraint;
 pixman_region32_t *region = &constraint->region;
 struct sway_view *view = view_from_wlr_surface(constraint->surface);
 if (view) {
  struct sway_container *con = view->container;

  double sx = cursor->cursor->x - con->content_x + view->geometry.x;
  double sy = cursor->cursor->y - con->content_y + view->geometry.y;

  if (!pixman_region32_contains_point(region,
    floor(sx), floor(sy), ((void*)0))) {
   int nboxes;
   pixman_box32_t *boxes = pixman_region32_rectangles(region, &nboxes);
   if (nboxes > 0) {
    double sx = (boxes[0].x1 + boxes[0].x2) / 2.;
    double sy = (boxes[0].y1 + boxes[0].y2) / 2.;

    wlr_cursor_warp_closest(cursor->cursor, ((void*)0),
     sx + con->content_x - view->geometry.x,
     sy + con->content_y - view->geometry.y);
   }
  }
 }


 if (constraint->type == WLR_POINTER_CONSTRAINT_V1_CONFINED) {
  pixman_region32_copy(&cursor->confine, region);
 } else {
  pixman_region32_clear(&cursor->confine);
 }
}
