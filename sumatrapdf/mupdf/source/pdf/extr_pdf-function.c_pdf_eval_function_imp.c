
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; } ;
typedef TYPE_1__ pdf_function ;
typedef int fz_context ;






 int eval_exponential_func (int *,TYPE_1__*,float const,float*) ;
 int eval_postscript_func (int *,TYPE_1__*,float const*,float*) ;
 int eval_sample_func (int *,TYPE_1__*,float const*,float*) ;
 int eval_stitching_func (int *,TYPE_1__*,float const,float*) ;

__attribute__((used)) static void
pdf_eval_function_imp(fz_context *ctx, pdf_function *func, const float *in, float *out)
{
 switch (func->type)
 {
 case 129: eval_sample_func(ctx, func, in, out); break;
 case 131: eval_exponential_func(ctx, func, *in, out); break;
 case 128: eval_stitching_func(ctx, func, *in, out); break;
 case 130: eval_postscript_func(ctx, func, in, out); break;
 }
}
