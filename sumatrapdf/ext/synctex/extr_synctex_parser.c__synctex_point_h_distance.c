
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int h; } ;
typedef TYPE_2__ synctex_point_t ;
typedef TYPE_3__* synctex_node_t ;
typedef int synctex_bool_t ;
struct TYPE_13__ {TYPE_1__* class; } ;
struct TYPE_11__ {int type; } ;


 int INT_MAX ;
 int SYNCTEX_ABS_WIDTH (TYPE_3__*) ;
 int SYNCTEX_ABS_WIDTH_V (TYPE_3__*) ;
 int SYNCTEX_HORIZ (TYPE_3__*) ;
 int SYNCTEX_HORIZ_V (TYPE_3__*) ;
 int SYNCTEX_WIDTH (TYPE_3__*) ;
int _synctex_point_h_distance(synctex_point_t hitPoint, synctex_node_t node, synctex_bool_t visible) {
 if (node) {
  int min,med,max;
  switch(node->class->type) {
   case 133:

    min = visible?SYNCTEX_HORIZ_V(node):SYNCTEX_HORIZ(node);
    max = min + (visible?SYNCTEX_ABS_WIDTH_V(node):SYNCTEX_ABS_WIDTH(node));

    if (hitPoint.h<min) {
     return min - hitPoint.h;
    } else if (hitPoint.h>max) {
     return max - hitPoint.h;
    } else {
     return 0;
    }
    break;
   case 130:
   case 128:
   case 129:


    min = SYNCTEX_HORIZ(node);
    max = min + SYNCTEX_ABS_WIDTH(node);

    if (hitPoint.h<min) {
     return min - hitPoint.h;
    } else if (hitPoint.h>max) {
     return max - hitPoint.h;
    } else {
     return 0;
    }
    break;
   case 132:




    max = SYNCTEX_WIDTH(node);
    if (max<0) {
     min = SYNCTEX_HORIZ(node);
     max = min - max;
    } else {
     min = -max;
     max = SYNCTEX_HORIZ(node);
     min += max;
    }
    med = (min+max)/2;
    if (hitPoint.h<min) {
     return min - hitPoint.h + 1;
    } else if (hitPoint.h>max) {
     return max - hitPoint.h - 1;
    } else if (hitPoint.h>med) {

     return max - hitPoint.h + 1;
    } else {
     return min - hitPoint.h - 1;
    }
   case 134:
   case 131:
    return SYNCTEX_HORIZ(node) - hitPoint.h;
  }
 }
 return INT_MAX;
}
