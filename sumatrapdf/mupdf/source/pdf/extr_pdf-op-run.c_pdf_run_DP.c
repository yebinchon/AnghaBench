
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_processor ;
typedef int pdf_obj ;
typedef int fz_context ;


 int pdf_run_BDC (int *,int *,char const*,int *,int *) ;
 int pdf_run_EMC (int *,int *) ;

__attribute__((used)) static void pdf_run_DP(fz_context *ctx, pdf_processor *proc, const char *tag, pdf_obj *raw, pdf_obj *cooked)
{
 pdf_run_BDC(ctx, proc, tag, raw, cooked);
 pdf_run_EMC(ctx, proc);
}
