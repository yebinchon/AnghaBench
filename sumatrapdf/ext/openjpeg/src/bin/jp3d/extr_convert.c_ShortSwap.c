
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned short ShortSwap(unsigned short v)
{
    unsigned char c1, c2;
    c1 = v & 0xff;
    c2 = (v >> 8) & 0xff;
    return (c1 << 8) + c2;
}
