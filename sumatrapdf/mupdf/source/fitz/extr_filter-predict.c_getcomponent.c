
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int getcomponent(unsigned char *line, int x, int bpc)
{
 switch (bpc)
 {
 case 1: return (line[x >> 3] >> ( 7 - (x & 7) ) ) & 1;
 case 2: return (line[x >> 2] >> ( ( 3 - (x & 3) ) << 1 ) ) & 3;
 case 4: return (line[x >> 1] >> ( ( 1 - (x & 1) ) << 2 ) ) & 15;
 case 8: return line[x];
 case 16: return (line[x<<1]<<8)+line[(x<<1)+1];
 }
 return 0;
}
