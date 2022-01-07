
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {struct sway_container* parent; } ;



bool container_has_ancestor(struct sway_container *descendant,
  struct sway_container *ancestor) {
 while (descendant) {
  descendant = descendant->parent;
  if (descendant == ancestor) {
   return 1;
  }
 }
 return 0;
}
