
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLYPH ;


 int GLYPH_REDRAW ;

void RedrawBlip(GLYPH *glypharr, int blippos)
{
 glypharr[blippos+0] |= GLYPH_REDRAW;
 glypharr[blippos+1] |= GLYPH_REDRAW;
 glypharr[blippos+8] |= GLYPH_REDRAW;
 glypharr[blippos+9] |= GLYPH_REDRAW;
}
