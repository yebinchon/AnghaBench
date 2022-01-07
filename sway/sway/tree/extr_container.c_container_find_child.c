
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {TYPE_1__* children; } ;
struct TYPE_2__ {int length; struct sway_container** items; } ;



struct sway_container *container_find_child(struct sway_container *container,
  bool (*test)(struct sway_container *con, void *data), void *data) {
 if (!container->children) {
  return ((void*)0);
 }
 for (int i = 0; i < container->children->length; ++i) {
  struct sway_container *child = container->children->items[i];
  if (test(child, data)) {
   return child;
  }
  struct sway_container *res = container_find_child(child, test, data);
  if (res) {
   return res;
  }
 }
 return ((void*)0);
}
