
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int a; int d; int b; int c; } ;
typedef TYPE_1__ fz_matrix ;


 int fabsf (int) ;
 float sqrtf (int ) ;

float
fz_matrix_expansion(fz_matrix m)
{
 return sqrtf(fabsf(m.a * m.d - m.b * m.c));
}
