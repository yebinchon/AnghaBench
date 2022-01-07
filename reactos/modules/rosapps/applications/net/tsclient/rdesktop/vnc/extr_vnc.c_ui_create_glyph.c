
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vncBuffer ;
typedef size_t uint8 ;
typedef int HGLYPH ;


 size_t* reverseByte ;
 scalar_t__ rfbEndianTest ;
 int * vncNewBuffer (int,int,int) ;
 int vncSetPixel (int *,int,int,int) ;

HGLYPH
ui_create_glyph(int width, int height, uint8 * data)
{
 int x, y;
 vncBuffer *buf;

 buf = vncNewBuffer(width, height, 8);


 for (y = 0; y < height; y++)
 {
  for (x = 0; x < width; x++)
  {
   int byte = x / 8 + (y * ((width + 7) / 8));
   byte = rfbEndianTest ? reverseByte[data[byte]] : data[byte];
   byte = (byte >> (x & 7)) & 0x01;
   vncSetPixel(buf, x, y, byte ? 0x7f : 0x00);
  }
 }

 return (HGLYPH) buf;
}
