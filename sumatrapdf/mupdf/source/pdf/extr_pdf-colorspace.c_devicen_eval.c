
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int pdf_eval_function (int *,void*,float const*,int,float*,int) ;

__attribute__((used)) static void
devicen_eval(fz_context *ctx, void *tint, const float *sv, int sn, float *dv, int dn)
{
 pdf_eval_function(ctx, tint, sv, sn, dv, dn);
}
