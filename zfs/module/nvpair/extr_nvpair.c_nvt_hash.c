
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
nvt_hash(const char *p)
{
 uint32_t g, hval = 0;

 while (*p) {
  hval = (hval << 4) + *p++;
  if ((g = (hval & 0xf0000000)) != 0)
   hval ^= g >> 24;
  hval &= ~g;
 }
 return (hval);
}
