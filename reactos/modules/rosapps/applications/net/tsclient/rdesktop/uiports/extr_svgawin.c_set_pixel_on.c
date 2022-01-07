
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;



void set_pixel_on(uint8* data, int x, int y, int width, int bpp, int pixel)
{
  if (bpp == 8)
  {
    data[y * width + x] = pixel;
  }
}
