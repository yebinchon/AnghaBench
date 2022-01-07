
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int pdf_dict_get (int *,int *,int *) ;
 int pdf_to_int (int *,int ) ;

int pdf_dict_get_int(fz_context *ctx, pdf_obj *dict, pdf_obj *key)
{
 return pdf_to_int(ctx, pdf_dict_get(ctx, dict, key));
}
