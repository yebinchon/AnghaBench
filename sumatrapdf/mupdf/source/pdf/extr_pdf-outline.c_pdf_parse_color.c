
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int pdf_is_array (int *,int *) ;
 float pdf_to_real (int *,int *) ;

__attribute__((used)) static int
pdf_parse_color(fz_context *ctx, pdf_obj *arr, float *color)
{
 int i;
 int n;
 pdf_obj *obj;

 if (!pdf_is_array(ctx, arr))
  return 0;
 n = pdf_array_len(ctx, arr);
 if (n < 3 || n > 4) {
  return 0;
 }
 for (i = 0; i < n; i++)
 {
  obj = pdf_array_get(ctx, arr, i);
  color[i] = pdf_to_real(ctx, obj);
 }
 return 1;
}
