
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int Opt ;
 int PDF_NAME (int ) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get_inheritable (int *,int *,int ) ;

int pdf_choice_field_option_count(fz_context *ctx, pdf_obj *field)
{
 pdf_obj *opt = pdf_dict_get_inheritable(ctx, field, PDF_NAME(Opt));
 return pdf_array_len(ctx, opt);
}
