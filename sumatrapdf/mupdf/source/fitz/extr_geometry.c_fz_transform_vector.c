
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float x; float y; } ;
typedef TYPE_1__ fz_point ;
struct TYPE_7__ {float a; float c; float b; float d; } ;
typedef TYPE_2__ fz_matrix ;



fz_point
fz_transform_vector(fz_point p, fz_matrix m)
{
 float x = p.x;
 p.x = x * m.a + p.y * m.c;
 p.y = x * m.b + p.y * m.d;
 return p;
}
