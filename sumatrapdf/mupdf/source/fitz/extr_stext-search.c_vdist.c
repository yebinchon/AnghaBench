
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float x; float y; } ;
typedef TYPE_1__ fz_point ;


 float fz_abs (float) ;

__attribute__((used)) static float vdist(fz_point *dir, fz_point *a, fz_point *b)
{
 float dx = b->x - a->x;
 float dy = b->y - a->y;
 return fz_abs(dx * dir->y + dy * dir->x);
}
