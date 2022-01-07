
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float x; float y; } ;
typedef TYPE_1__ fz_point ;


 TYPE_1__ fz_make_point (float,float) ;

__attribute__((used)) static fz_point
lerp_point(fz_point a, fz_point b, float t)
{
 return fz_make_point(a.x + t * (b.x - a.x), a.y + t * (b.y - a.y));
}
