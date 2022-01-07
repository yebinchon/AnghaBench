
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_container {TYPE_2__* workspace; TYPE_1__* parent; } ;
typedef int list_t ;
struct TYPE_4__ {int * floating; int * tiling; } ;
struct TYPE_3__ {int * children; } ;


 scalar_t__ container_is_scratchpad_hidden (struct sway_container*) ;
 int list_find (int *,struct sway_container*) ;

list_t *container_get_siblings(struct sway_container *container) {
 if (container->parent) {
  return container->parent->children;
 }
 if (container_is_scratchpad_hidden(container)) {
  return ((void*)0);
 }
 if (list_find(container->workspace->tiling, container) != -1) {
  return container->workspace->tiling;
 }
 return container->workspace->floating;
}
