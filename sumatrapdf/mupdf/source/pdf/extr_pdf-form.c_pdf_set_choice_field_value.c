
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_widget ;
typedef int fz_context ;


 int pdf_set_text_field_value (int *,int *,char const*) ;

int pdf_set_choice_field_value(fz_context *ctx, pdf_widget *widget, const char *new_value)
{

 return pdf_set_text_field_value(ctx, widget, new_value);
}
