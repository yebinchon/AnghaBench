
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_codepoint_t ;


 int cleanupFreeType () ;
 int closeFont () ;
 int g_assert (int) ;
 int hb_face ;
 int hb_font ;
 int hb_font_get_glyph_from_name (int ,char*,int,int *) ;
 int hb_ot_math_is_glyph_extended_shape (int ,int ) ;
 int initFreeType () ;
 int openFont (char*) ;

__attribute__((used)) static void
test_is_glyph_extended_shape (void)
{
  hb_codepoint_t glyph;
  initFreeType();

  openFont("fonts/MathTestFontEmpty.otf");
  g_assert(hb_font_get_glyph_from_name (hb_font, "space", -1, &glyph));
  g_assert(!hb_ot_math_is_glyph_extended_shape (hb_face, glyph));
  closeFont();

  openFont("fonts/MathTestFontPartial1.otf");
  g_assert(hb_font_get_glyph_from_name (hb_font, "space", -1, &glyph));
  g_assert(!hb_ot_math_is_glyph_extended_shape (hb_face, glyph));
  closeFont();

  openFont("fonts/MathTestFontFull.otf");
  g_assert(hb_font_get_glyph_from_name (hb_font, "G", -1, &glyph));
  g_assert(!hb_ot_math_is_glyph_extended_shape (hb_face, glyph));
  g_assert(hb_font_get_glyph_from_name (hb_font, "H", -1, &glyph));
  g_assert(hb_ot_math_is_glyph_extended_shape (hb_face, glyph));
  closeFont();

  cleanupFreeType();
}
