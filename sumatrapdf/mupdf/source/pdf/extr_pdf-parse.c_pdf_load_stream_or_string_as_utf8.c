
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 scalar_t__ pdf_is_stream (int *,int *) ;
 char* pdf_new_utf8_from_pdf_stream_obj (int *,int *) ;
 char* pdf_new_utf8_from_pdf_string_obj (int *,int *) ;

char *
pdf_load_stream_or_string_as_utf8(fz_context *ctx, pdf_obj *src)
{
 if (pdf_is_stream(ctx, src))
  return pdf_new_utf8_from_pdf_stream_obj(ctx, src);
 return pdf_new_utf8_from_pdf_string_obj(ctx, src);
}
