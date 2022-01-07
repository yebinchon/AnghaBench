
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int* glyph; int blippos; } ;
typedef TYPE_1__ MATRIX_COLUMN ;
typedef int MATRIX ;
typedef int HDC ;
typedef int GLYPH ;


 int DrawGlyph (int *,int ,int,int,int) ;
 int GLYPH_HEIGHT ;
 int GLYPH_REDRAW ;
 int GlyphIntensity (int) ;
 int MAX_INTENSITY ;

void RedrawMatrixColumn(MATRIX_COLUMN *col, MATRIX *matrix, HDC hdc, int xpos)
{
 int y;


 for(y = 0; y < col->length; y++)
 {
  GLYPH glyph = col->glyph[y];


  if(glyph & GLYPH_REDRAW)
  {
   if((y == col->blippos+0 || y == col->blippos+1 ||
    y == col->blippos+8 || y == col->blippos+9) &&
    GlyphIntensity(glyph) >= MAX_INTENSITY-1)
    glyph |= MAX_INTENSITY << 8;

   DrawGlyph(matrix, hdc, xpos, y * GLYPH_HEIGHT, glyph);


   col->glyph[y] &= ~GLYPH_REDRAW;
  }
 }
}
