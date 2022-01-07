
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void _swab (char * src, char * dst, int sizeToCopy)

{
 if (sizeToCopy > 1)
  {
    sizeToCopy = (unsigned)sizeToCopy >> 1;

    while (sizeToCopy--) {
      char s0 = src[0];
      char s1 = src[1];
      *dst++ = s1;
      *dst++ = s0;
      src = src + 2;
    }
  }
}
