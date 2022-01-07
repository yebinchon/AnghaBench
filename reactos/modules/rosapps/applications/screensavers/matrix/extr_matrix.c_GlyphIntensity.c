
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLYPH ;



int GlyphIntensity(GLYPH glyph)
{
 return (int)((glyph & 0x7f00) >> 8);
}
