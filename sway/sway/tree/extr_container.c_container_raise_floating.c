
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_container {TYPE_1__* workspace; struct sway_container* parent; } ;
struct TYPE_2__ {int node; int floating; } ;


 scalar_t__ container_is_floating (struct sway_container*) ;
 int list_move_to_end (int ,struct sway_container*) ;
 int node_set_dirty (int *) ;

void container_raise_floating(struct sway_container *con) {

 struct sway_container *floater = con;
 while (floater->parent) {
  floater = floater->parent;
 }
 if (container_is_floating(floater) && floater->workspace) {
  list_move_to_end(floater->workspace->floating, floater);
  node_set_dirty(&floater->workspace->node);
 }
}
