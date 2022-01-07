
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;



int get_pixel2(int x, int y, uint8* data, int width, int bpp)
{
  if (bpp == 8)
    return data[y * width + x];
  else if (bpp == 16)
    return ((uint16*)data)[y * width + x];
  else
    return 0;
}
