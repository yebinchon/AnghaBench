
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {struct sway_container* parent; TYPE_1__* children; scalar_t__ view; } ;
struct TYPE_2__ {int length; struct sway_container** items; } ;


 int container_begin_destroy (struct sway_container*) ;
 int container_replace (struct sway_container*,struct sway_container*) ;

struct sway_container *container_flatten(struct sway_container *container) {
 if (container->view) {
  return ((void*)0);
 }
 while (container && container->children->length == 1) {
  struct sway_container *child = container->children->items[0];
  struct sway_container *parent = container->parent;
  container_replace(container, child);
  container_begin_destroy(container);
  container = parent;
 }
 return container;
}
