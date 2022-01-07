
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* glyph; int length; } ;
typedef TYPE_1__ MATRIX_COLUMN ;


 int GLYPH_REDRAW ;
 int GlyphIntensity (int) ;
 int MAX_INTENSITY ;
 int NUM_GLYPHS ;
 int crc_rand () ;

void RandomMatrixColumn(MATRIX_COLUMN *col)
{
 int i, y;

 for(i = 1, y = 0; i < 16; i++)
 {

  while(GlyphIntensity(col->glyph[y]) < MAX_INTENSITY-1 && y < col->length)
   y++;

  if(y >= col->length)
   break;

  col->glyph[y] = (col->glyph[y] & 0xff00) | (crc_rand() % NUM_GLYPHS);
  col->glyph[y] |= GLYPH_REDRAW;

  y += crc_rand() % 10;
 }
}
