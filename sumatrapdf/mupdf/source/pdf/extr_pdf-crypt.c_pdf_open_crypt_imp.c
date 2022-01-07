
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ method; } ;
typedef TYPE_1__ pdf_crypt_filter ;
typedef int pdf_crypt ;
typedef int fz_stream ;
typedef int fz_context ;


 scalar_t__ PDF_CRYPT_AESV2 ;
 scalar_t__ PDF_CRYPT_AESV3 ;
 scalar_t__ PDF_CRYPT_RC4 ;
 int * fz_keep_stream (int *,int *) ;
 int * fz_open_aesd (int *,int *,unsigned char*,int) ;
 int * fz_open_arc4 (int *,int *,unsigned char*,int) ;
 int pdf_compute_object_key (int *,TYPE_1__*,int,int,unsigned char*,int) ;

__attribute__((used)) static fz_stream *
pdf_open_crypt_imp(fz_context *ctx, fz_stream *chain, pdf_crypt *crypt, pdf_crypt_filter *stmf, int num, int gen)
{
 unsigned char key[32];
 int len;

 len = pdf_compute_object_key(crypt, stmf, num, gen, key, 32);

 if (stmf->method == PDF_CRYPT_RC4)
  return fz_open_arc4(ctx, chain, key, len);

 if (stmf->method == PDF_CRYPT_AESV2 || stmf->method == PDF_CRYPT_AESV3)
  return fz_open_aesd(ctx, chain, key, len);

 return fz_keep_stream(ctx, chain);
}
