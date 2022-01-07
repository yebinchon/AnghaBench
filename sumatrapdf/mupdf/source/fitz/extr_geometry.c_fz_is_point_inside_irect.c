
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x0; int x1; int y0; int y1; } ;
typedef TYPE_1__ fz_irect ;



int fz_is_point_inside_irect(int x, int y, fz_irect r)
{
 return (x >= r.x0 && x < r.x1 && y >= r.y0 && y < r.y1);
}
