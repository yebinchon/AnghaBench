
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {TYPE_1__* children; } ;
struct TYPE_2__ {int length; struct sway_container** items; } ;



void container_for_each_child(struct sway_container *container,
  void (*f)(struct sway_container *container, void *data),
  void *data) {
 if (container->children) {
  for (int i = 0; i < container->children->length; ++i) {
   struct sway_container *child = container->children->items[i];
   f(child, data);
   container_for_each_child(child, f, data);
  }
 }
}
