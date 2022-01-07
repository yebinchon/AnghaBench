
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float x0; float y0; float x1; float y1; } ;
typedef TYPE_1__ fz_rect ;


 scalar_t__ fz_is_infinite_rect (TYPE_1__) ;

fz_rect
fz_expand_rect(fz_rect a, float expand)
{
 if (fz_is_infinite_rect(a)) return a;
 a.x0 -= expand;
 a.y0 -= expand;
 a.x1 += expand;
 a.y1 += expand;
 return a;
}
