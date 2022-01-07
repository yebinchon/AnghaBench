
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Resources ;
 int * pdf_dict_get (int *,int *,int ) ;

pdf_obj *
pdf_xobject_resources(fz_context *ctx, pdf_obj *xobj)
{
 return pdf_dict_get(ctx, xobj, PDF_NAME(Resources));
}
