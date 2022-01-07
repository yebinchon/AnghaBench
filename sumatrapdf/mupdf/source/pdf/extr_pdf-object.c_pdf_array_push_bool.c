
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int PDF_FALSE ;
 int PDF_TRUE ;
 int pdf_array_push (int *,int *,int ) ;

void pdf_array_push_bool(fz_context *ctx, pdf_obj *array, int x)
{
 pdf_array_push(ctx, array, x ? PDF_TRUE : PDF_FALSE);
}
