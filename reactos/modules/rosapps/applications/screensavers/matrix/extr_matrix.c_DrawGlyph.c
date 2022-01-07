
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hdcBitmap; } ;
typedef TYPE_1__ MATRIX ;
typedef int HDC ;
typedef int GLYPH ;


 int BitBlt (int ,int,int,int,int,int ,int,int,int ) ;
 int GLYPH_HEIGHT ;
 int GLYPH_WIDTH ;
 int GlyphIntensity (int) ;
 int SRCCOPY ;

void DrawGlyph(MATRIX *matrix, HDC hdc, int xpos, int ypos, GLYPH glyph)
{
 int intensity = GlyphIntensity(glyph);
 int glyphidx = glyph & 0xff;

 BitBlt(hdc, xpos, ypos, GLYPH_WIDTH, GLYPH_HEIGHT, matrix->hdcBitmap,
  glyphidx * GLYPH_WIDTH, intensity * GLYPH_HEIGHT, SRCCOPY);
}
