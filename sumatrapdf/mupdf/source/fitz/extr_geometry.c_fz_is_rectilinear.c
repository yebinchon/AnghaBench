
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d; int a; int c; int b; } ;
typedef TYPE_1__ fz_matrix ;


 scalar_t__ FLT_EPSILON ;
 scalar_t__ fabsf (int ) ;

int
fz_is_rectilinear(fz_matrix m)
{
 return (fabsf(m.b) < FLT_EPSILON && fabsf(m.c) < FLT_EPSILON) ||
  (fabsf(m.a) < FLT_EPSILON && fabsf(m.d) < FLT_EPSILON);
}
