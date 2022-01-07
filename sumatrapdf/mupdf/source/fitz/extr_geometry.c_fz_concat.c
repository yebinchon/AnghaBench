
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int a; int b; int c; int d; int e; int f; } ;
typedef TYPE_1__ fz_matrix ;



fz_matrix
fz_concat(fz_matrix one, fz_matrix two)
{
 fz_matrix dst;
 dst.a = one.a * two.a + one.b * two.c;
 dst.b = one.a * two.b + one.b * two.d;
 dst.c = one.c * two.a + one.d * two.c;
 dst.d = one.c * two.b + one.d * two.d;
 dst.e = one.e * two.a + one.f * two.c + two.e;
 dst.f = one.e * two.b + one.f * two.d + two.f;
 return dst;
}
