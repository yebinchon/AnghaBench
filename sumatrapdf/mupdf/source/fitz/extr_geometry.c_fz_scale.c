
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float a; float d; scalar_t__ f; scalar_t__ e; scalar_t__ c; scalar_t__ b; } ;
typedef TYPE_1__ fz_matrix ;



fz_matrix
fz_scale(float sx, float sy)
{
 fz_matrix m;
 m.a = sx; m.b = 0;
 m.c = 0; m.d = sy;
 m.e = 0; m.f = 0;
 return m;
}
