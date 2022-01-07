
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static char *twobyte_memmem(const unsigned char *h, size_t k, const unsigned char *n)
{
 uint16_t nw = n[0]<<8 | n[1], hw = h[0]<<8 | h[1];
 for (h++, k--; k; k--, hw = hw<<8 | *++h)
  if (hw == nw) return (char *)h-1;
 return 0;
}
