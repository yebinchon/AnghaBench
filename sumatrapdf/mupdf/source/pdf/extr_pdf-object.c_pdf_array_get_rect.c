
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_rect ;
typedef int fz_context ;


 int pdf_array_get (int *,int *,int) ;
 int pdf_to_rect (int *,int ) ;

fz_rect pdf_array_get_rect(fz_context *ctx, pdf_obj *array, int index)
{
 return pdf_to_rect(ctx, pdf_array_get(ctx, array, index));
}
