
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m; int n; } ;
typedef TYPE_1__ pdf_function ;
typedef int fz_context ;


 int MAX_M ;
 int MAX_N ;
 int pdf_eval_function_imp (int *,TYPE_1__*,float const*,float*) ;

void
pdf_eval_function(fz_context *ctx, pdf_function *func, const float *in, int inlen, float *out, int outlen)
{
 float fakein[MAX_M];
 float fakeout[MAX_N];
 int i;

 if (inlen < func->m)
 {
  for (i = 0; i < inlen; ++i)
   fakein[i] = in[i];
  for (; i < func->m; ++i)
   fakein[i] = 0;
  in = fakein;
 }

 if (outlen < func->n)
 {
  pdf_eval_function_imp(ctx, func, in, fakeout);
  for (i = 0; i < outlen; ++i)
   out[i] = fakeout[i];
 }
 else
 {
  pdf_eval_function_imp(ctx, func, in, out);
  for (i = func->n; i < outlen; ++i)
   out[i] = 0;
 }
}
