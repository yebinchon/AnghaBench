
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_node {int dirty; } ;
struct TYPE_2__ {int dirty_nodes; } ;


 int list_add (int ,struct sway_node*) ;
 TYPE_1__ server ;

void node_set_dirty(struct sway_node *node) {
 if (node->dirty) {
  return;
 }
 node->dirty = 1;
 list_add(server.dirty_nodes, node);
}
