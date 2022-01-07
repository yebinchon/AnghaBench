
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;



void set_pixel2(int x, int y, int pixel, uint8* data, int width, int bpp)
{
  if (bpp == 8)
    data[y * width + x] = pixel;
  else if (bpp == 16)
    ((uint16*)data)[y * width + x] = pixel;
}
