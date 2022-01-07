
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int fz_color_burn_byte(int b, int s)
{
 b = 255 - b;
 if (b <= 0)
  return 255;
 else if (b >= s)
  return 0;
 else
  return 0xff - (0x1fe * b + s) / (s << 1);
}
