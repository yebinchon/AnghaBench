
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_context ;
typedef enum pdf_signature_error { ____Placeholder_pdf_signature_error } pdf_signature_error ;


 int PDF_SIGNATURE_ERROR_UNKNOWN ;

enum pdf_signature_error
pkcs7_openssl_check_digest(fz_context *ctx, fz_stream *stm, char *sig, int sig_len)
{
 return PDF_SIGNATURE_ERROR_UNKNOWN;
}
