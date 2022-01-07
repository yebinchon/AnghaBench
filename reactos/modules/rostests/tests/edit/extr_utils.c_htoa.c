
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;


 int * hexvals ;

VOID htoa (unsigned int val, char *buf)
{
   int i;
   buf += 7;

   for (i=0;i<8;i++)
       {
            *buf-- = hexvals[val & 0x0000000F];
            val = val >> 4;
       }
}
