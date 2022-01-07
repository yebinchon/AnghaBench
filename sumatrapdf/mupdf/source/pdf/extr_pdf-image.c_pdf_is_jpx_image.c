
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int Filter ;
 int JPXDecode ;
 int PDF_NAME (int ) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;
 scalar_t__ pdf_name_eq (int *,int *,int ) ;

int
pdf_is_jpx_image(fz_context *ctx, pdf_obj *dict)
{
 pdf_obj *filter;
 int i, n;

 filter = pdf_dict_get(ctx, dict, PDF_NAME(Filter));
 if (pdf_name_eq(ctx, filter, PDF_NAME(JPXDecode)))
  return 1;
 n = pdf_array_len(ctx, filter);
 for (i = 0; i < n; i++)
  if (pdf_name_eq(ctx, pdf_array_get(ctx, filter, i), PDF_NAME(JPXDecode)))
   return 1;
 return 0;
}
