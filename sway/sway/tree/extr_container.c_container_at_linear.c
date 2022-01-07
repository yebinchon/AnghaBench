
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_surface {int dummy; } ;
struct wlr_box {int height; int width; int y; int x; } ;
struct sway_node {int dummy; } ;
struct sway_container {int node; int height; int width; int y; int x; } ;
struct TYPE_3__ {int length; struct sway_container** items; } ;
typedef TYPE_1__ list_t ;


 TYPE_1__* node_get_children (struct sway_node*) ;
 struct sway_container* tiling_container_at (int *,double,double,struct wlr_surface**,double*,double*) ;
 scalar_t__ wlr_box_contains_point (struct wlr_box*,double,double) ;

__attribute__((used)) static struct sway_container *container_at_linear(struct sway_node *parent,
  double lx, double ly,
  struct wlr_surface **surface, double *sx, double *sy) {
 list_t *children = node_get_children(parent);
 for (int i = 0; i < children->length; ++i) {
  struct sway_container *child = children->items[i];
  struct wlr_box box = {
   .x = child->x,
   .y = child->y,
   .width = child->width,
   .height = child->height,
  };
  if (wlr_box_contains_point(&box, lx, ly)) {
   return tiling_container_at(&child->node, lx, ly, surface, sx, sy);
  }
 }
 return ((void*)0);
}
