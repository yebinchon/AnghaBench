
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;



void copy_memb(uint8* d, uint8* s, int n)
{
  d = (d + n) - 1;
  s = (s + n) - 1;
  while (n & (~7))
  {
    *(d--) = *(s--);
    *(d--) = *(s--);
    *(d--) = *(s--);
    *(d--) = *(s--);
    *(d--) = *(s--);
    *(d--) = *(s--);
    *(d--) = *(s--);
    *(d--) = *(s--);
    n = n - 8;
  }
  while (n > 0)
  {
    *(d--) = *(s--);
    n--;
  }
}
