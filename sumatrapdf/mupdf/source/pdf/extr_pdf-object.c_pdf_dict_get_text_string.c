
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int pdf_dict_get (int *,int *,int *) ;
 char const* pdf_to_text_string (int *,int ) ;

const char *pdf_dict_get_text_string(fz_context *ctx, pdf_obj *dict, pdf_obj *key)
{
 return pdf_to_text_string(ctx, pdf_dict_get(ctx, dict, key));
}
