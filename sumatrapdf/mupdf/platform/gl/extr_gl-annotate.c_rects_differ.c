
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ y1; scalar_t__ x1; scalar_t__ y0; scalar_t__ x0; } ;
typedef TYPE_1__ fz_rect ;


 float fz_abs (scalar_t__) ;

__attribute__((used)) static int rects_differ(fz_rect a, fz_rect b, float threshold)
{
 if (fz_abs(a.x0 - b.x0) > threshold) return 1;
 if (fz_abs(a.y0 - b.y0) > threshold) return 1;
 if (fz_abs(a.x1 - b.x1) > threshold) return 1;
 if (fz_abs(a.y1 - b.y1) > threshold) return 1;
 return 0;
}
