
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLYPH ;


 int GLYPH_REDRAW ;
 int GlyphIntensity (int) ;

GLYPH DarkenGlyph(GLYPH glyph)
{
 int intensity = GlyphIntensity(glyph);

 if(intensity > 0)
  return GLYPH_REDRAW | ((intensity - 1) << 8) | (glyph & 0x00FF);
 else
  return glyph;
}
