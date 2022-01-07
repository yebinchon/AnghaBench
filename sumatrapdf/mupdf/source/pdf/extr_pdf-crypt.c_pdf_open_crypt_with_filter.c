
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_crypt_filter ;
typedef int pdf_crypt ;
typedef int fz_stream ;
typedef int fz_context ;


 int Identity ;
 int PDF_NAME (int ) ;
 int * fz_keep_stream (int *,int *) ;
 int pdf_name_eq (int *,int *,int ) ;
 int * pdf_open_crypt_imp (int *,int *,int *,int *,int,int) ;
 int pdf_parse_crypt_filter (int *,int *,int *,int *) ;

fz_stream *
pdf_open_crypt_with_filter(fz_context *ctx, fz_stream *chain, pdf_crypt *crypt, pdf_obj *name, int num, int gen)
{
 if (!pdf_name_eq(ctx, name, PDF_NAME(Identity)))
 {
  pdf_crypt_filter cf;
  pdf_parse_crypt_filter(ctx, &cf, crypt, name);
  return pdf_open_crypt_imp(ctx, chain, crypt, &cf, num, gen);
 }
 return fz_keep_stream(ctx, chain);
}
