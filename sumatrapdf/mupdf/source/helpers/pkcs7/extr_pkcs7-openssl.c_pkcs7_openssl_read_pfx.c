
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_pkcs7_signer ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;

pdf_pkcs7_signer *
pkcs7_openssl_read_pfx(fz_context *ctx, const char *pfile, const char *pw)
{
 fz_throw(ctx, FZ_ERROR_GENERIC, "No OpenSSL support.");
}
