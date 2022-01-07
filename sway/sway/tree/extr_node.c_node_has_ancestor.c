
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_node {scalar_t__ type; TYPE_1__* sway_container; } ;
struct TYPE_2__ {scalar_t__ fullscreen_mode; } ;


 scalar_t__ FULLSCREEN_GLOBAL ;
 scalar_t__ N_CONTAINER ;
 scalar_t__ N_ROOT ;
 struct sway_node* node_get_parent (struct sway_node*) ;

bool node_has_ancestor(struct sway_node *node, struct sway_node *ancestor) {
 if (ancestor->type == N_ROOT && node->type == N_CONTAINER &&
   node->sway_container->fullscreen_mode == FULLSCREEN_GLOBAL) {
  return 1;
 }
 struct sway_node *parent = node_get_parent(node);
 while (parent) {
  if (parent == ancestor) {
   return 1;
  }
  if (ancestor->type == N_ROOT && parent->type == N_CONTAINER &&
    parent->sway_container->fullscreen_mode == FULLSCREEN_GLOBAL) {
   return 1;
  }
  parent = node_get_parent(parent);
 }
 return 0;
}
