
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Resources ;
 int Transparency ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dict_getp (int *,int *,char*) ;
 scalar_t__ pdf_name_eq (int *,int ,int ) ;
 int pdf_resources_use_blending (int *,int *) ;

__attribute__((used)) static int
pdf_xobject_uses_blending(fz_context *ctx, pdf_obj *dict)
{
 pdf_obj *obj = pdf_dict_get(ctx, dict, PDF_NAME(Resources));
 if (pdf_name_eq(ctx, pdf_dict_getp(ctx, dict, "Group/S"), PDF_NAME(Transparency)))
  return 1;
 return pdf_resources_use_blending(ctx, obj);
}
