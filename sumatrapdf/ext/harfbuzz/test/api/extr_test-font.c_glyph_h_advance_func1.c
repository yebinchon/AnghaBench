
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_position_t ;
typedef int hb_font_t ;
typedef int hb_codepoint_t ;



__attribute__((used)) static hb_position_t
glyph_h_advance_func1 (hb_font_t *font, void *font_data,
         hb_codepoint_t glyph,
         void *user_data)
{
  if (glyph == 1)
    return 8;

  return 0;
}
