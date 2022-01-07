
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int T ;
 int TU ;
 int * pdf_dict_get_inheritable (int *,int *,int ) ;
 char const* pdf_to_text_string (int *,int *) ;

const char *pdf_field_label(fz_context *ctx, pdf_obj *field)
{
 pdf_obj *label = pdf_dict_get_inheritable(ctx, field, PDF_NAME(TU));
 if (!label)
  label = pdf_dict_get_inheritable(ctx, field, PDF_NAME(T));
 if (label)
  return pdf_to_text_string(ctx, label);
 return "Unnamed";
}
