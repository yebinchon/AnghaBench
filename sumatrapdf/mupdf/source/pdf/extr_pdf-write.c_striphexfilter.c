
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int ASCIIHexDecode ;
 int DecodeParms ;
 int Filter ;
 int * PDF_NAME (int ) ;
 int pdf_array_delete (int *,int *,int ) ;
 int * pdf_array_get (int *,int *,int ) ;
 int pdf_array_len (int *,int *) ;
 int pdf_dict_del (int *,int *,int *) ;
 int * pdf_dict_get (int *,int *,int *) ;
 int pdf_dict_put (int *,int *,int *,int *) ;
 scalar_t__ pdf_is_array (int *,int *) ;

__attribute__((used)) static int striphexfilter(fz_context *ctx, pdf_document *doc, pdf_obj *dict)
{
 pdf_obj *f, *dp;
 int is_hex = 0;

 f = pdf_dict_get(ctx, dict, PDF_NAME(Filter));
 dp = pdf_dict_get(ctx, dict, PDF_NAME(DecodeParms));

 if (pdf_is_array(ctx, f))
 {

  if (pdf_array_get(ctx, f, 0) == PDF_NAME(ASCIIHexDecode))
  {
   is_hex = 1;
   pdf_array_delete(ctx, f, 0);
   if (pdf_is_array(ctx, dp))
    pdf_array_delete(ctx, dp, 0);
  }

  if (pdf_array_len(ctx, f) == 1)
  {
   f = pdf_array_get(ctx, f, 0);
   pdf_dict_put(ctx, dict, PDF_NAME(Filter), f);
   if (dp)
   {
    dp = pdf_array_get(ctx, dp, 0);
    pdf_dict_put(ctx, dict, PDF_NAME(DecodeParms), dp);
   }
  }

  else if (pdf_array_len(ctx, f) == 0)
  {
   pdf_dict_del(ctx, dict, PDF_NAME(Filter));
   pdf_dict_del(ctx, dict, PDF_NAME(DecodeParms));
  }
 }
 else if (f == PDF_NAME(ASCIIHexDecode))
 {
  is_hex = 1;
  pdf_dict_del(ctx, dict, PDF_NAME(Filter));
  pdf_dict_del(ctx, dict, PDF_NAME(DecodeParms));
 }

 return is_hex;
}
