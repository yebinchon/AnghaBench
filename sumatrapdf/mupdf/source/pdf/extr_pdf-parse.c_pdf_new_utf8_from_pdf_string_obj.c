
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 char* pdf_new_utf8_from_pdf_string (int *,char const*,size_t) ;
 char* pdf_to_string (int *,int *,size_t*) ;

char *
pdf_new_utf8_from_pdf_string_obj(fz_context *ctx, pdf_obj *src)
{
 const char *srcptr;
 size_t srclen;
 srcptr = pdf_to_string(ctx, src, &srclen);
 return pdf_new_utf8_from_pdf_string(ctx, srcptr, srclen);
}
