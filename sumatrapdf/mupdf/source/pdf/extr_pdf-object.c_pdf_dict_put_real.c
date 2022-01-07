
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int pdf_dict_put_drop (int *,int *,int *,int ) ;
 int pdf_new_real (int *,double) ;

void pdf_dict_put_real(fz_context *ctx, pdf_obj *dict, pdf_obj *key, double x)
{
 pdf_dict_put_drop(ctx, dict, key, pdf_new_real(ctx, x));
}
