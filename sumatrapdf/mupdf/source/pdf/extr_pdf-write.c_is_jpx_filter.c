
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int JPXDecode ;
 int * PDF_NAME (int ) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 scalar_t__ pdf_is_array (int *,int *) ;

__attribute__((used)) static int is_jpx_filter(fz_context *ctx, pdf_obj *o)
{
 if (o == PDF_NAME(JPXDecode))
  return 1;
 if (pdf_is_array(ctx, o))
 {
  int i, len;
  len = pdf_array_len(ctx, o);
  for (i = 0; i < len; i++)
   if (pdf_array_get(ctx, o, i) == PDF_NAME(JPXDecode))
    return 1;
 }
 return 0;
}
