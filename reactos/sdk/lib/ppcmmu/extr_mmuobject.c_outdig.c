
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outchar (int) ;

void outdig(int dig)
{
    if(dig < 10) outchar(dig + '0');
    else outchar(dig - 10 + 'A');
}
