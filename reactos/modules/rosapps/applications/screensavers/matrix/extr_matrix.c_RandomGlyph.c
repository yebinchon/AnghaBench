
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLYPH ;


 int GLYPH_REDRAW ;
 int NUM_GLYPHS ;
 int crc_rand () ;

GLYPH RandomGlyph(int intensity)
{
 return GLYPH_REDRAW | (intensity << 8) | (crc_rand() % NUM_GLYPHS);
}
