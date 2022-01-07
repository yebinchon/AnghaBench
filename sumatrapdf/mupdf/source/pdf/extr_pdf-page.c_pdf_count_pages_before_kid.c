
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int Count ;
 int FZ_ERROR_GENERIC ;
 int Kids ;
 int PDF_NAME (int ) ;
 int Pages ;
 int Type ;
 int fz_throw (int *,int ,char*) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_is_int (int *,int *) ;
 scalar_t__ pdf_name_eq (int *,int *,int ) ;
 int pdf_to_int (int *,int *) ;
 int pdf_to_num (int *,int *) ;

__attribute__((used)) static int
pdf_count_pages_before_kid(fz_context *ctx, pdf_document *doc, pdf_obj *parent, int kid_num)
{
 pdf_obj *kids = pdf_dict_get(ctx, parent, PDF_NAME(Kids));
 int i, total = 0, len = pdf_array_len(ctx, kids);
 for (i = 0; i < len; i++)
 {
  pdf_obj *kid = pdf_array_get(ctx, kids, i);
  if (pdf_to_num(ctx, kid) == kid_num)
   return total;
  if (pdf_name_eq(ctx, pdf_dict_get(ctx, kid, PDF_NAME(Type)), PDF_NAME(Pages)))
  {
   pdf_obj *count = pdf_dict_get(ctx, kid, PDF_NAME(Count));
   int n = pdf_to_int(ctx, count);
   if (!pdf_is_int(ctx, count) || n < 0)
    fz_throw(ctx, FZ_ERROR_GENERIC, "illegal or missing count in pages tree");
   total += n;
  }
  else
   total++;
 }
 fz_throw(ctx, FZ_ERROR_GENERIC, "kid not found in parent's kids array");
}
