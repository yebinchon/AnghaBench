
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int Group ;
 int PDF_NAME (int ) ;
 int S ;
 int Transparency ;
 int * pdf_dict_get (int *,int *,int ) ;
 scalar_t__ pdf_name_eq (int *,int *,int ) ;

int pdf_xobject_transparency(fz_context *ctx, pdf_obj *xobj)
{
 pdf_obj *group = pdf_dict_get(ctx, xobj, PDF_NAME(Group));
 if (group)
  if (pdf_name_eq(ctx, pdf_dict_get(ctx, group, PDF_NAME(S)), PDF_NAME(Transparency)))
   return 1;
 return 0;
}
