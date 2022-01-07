
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float e; float a; float c; float f; float b; float d; } ;
typedef TYPE_1__ fz_matrix ;



fz_matrix
fz_pre_translate(fz_matrix m, float tx, float ty)
{
 m.e += tx * m.a + ty * m.c;
 m.f += tx * m.b + ty * m.d;
 return m;
}
