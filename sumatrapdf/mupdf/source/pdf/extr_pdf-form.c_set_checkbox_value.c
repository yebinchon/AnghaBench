
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int update_checkbox_selector (int *,int *,int *,char const*) ;
 int update_field_value (int *,int *,int *,char const*) ;

__attribute__((used)) static int set_checkbox_value(fz_context *ctx, pdf_document *doc, pdf_obj *field, const char *val)
{
 update_checkbox_selector(ctx, doc, field, val);
 update_field_value(ctx, doc, field, val);
 return 1;
}
