
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int a; float b; float c; int d; scalar_t__ f; scalar_t__ e; } ;
typedef TYPE_1__ fz_matrix ;



fz_matrix
fz_shear(float h, float v)
{
 fz_matrix m;
 m.a = 1; m.b = v;
 m.c = h; m.d = 1;
 m.e = 0; m.f = 0;
 return m;
}
