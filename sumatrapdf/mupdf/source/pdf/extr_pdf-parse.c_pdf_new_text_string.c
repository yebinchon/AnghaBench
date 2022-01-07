
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int * pdf_new_string (int *,char const*,int) ;
 int * pdf_new_text_string_utf16be (int *,char const*) ;

pdf_obj *
pdf_new_text_string(fz_context *ctx, const char *s)
{
 int i = 0;
 while (s[i] != 0)
 {
  if (((unsigned char)s[i]) >= 128)
   return pdf_new_text_string_utf16be(ctx, s);
  ++i;
 }
 return pdf_new_string(ctx, s, i);
}
