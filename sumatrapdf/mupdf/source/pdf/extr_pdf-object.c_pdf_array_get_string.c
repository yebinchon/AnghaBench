
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int pdf_array_get (int *,int *,int) ;
 char const* pdf_to_string (int *,int ,size_t*) ;

const char *pdf_array_get_string(fz_context *ctx, pdf_obj *array, int index, size_t *sizep)
{
 return pdf_to_string(ctx, pdf_array_get(ctx, array, index), sizep);
}
