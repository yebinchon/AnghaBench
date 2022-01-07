
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outdig (unsigned long) ;

void outnum(unsigned long num)
{
    int i;
    for( i = 0; i < 8; i++ )
    {
 outdig(num >> 28);
 num <<= 4;
    }
}
