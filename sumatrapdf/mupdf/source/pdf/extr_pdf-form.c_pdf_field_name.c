
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 char* get_field_name (int *,int *,int ) ;

char *pdf_field_name(fz_context *ctx, pdf_obj *field)
{
 return get_field_name(ctx, field, 0);
}
