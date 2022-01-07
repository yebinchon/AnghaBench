
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {struct sway_container* parent; } ;


 int container_is_floating (struct sway_container*) ;

bool container_is_floating_or_child(struct sway_container *container) {
 while (container->parent) {
  container = container->parent;
 }
 return container_is_floating(container);
}
