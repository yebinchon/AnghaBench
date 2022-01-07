
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_font_t ;
typedef int hb_codepoint_t ;
typedef int hb_bool_t ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static hb_bool_t
glyph_func (hb_font_t *font, void *font_data,
     hb_codepoint_t unicode, hb_codepoint_t variant_selector,
     hb_codepoint_t *glyph,
     void *user_data)
{
  switch (unicode) {
  case 'T': *glyph = 1; return TRUE;
  case 'e': *glyph = 2; return TRUE;
  case 's': *glyph = 3; return TRUE;
  }
  return FALSE;
}
