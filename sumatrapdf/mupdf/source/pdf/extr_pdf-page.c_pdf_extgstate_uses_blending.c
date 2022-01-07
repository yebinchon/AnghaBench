
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int BM ;
 int Normal ;
 int PDF_NAME (int ) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_name_eq (int *,int *,int ) ;

__attribute__((used)) static int
pdf_extgstate_uses_blending(fz_context *ctx, pdf_obj *dict)
{
 pdf_obj *obj = pdf_dict_get(ctx, dict, PDF_NAME(BM));
 if (obj && !pdf_name_eq(ctx, obj, PDF_NAME(Normal)))
  return 1;
 return 0;
}
