
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PacketWriteChar (int ) ;
 int * hex ;

int PacketWriteHexNumber(int hnum, int dig)
{
    int i;
    hnum <<= (8 - dig) * 4;
    for (i = 0; i < dig; i++)
    {
        PacketWriteChar(hex[(hnum >> 28) & 15]);
        hnum <<= 4;
    }
    return i;
}
