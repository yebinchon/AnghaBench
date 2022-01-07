
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ fz_point ;
struct TYPE_6__ {float a; float c; float b; float d; scalar_t__ f; scalar_t__ e; } ;
typedef TYPE_2__ fz_matrix ;



fz_point
fz_transform_point_xy(float x, float y, fz_matrix m)
{
 fz_point p;
 p.x = x * m.a + y * m.c + m.e;
 p.y = x * m.b + y * m.d + m.f;
 return p;
}
