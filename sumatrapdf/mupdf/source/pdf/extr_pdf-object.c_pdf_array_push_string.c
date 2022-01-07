
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int pdf_array_push_drop (int *,int *,int ) ;
 int pdf_new_string (int *,char const*,size_t) ;

void pdf_array_push_string(fz_context *ctx, pdf_obj *array, const char *x, size_t n)
{
 pdf_array_push_drop(ctx, array, pdf_new_string(ctx, x, n));
}
