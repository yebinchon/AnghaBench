
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int is_image_filter (int *) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 scalar_t__ pdf_is_array (int *,int *) ;
 scalar_t__ pdf_is_name (int *,int *) ;

__attribute__((used)) static int filter_implies_image(fz_context *ctx, pdf_obj *o)
{
 if (pdf_is_name(ctx, o))
  return is_image_filter(o);
 if (pdf_is_array(ctx, o))
 {
  int i, len;
  len = pdf_array_len(ctx, o);
  for (i = 0; i < len; i++)
   if (is_image_filter(pdf_array_get(ctx, o, i)))
    return 1;
 }
 return 0;
}
