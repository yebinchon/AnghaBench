
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float a; float b; float c; float d; } ;
typedef TYPE_1__ fz_matrix ;



fz_matrix
fz_pre_shear(fz_matrix m, float h, float v)
{
 float a = m.a;
 float b = m.b;
 m.a += v * m.c;
 m.b += v * m.d;
 m.c += h * a;
 m.d += h * b;
 return m;
}
