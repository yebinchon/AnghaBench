
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int synctex_point_t ;
typedef TYPE_2__* synctex_node_t ;
typedef int synctex_bool_t ;
struct TYPE_12__ {TYPE_1__* class; } ;
struct TYPE_11__ {int type; } ;


 int INT_MAX ;
 TYPE_2__* SYNCTEX_CHILD (TYPE_2__*) ;
 TYPE_2__* SYNCTEX_SIBLING (TYPE_2__*) ;
 int _synctex_node_distance_to_point (int ,TYPE_2__*,int ) ;
 int _synctex_point_in_box (int ,TYPE_2__*,int ) ;



__attribute__((used)) static synctex_node_t _synctex_eq_deepest_container(synctex_point_t hitPoint,synctex_node_t node, synctex_bool_t visible) {
 if (node) {
  synctex_node_t result = ((void*)0);
  synctex_node_t child = ((void*)0);
  switch(node->class->type) {
   case 128:
   case 129:

    if ((child = SYNCTEX_CHILD(node))) {
     do {
      if ((result = _synctex_eq_deepest_container(hitPoint,child,visible))) {
       return result;
      }
     } while((child = SYNCTEX_SIBLING(child)));
    }

    if (_synctex_point_in_box(hitPoint,node,visible)) {



     if ((node->class->type == 128) && (child = SYNCTEX_CHILD(node))) {
      int bestDistance = INT_MAX;
      do {
       if (SYNCTEX_CHILD(child)) {
        int distance = _synctex_node_distance_to_point(hitPoint,child,visible);
        if (distance < bestDistance) {
         bestDistance = distance;
         node = child;
        }
       }
      } while((child = SYNCTEX_SIBLING(child)));
     }
     return node;
    }
  }
 }
 return ((void*)0);
}
