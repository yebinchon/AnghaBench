
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float x0; float y0; float x1; float y1; } ;
typedef TYPE_1__ fz_rect ;


 scalar_t__ fz_is_empty_rect (TYPE_1__) ;
 scalar_t__ fz_is_infinite_rect (TYPE_1__) ;

fz_rect
fz_translate_rect(fz_rect a, float xoff, float yoff)
{
 if (fz_is_empty_rect(a)) return a;
 if (fz_is_infinite_rect(a)) return a;
 a.x0 += xoff;
 a.y0 += yoff;
 a.x1 += xoff;
 a.y1 += yoff;
 return a;
}
