
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;



uint8* get_ptr(int x, int y, uint8* data, int width, int bpp)
{
  if (bpp == 8)
    return data + (y * width + x);
  else if (bpp == 16)
    return data + (y * width + x) * 2;
  else
    return 0;
}
