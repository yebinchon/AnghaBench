
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int fz_color_dodge_byte(int b, int s)
{
 s = 255 - s;
 if (b <= 0)
  return 0;
 else if (b >= s)
  return 255;
 else
  return (0x1fe * b + s) / (s << 1);
}
