
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PUCHAR ;
typedef int LONG ;
typedef int BOOLEAN ;


 int * cLogo ;
 scalar_t__ pScreenBufferHercules ;

void PrintLogoHercules(BOOLEAN bShow)
{
    LONG x,y;
    PUCHAR p;

    p=(PUCHAR)pScreenBufferHercules;
    for(y=0;y<24;y++)
    {
        for(x=0;x<8;x++)
        {
         p[ ( 0x2000* (( y + 8 ) & 0x3) )+
          ( 90* ( (y + 8 ) >> 2) )+
          (81+x)] = cLogo[y*8+x];
        }
    }
}
