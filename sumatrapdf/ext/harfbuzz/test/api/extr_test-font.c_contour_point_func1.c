
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_position_t ;
typedef int hb_font_t ;
typedef int hb_codepoint_t ;
typedef int hb_bool_t ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static hb_bool_t
contour_point_func1 (hb_font_t *font, void *font_data,
       hb_codepoint_t glyph, unsigned int point_index,
       hb_position_t *x, hb_position_t *y,
       void *user_data)
{
  if (glyph == 1) {
    *x = 2;
    *y = 3;
    return TRUE;
  }
  if (glyph == 2) {
    *x = 4;
    *y = 5;
    return TRUE;
  }

  return FALSE;
}
