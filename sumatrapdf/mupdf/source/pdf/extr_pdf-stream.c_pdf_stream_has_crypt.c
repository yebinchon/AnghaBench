
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int Crypt ;
 int F ;
 int Filter ;
 int PDF_NAME (int ) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_geta (int *,int *,int ,int ) ;
 scalar_t__ pdf_is_array (int *,int *) ;
 scalar_t__ pdf_name_eq (int *,int *,int ) ;

__attribute__((used)) static int
pdf_stream_has_crypt(fz_context *ctx, pdf_obj *stm)
{
 pdf_obj *filters;
 pdf_obj *obj;
 int i;

 filters = pdf_dict_geta(ctx, stm, PDF_NAME(Filter), PDF_NAME(F));
 if (filters)
 {
  if (pdf_name_eq(ctx, filters, PDF_NAME(Crypt)))
   return 1;
  if (pdf_is_array(ctx, filters))
  {
   int n = pdf_array_len(ctx, filters);
   for (i = 0; i < n; i++)
   {
    obj = pdf_array_get(ctx, filters, i);
    if (pdf_name_eq(ctx, obj, PDF_NAME(Crypt)))
     return 1;
   }
  }
 }
 return 0;
}
