
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int Group ;
 int K ;
 int PDF_NAME (int ) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dict_get_bool (int *,int *,int ) ;

int pdf_xobject_knockout(fz_context *ctx, pdf_obj *xobj)
{
 pdf_obj *group = pdf_dict_get(ctx, xobj, PDF_NAME(Group));
 if (group)
  return pdf_dict_get_bool(ctx, group, PDF_NAME(K));
 return 0;
}
