
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_font ;
typedef int fz_context ;


 int FirstChar ;
 int LastChar ;
 int PDF_NAME (int ) ;
 int Widths ;
 int fz_advance_glyph (int *,int *,int,int ) ;
 int fz_encode_character_by_glyph_name (int *,int *,char const* const) ;
 int pdf_array_push_int (int *,int *,int) ;
 int pdf_dict_put_drop (int *,int *,int ,int *) ;
 int pdf_dict_put_int (int *,int *,int ,int) ;
 int * pdf_new_array (int *,int *,int) ;

__attribute__((used)) static void
pdf_add_simple_font_widths(fz_context *ctx, pdf_document *doc, pdf_obj *fobj, fz_font *font, const char * const encoding[])
{
 int width_table[256];
 pdf_obj *widths;
 int i, first, last;

 first = 0;
 last = 0;

 for (i = 0; i < 256; ++i)
 {
  int glyph = 0;
  if (encoding[i])
  {
   glyph = fz_encode_character_by_glyph_name(ctx, font, encoding[i]);
  }
  if (glyph > 0)
  {
   if (!first)
    first = i;
   last = i;
   width_table[i] = fz_advance_glyph(ctx, font, glyph, 0) * 1000;
  }
  else
   width_table[i] = 0;
 }

 widths = pdf_new_array(ctx, doc, last - first + 1);
 pdf_dict_put_drop(ctx, fobj, PDF_NAME(Widths), widths);
 for (i = first; i <= last; ++i)
  pdf_array_push_int(ctx, widths, width_table[i]);
 pdf_dict_put_int(ctx, fobj, PDF_NAME(FirstChar), first);
 pdf_dict_put_int(ctx, fobj, PDF_NAME(LastChar), last);
}
