
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int pdf_signature_designated_name (int *,int *,int *,char*,int) ;
 int pdf_to_num (int *,int *) ;
 int printf (char*,int,char*) ;

__attribute__((used)) static void list_signature(fz_context *ctx, pdf_document *doc, pdf_obj *signature)
{
 char name[500];
 pdf_signature_designated_name(ctx, doc, signature, name, sizeof name);
 printf("%5d: signature name: %s\n", pdf_to_num(ctx, signature), name);
}
