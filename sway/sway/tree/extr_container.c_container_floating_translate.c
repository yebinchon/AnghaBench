
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {double x; double y; double content_x; double content_y; int node; TYPE_1__* children; } ;
struct TYPE_2__ {int length; struct sway_container** items; } ;


 int node_set_dirty (int *) ;

void container_floating_translate(struct sway_container *con,
  double x_amount, double y_amount) {
 con->x += x_amount;
 con->y += y_amount;
 con->content_x += x_amount;
 con->content_y += y_amount;

 if (con->children) {
  for (int i = 0; i < con->children->length; ++i) {
   struct sway_container *child = con->children->items[i];
   container_floating_translate(child, x_amount, y_amount);
  }
 }

 node_set_dirty(&con->node);
}
