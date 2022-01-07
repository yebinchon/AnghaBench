
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;
typedef enum pdf_signature_error { ____Placeholder_pdf_signature_error } pdf_signature_error ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;

enum pdf_signature_error pdf_check_digest(fz_context *ctx, pdf_document *doc, pdf_obj *signature)
{
 fz_throw(ctx, FZ_ERROR_GENERIC, "No OpenSSL support.");
 return 0;
}
