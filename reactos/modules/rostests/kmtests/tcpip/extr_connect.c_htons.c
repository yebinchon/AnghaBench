
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;



USHORT
htons(USHORT x)
{
    return ((x & 0x00FF) << 8) | ((x & 0xFF00) >> 8);
}
