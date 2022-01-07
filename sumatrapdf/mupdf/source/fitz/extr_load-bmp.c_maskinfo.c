
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void maskinfo(unsigned int mask, int *shift, int *bits)
{
 *bits = 0;
 *shift = 0;
 if (mask) {
  while ((mask & 1) == 0) {
   *shift += 1;
   mask >>= 1;
  }
  while ((mask & 1) == 1) {
   *bits += 1;
   mask >>= 1;
  }
 }
}
