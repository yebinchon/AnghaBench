
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int getbit(const unsigned char *buf, int x)
{
 return ( buf[x >> 3] >> ( 7 - (x & 7) ) ) & 1;
}
