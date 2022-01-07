
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int y1; int x1; int y0; int x0; } ;
typedef TYPE_1__ fz_rect ;
struct TYPE_6__ {int y1; int x1; int y0; int x0; } ;
typedef TYPE_2__ fz_irect ;



fz_rect
fz_rect_from_irect(fz_irect a)
{
 fz_rect r;
 r.x0 = a.x0;
 r.y0 = a.y0;
 r.x1 = a.x1;
 r.y1 = a.y1;
 return r;
}
