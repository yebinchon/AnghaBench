
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float* samples; } ;
struct TYPE_6__ {TYPE_1__ sa; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef TYPE_3__ pdf_function ;



__attribute__((used)) static float
interpolate_sample(pdf_function *func, int *scale, int *e0, int *e1, float *efrac, int dim, int idx)
{
 float a, b;
 int idx0, idx1;

 idx0 = e0[dim] * scale[dim] + idx;
 idx1 = e1[dim] * scale[dim] + idx;

 if (dim == 0)
 {
  a = func->u.sa.samples[idx0];
  b = func->u.sa.samples[idx1];
 }
 else
 {
  a = interpolate_sample(func, scale, e0, e1, efrac, dim - 1, idx0);
  b = interpolate_sample(func, scale, e0, e1, efrac, dim - 1, idx1);
 }

 return a + (b - a) * efrac[dim];
}
