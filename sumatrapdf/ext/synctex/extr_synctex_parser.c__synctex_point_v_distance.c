
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int v; } ;
typedef TYPE_2__ synctex_point_t ;
typedef TYPE_3__* synctex_node_t ;
typedef int synctex_bool_t ;
struct TYPE_14__ {TYPE_1__* class; } ;
struct TYPE_12__ {int type; } ;


 int INT_MAX ;
 int SYNCTEX_ABS_DEPTH (TYPE_3__*) ;
 int SYNCTEX_ABS_DEPTH_V (TYPE_3__*) ;
 int SYNCTEX_ABS_HEIGHT (TYPE_3__*) ;
 int SYNCTEX_ABS_HEIGHT_V (TYPE_3__*) ;
 int SYNCTEX_VERT (TYPE_3__*) ;
 int SYNCTEX_VERT_V (TYPE_3__*) ;
int _synctex_point_v_distance(synctex_point_t hitPoint, synctex_node_t node,synctex_bool_t visible) {



 if (node) {
  int min,max;
  switch(node->class->type) {
   case 133:

    min = SYNCTEX_VERT_V(node);
    max = min + SYNCTEX_ABS_DEPTH_V(node);
    min -= SYNCTEX_ABS_HEIGHT_V(node);

    if (hitPoint.v<min) {
     return min - hitPoint.v;
    } else if (hitPoint.v>max) {
     return max - hitPoint.v;
    } else {
     return 0;
    }
    break;
   case 130:
   case 128:
   case 129:

    min = SYNCTEX_VERT(node);
    max = min + SYNCTEX_ABS_DEPTH(node);
    min -= SYNCTEX_ABS_HEIGHT(node);

    if (hitPoint.v<min) {
     return min - hitPoint.v;
    } else if (hitPoint.v>max) {
     return max - hitPoint.v;
    } else {
     return 0;
    }
    break;
   case 132:
   case 134:
   case 131:
    return SYNCTEX_VERT(node) - hitPoint.v;
  }
 }
 return INT_MAX;
}
