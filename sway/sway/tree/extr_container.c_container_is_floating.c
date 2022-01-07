
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {scalar_t__ scratchpad; TYPE_1__* workspace; int parent; } ;
struct TYPE_2__ {int floating; } ;


 int list_find (int ,struct sway_container*) ;

bool container_is_floating(struct sway_container *container) {
 if (!container->parent && container->workspace &&
   list_find(container->workspace->floating, container) != -1) {
  return 1;
 }
 if (container->scratchpad) {
  return 1;
 }
 return 0;
}
