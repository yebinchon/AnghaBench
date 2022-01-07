
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_position_t ;
typedef int hb_font_t ;
typedef int hb_codepoint_t ;
typedef scalar_t__ hb_bool_t ;


 int HB_DIRECTION_LTR ;
 int HB_DIRECTION_TTB ;
 int hb_ot_math_get_glyph_assembly (int *,int ,int ,int ,int *,int *,int *) ;

__attribute__((used)) static hb_position_t
get_glyph_assembly_italics_correction (hb_font_t *font,
           hb_codepoint_t glyph,
           hb_bool_t horizontal)
{
  hb_position_t corr;
  hb_ot_math_get_glyph_assembly (font, glyph,
     horizontal ? HB_DIRECTION_LTR : HB_DIRECTION_TTB,
     0, ((void*)0), ((void*)0),
     &corr);
  return corr;
}
