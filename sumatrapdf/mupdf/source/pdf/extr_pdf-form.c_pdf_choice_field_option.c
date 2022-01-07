
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int Opt ;
 int PDF_NAME (int ) ;
 int * pdf_array_get (int *,int *,int) ;
 char const* pdf_array_get_text_string (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get_inheritable (int *,int *,int ) ;
 char const* pdf_to_text_string (int *,int *) ;

const char *pdf_choice_field_option(fz_context *ctx, pdf_obj *field, int export, int i)
{
 pdf_obj *opt = pdf_dict_get_inheritable(ctx, field, PDF_NAME(Opt));
 pdf_obj *ent = pdf_array_get(ctx, opt, i);
 if (pdf_array_len(ctx, ent) == 2)
  return pdf_array_get_text_string(ctx, ent, export ? 0 : 1);
 else
  return pdf_to_text_string(ctx, ent);
}
