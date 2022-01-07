
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_node {int type; TYPE_2__* sway_workspace; TYPE_1__* sway_container; } ;
typedef int list_t ;
struct TYPE_4__ {int * tiling; } ;
struct TYPE_3__ {int * children; } ;







list_t *node_get_children(struct sway_node *node) {
 switch (node->type) {
 case 131:
  return node->sway_container->children;
 case 128:
  return node->sway_workspace->tiling;
 case 130:
 case 129:
  return ((void*)0);
 }
 return ((void*)0);
}
