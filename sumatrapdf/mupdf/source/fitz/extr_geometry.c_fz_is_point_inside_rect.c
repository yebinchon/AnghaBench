
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ x0; scalar_t__ x1; scalar_t__ y0; scalar_t__ y1; } ;
typedef TYPE_1__ fz_rect ;
struct TYPE_6__ {scalar_t__ x; scalar_t__ y; } ;
typedef TYPE_2__ fz_point ;



int fz_is_point_inside_rect(fz_point p, fz_rect r)
{
 return (p.x >= r.x0 && p.x < r.x1 && p.y >= r.y0 && p.y < r.y1);
}
