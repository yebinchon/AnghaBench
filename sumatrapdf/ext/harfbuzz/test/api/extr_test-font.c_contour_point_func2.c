
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_position_t ;
typedef int hb_font_t ;
typedef int hb_codepoint_t ;
typedef int hb_bool_t ;


 int TRUE ;
 int hb_font_get_glyph_contour_point (int ,int,unsigned int,int*,int*) ;
 int hb_font_get_parent (int *) ;

__attribute__((used)) static hb_bool_t
contour_point_func2 (hb_font_t *font, void *font_data,
       hb_codepoint_t glyph, unsigned int point_index,
       hb_position_t *x, hb_position_t *y,
       void *user_data)
{
  if (glyph == 1) {
    *x = 6;
    *y = 7;
    return TRUE;
  }

  return hb_font_get_glyph_contour_point (hb_font_get_parent (font),
       glyph, point_index, x, y);
}
