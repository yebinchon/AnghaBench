
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d; int c; int b; int a; } ;
typedef TYPE_1__ fz_matrix ;


 float fabsf (int ) ;

float
fz_matrix_max_expansion(fz_matrix m)
{
 float max = fabsf(m.a);
 float x = fabsf(m.b);
 if (max < x)
  max = x;
 x = fabsf(m.c);
 if (max < x)
  max = x;
 x = fabsf(m.d);
 if (max < x)
  max = x;
 return max;
}
