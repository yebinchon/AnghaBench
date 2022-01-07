
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef TYPE_1__ fz_rect ;


 void* fz_max (void*,float) ;
 void* fz_min (void*,float) ;

__attribute__((used)) static void include_cap(fz_rect *rect, float x, float y, float r)
{
 rect->x0 = fz_min(rect->x0, x-r);
 rect->y0 = fz_min(rect->y0, y-r);
 rect->x1 = fz_max(rect->x1, x+r);
 rect->y1 = fz_max(rect->y1, y+r);
}
