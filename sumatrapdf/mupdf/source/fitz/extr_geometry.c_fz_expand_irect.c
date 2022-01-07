
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x0; int y0; int x1; int y1; } ;
typedef TYPE_1__ fz_irect ;


 scalar_t__ fz_is_infinite_irect (TYPE_1__) ;

fz_irect
fz_expand_irect(fz_irect a, int expand)
{
 if (fz_is_infinite_irect(a)) return a;
 a.x0 -= expand;
 a.y0 -= expand;
 a.x1 += expand;
 a.y1 += expand;
 return a;
}
