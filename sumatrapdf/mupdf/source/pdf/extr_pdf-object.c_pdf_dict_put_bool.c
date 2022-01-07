
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int PDF_FALSE ;
 int PDF_TRUE ;
 int pdf_dict_put (int *,int *,int *,int ) ;

void pdf_dict_put_bool(fz_context *ctx, pdf_obj *dict, pdf_obj *key, int x)
{
 pdf_dict_put(ctx, dict, key, x ? PDF_TRUE : PDF_FALSE);
}
