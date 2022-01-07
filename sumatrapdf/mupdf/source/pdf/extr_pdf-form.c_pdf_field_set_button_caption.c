
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int CA ;
 int MK ;
 int PDF_NAME (int ) ;
 scalar_t__ PDF_WIDGET_TYPE_BUTTON ;
 int pdf_dict_putl_drop (int *,int *,int *,int ,int ,int *) ;
 int pdf_field_mark_dirty (int *,int *) ;
 scalar_t__ pdf_field_type (int *,int *) ;
 int * pdf_new_text_string (int *,char const*) ;

void pdf_field_set_button_caption(fz_context *ctx, pdf_obj *field, const char *text)
{
 if (pdf_field_type(ctx, field) == PDF_WIDGET_TYPE_BUTTON)
 {
  pdf_obj *val = pdf_new_text_string(ctx, text);
  pdf_dict_putl_drop(ctx, field, val, PDF_NAME(MK), PDF_NAME(CA), ((void*)0));
  pdf_field_mark_dirty(ctx, field);
 }
}
