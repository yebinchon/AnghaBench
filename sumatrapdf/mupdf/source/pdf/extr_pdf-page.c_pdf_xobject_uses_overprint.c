
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Resources ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_resources_use_overprint (int *,int *) ;

__attribute__((used)) static int
pdf_xobject_uses_overprint(fz_context *ctx, pdf_obj *dict)
{
 pdf_obj *obj = pdf_dict_get(ctx, dict, PDF_NAME(Resources));
 return pdf_resources_use_overprint(ctx, obj);
}
