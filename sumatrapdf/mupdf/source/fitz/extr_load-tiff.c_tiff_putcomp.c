
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void tiff_putcomp(unsigned char *line, int x, int bpc, int value)
{
 int maxval = (1 << bpc) - 1;

 switch (bpc)
 {
 case 1: line[x >> 3] &= ~(maxval << (7 - (x & 7))); break;
 case 2: line[x >> 2] &= ~(maxval << ((3 - (x & 3)) << 1)); break;
 case 4: line[x >> 1] &= ~(maxval << ((1 - (x & 1)) << 2)); break;
 }

 switch (bpc)
 {
 case 1: line[x >> 3] |= value << (7 - (x & 7)); break;
 case 2: line[x >> 2] |= value << ((3 - (x & 3)) << 1); break;
 case 4: line[x >> 1] |= value << ((1 - (x & 1)) << 2); break;
 case 8: line[x] = value; break;
 case 16: line[x << 1] = value >> 8; line[(x << 1) + 1] = value & 0xFF; break;
 }
}
