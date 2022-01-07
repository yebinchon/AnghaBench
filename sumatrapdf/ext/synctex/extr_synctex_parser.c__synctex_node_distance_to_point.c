
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int v; int h; } ;
typedef TYPE_2__ synctex_point_t ;
typedef TYPE_3__* synctex_node_t ;
typedef int synctex_bool_t ;
struct TYPE_14__ {TYPE_1__* class; } ;
struct TYPE_12__ {int type; } ;


 int INT_MAX ;
 int SYNCTEX_ABS_DEPTH (TYPE_3__*) ;
 int SYNCTEX_ABS_HEIGHT (TYPE_3__*) ;
 int SYNCTEX_ABS_WIDTH (TYPE_3__*) ;
 int SYNCTEX_HORIZ (TYPE_3__*) ;
 int SYNCTEX_VERT (TYPE_3__*) ;
 int SYNCTEX_WIDTH (TYPE_3__*) ;
int _synctex_node_distance_to_point(synctex_point_t hitPoint, synctex_node_t node, synctex_bool_t visible) {



 int result = INT_MAX;
 if (node) {
  int minH,maxH,minV,maxV;
  switch(node->class->type) {
   case 130:
   case 128:
   case 133:
   case 129:

    minH = SYNCTEX_HORIZ(node);
    maxH = minH + SYNCTEX_ABS_WIDTH(node);
    minV = SYNCTEX_VERT(node);
    maxV = minV + SYNCTEX_ABS_DEPTH(node);
    minV -= SYNCTEX_ABS_HEIGHT(node);

    if (hitPoint.v<minV) {
     if (hitPoint.h<minH) {

      result = minV - hitPoint.v + minH - hitPoint.h;
     } else if (hitPoint.h<=maxH) {

      result = minV - hitPoint.v;
     } else {

      result = minV - hitPoint.v + hitPoint.h - maxH;
     }
    } else if (hitPoint.v<=maxV) {
     if (hitPoint.h<minH) {

      result = minH - hitPoint.h;
     } else if (hitPoint.h<=maxH) {

      result = 0;
     } else {

      result = hitPoint.h - maxH;
     }
    } else {
     if (hitPoint.h<minH) {

      result = hitPoint.v - maxV + minH - hitPoint.h;
     } else if (hitPoint.h<=maxH) {

      result = hitPoint.v - maxV;
     } else {

      result = hitPoint.v - maxV + hitPoint.h - maxH;
     }
    }
    break;
   case 132:
    maxH = SYNCTEX_WIDTH(node);
    if (maxH<0) {
     minH = SYNCTEX_HORIZ(node);
     maxH = minH - maxH;
    } else {
     minH = -maxH;
     maxH = SYNCTEX_HORIZ(node);
     minH += maxH;
    }
    minV = SYNCTEX_VERT(node);
    if (hitPoint.h<minH) {
     if (hitPoint.v>minV) {
      result = hitPoint.v - minV + minH - hitPoint.h;
     } else {
      result = minV - hitPoint.v + minH - hitPoint.h;
     }
    } else if (hitPoint.h>maxH) {
     if (hitPoint.v>minV) {
      result = hitPoint.v - minV + hitPoint.h - maxH;
     } else {
      result = minV - hitPoint.v + hitPoint.h - maxH;
     }
    } else if (hitPoint.v>minV) {
     result = hitPoint.v - minV;
    } else {
     result = minV - hitPoint.v;
    }
    break;
   case 134:
   case 131:
    minH = SYNCTEX_HORIZ(node);
    minV = SYNCTEX_VERT(node);
    if (hitPoint.h<minH) {
     if (hitPoint.v>minV) {
      result = hitPoint.v - minV + minH - hitPoint.h;
     } else {
      result = minV - hitPoint.v + minH - hitPoint.h;
     }
    } else if (hitPoint.v>minV) {
     result = hitPoint.v - minV + hitPoint.h - minH;
    } else {
     result = minV - hitPoint.v + hitPoint.h - minH;
    }
    break;
  }
 }
 return result;
}
