
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ x0; scalar_t__ y0; scalar_t__ x1; scalar_t__ y1; } ;
typedef TYPE_1__ fz_rect ;


 scalar_t__ fz_is_empty_rect (TYPE_1__) ;
 scalar_t__ fz_is_infinite_rect (TYPE_1__) ;

fz_rect
fz_union_rect(fz_rect a, fz_rect b)
{

 if (fz_is_empty_rect(b)) return a;
 if (fz_is_empty_rect(a)) return b;
 if (fz_is_infinite_rect(a)) return a;
 if (fz_is_infinite_rect(b)) return b;
 if (a.x0 > b.x0)
  a.x0 = b.x0;
 if (a.y0 > b.y0)
  a.y0 = b.y0;
 if (a.x1 < b.x1)
  a.x1 = b.x1;
 if (a.y1 < b.y1)
  a.y1 = b.y1;
 return a;
}
