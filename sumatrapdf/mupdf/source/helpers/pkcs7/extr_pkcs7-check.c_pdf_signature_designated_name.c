
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;

void pdf_signature_designated_name(fz_context *ctx, pdf_document *doc, pdf_obj *signature, char *buf, int buflen)
{
 fz_throw(ctx, FZ_ERROR_GENERIC, "No OpenSSL support.");
}
