
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
line_is_blank(unsigned char *dst, const unsigned char *sp, int w)
{
 int zero = 0;

 while (w-- > 0)
 {
  zero |= (*dst++ = *sp++);
  zero |= (*dst++ = *sp++);
  zero |= (*dst++ = *sp++);
 }

 return zero == 0;
}
