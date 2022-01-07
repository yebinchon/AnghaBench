
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int n; float* c0; float* c1; } ;
struct TYPE_6__ {TYPE_1__ e; } ;
struct TYPE_7__ {int n; int ** range; scalar_t__ has_range; TYPE_2__ u; int ** domain; } ;
typedef TYPE_3__ pdf_function ;
typedef int fz_context ;


 float fz_clamp (float,int ,int ) ;
 float powf (float,scalar_t__) ;

__attribute__((used)) static void
eval_exponential_func(fz_context *ctx, pdf_function *func, float in, float *out)
{
 float x = in;
 float tmp;
 int i;

 x = fz_clamp(x, func->domain[0][0], func->domain[0][1]);


 if ((func->u.e.n != (int)func->u.e.n && x < 0) || (func->u.e.n < 0 && x == 0))
 {
  for (i = 0; i < func->n; i++)
   out[i] = 0;
  return;
 }

 tmp = powf(x, func->u.e.n);
 for (i = 0; i < func->n; i++)
 {
  out[i] = func->u.e.c0[i] + tmp * (func->u.e.c1[i] - func->u.e.c0[i]);
  if (func->has_range)
   out[i] = fz_clamp(out[i], func->range[i][0], func->range[i][1]);
 }
}
