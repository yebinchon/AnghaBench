
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetPhysByte (int,char) ;

void outchar(char c)
{
    SetPhysByte(0x800003f8, c);
}
