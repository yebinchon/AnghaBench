
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ x0; scalar_t__ x1; scalar_t__ y0; scalar_t__ y1; } ;
typedef TYPE_1__ fz_rect ;
struct TYPE_8__ {scalar_t__ x; scalar_t__ y; } ;
typedef TYPE_2__ fz_point ;


 scalar_t__ fz_is_infinite_rect (TYPE_1__) ;

fz_rect fz_include_point_in_rect(fz_rect r, fz_point p)
{
 if (fz_is_infinite_rect(r)) return r;
 if (p.x < r.x0) r.x0 = p.x;
 if (p.x > r.x1) r.x1 = p.x;
 if (p.y < r.y0) r.y0 = p.y;
 if (p.y > r.y1) r.y1 = p.y;
 return r;
}
