
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanupFreeType () ;
 int closeFont () ;
 int g_assert (int) ;
 int hb_face ;
 int hb_face_get_empty () ;
 int hb_font ;
 int hb_font_create (int ) ;
 int hb_font_get_empty () ;
 int hb_font_get_face (int ) ;
 int hb_ot_math_has_data (int ) ;
 int initFreeType () ;
 int openFont (char*) ;

__attribute__((used)) static void
test_has_data (void)
{
  initFreeType();

  openFont("fonts/MathTestFontNone.otf");
  g_assert(!hb_ot_math_has_data (hb_face));
  closeFont();

  openFont("fonts/MathTestFontEmpty.otf");
  g_assert(hb_ot_math_has_data (hb_face));
  closeFont();

  hb_face = hb_face_get_empty ();
  hb_font = hb_font_create (hb_face);
  g_assert(!hb_ot_math_has_data (hb_face));

  hb_font = hb_font_get_empty ();
  hb_face = hb_font_get_face (hb_font);
  g_assert(!hb_ot_math_has_data (hb_face));

  cleanupFreeType();
}
