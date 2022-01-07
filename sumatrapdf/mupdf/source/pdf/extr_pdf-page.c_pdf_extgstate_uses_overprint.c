
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int OP ;
 int PDF_NAME (int ) ;
 int * pdf_dict_get (int *,int *,int ) ;
 scalar_t__ pdf_to_bool (int *,int *) ;

__attribute__((used)) static int
pdf_extgstate_uses_overprint(fz_context *ctx, pdf_obj *dict)
{
 pdf_obj *obj = pdf_dict_get(ctx, dict, PDF_NAME(OP));
 if (obj && pdf_to_bool(ctx, obj))
  return 1;
 return 0;
}
