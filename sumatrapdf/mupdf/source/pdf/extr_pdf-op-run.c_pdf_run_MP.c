
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_processor ;
typedef int fz_context ;


 int pdf_run_BMC (int *,int *,char const*) ;
 int pdf_run_EMC (int *,int *) ;

__attribute__((used)) static void pdf_run_MP(fz_context *ctx, pdf_processor *proc, const char *tag)
{
 pdf_run_BMC(ctx, proc, tag);
 pdf_run_EMC(ctx, proc);
}
