
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fz_mul255 (int,int) ;
 int fz_screen_byte (int,int) ;

__attribute__((used)) static inline int fz_hard_light_byte(int b, int s)
{
 int s2 = s << 1;
 if (s <= 127)
  return fz_mul255(b, s2);
 else
  return fz_screen_byte(b, s2 - 255);
}
