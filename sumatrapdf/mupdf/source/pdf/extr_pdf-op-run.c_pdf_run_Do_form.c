
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_run_processor ;
typedef int pdf_processor ;
typedef int pdf_obj ;
typedef int fz_context ;


 int fz_identity ;
 int pdf_run_xobject (int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static void pdf_run_Do_form(fz_context *ctx, pdf_processor *proc, const char *name, pdf_obj *xobj, pdf_obj *page_resources)
{
 pdf_run_xobject(ctx, (pdf_run_processor*)proc, xobj, page_resources, fz_identity, 0);
}
