
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int pdf_objcmp (int *,int ,int *) ;

int
pdf_array_find(fz_context *ctx, pdf_obj *arr, pdf_obj *obj)
{
 int i, len;

 len = pdf_array_len(ctx, arr);
 for (i = 0; i < len; i++)
  if (!pdf_objcmp(ctx, pdf_array_get(ctx, arr, i), obj))
   return i;

 return -1;
}
