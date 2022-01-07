
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int BaseEncoding ;
 int Differences ;
 int Encoding ;
 int PDF_NAME (int ) ;
 int WinAnsiEncoding ;
 int pdf_array_push_int (int *,int *,int) ;
 int pdf_array_push_name (int *,int *,char const*) ;
 int pdf_dict_put (int *,int *,int ,int ) ;
 int * pdf_dict_put_array (int *,int *,int ,int) ;
 int * pdf_dict_put_dict (int *,int *,int ,int) ;

__attribute__((used)) static void
pdf_add_simple_font_encoding_imp(fz_context *ctx, pdf_document *doc, pdf_obj *font, const char *glyph_names[])
{
 pdf_obj *enc, *diff;
 int i, last;

 enc = pdf_dict_put_dict(ctx, font, PDF_NAME(Encoding), 2);
 pdf_dict_put(ctx, enc, PDF_NAME(BaseEncoding), PDF_NAME(WinAnsiEncoding));
 diff = pdf_dict_put_array(ctx, enc, PDF_NAME(Differences), 129);
 last = 0;
 for (i = 128; i < 256; ++i)
 {
  const char *glyph = glyph_names[i];
  if (glyph)
  {
   if (last != i-1)
    pdf_array_push_int(ctx, diff, i);
   last = i;
   pdf_array_push_name(ctx, diff, glyph);
  }
 }
}
