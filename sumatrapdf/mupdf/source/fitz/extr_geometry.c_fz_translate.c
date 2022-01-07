
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int a; int d; float e; float f; scalar_t__ c; scalar_t__ b; } ;
typedef TYPE_1__ fz_matrix ;



fz_matrix
fz_translate(float tx, float ty)
{
 fz_matrix m;
 m.a = 1; m.b = 0;
 m.c = 0; m.d = 1;
 m.e = tx; m.f = ty;
 return m;
}
