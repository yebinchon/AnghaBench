
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int pdf_dict_put_drop (int *,int *,int *,int ) ;
 int pdf_new_string (int *,char const*,size_t) ;

void pdf_dict_put_string(fz_context *ctx, pdf_obj *dict, pdf_obj *key, const char *x, size_t n)
{
 pdf_dict_put_drop(ctx, dict, key, pdf_new_string(ctx, x, n));
}
