
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {struct sway_container* parent; scalar_t__ fullscreen_mode; } ;



bool container_is_fullscreen_or_child(struct sway_container *container) {
 do {
  if (container->fullscreen_mode) {
   return 1;
  }
  container = container->parent;
 } while (container);

 return 0;
}
