
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int pdf_array_get (int *,int *,int) ;
 float pdf_to_real (int *,int ) ;

float pdf_array_get_real(fz_context *ctx, pdf_obj *array, int index)
{
 return pdf_to_real(ctx, pdf_array_get(ctx, array, index));
}
