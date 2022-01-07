
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 char* pdf_sprint_encrypted_obj (int *,char*,int,int*,int *,int,int,int *,int ,int ) ;

char *
pdf_sprint_obj(fz_context *ctx, char *buf, int cap, int *len, pdf_obj *obj, int tight, int ascii)
{
 return pdf_sprint_encrypted_obj(ctx, buf, cap, len, obj, tight, ascii, ((void*)0), 0, 0);
}
