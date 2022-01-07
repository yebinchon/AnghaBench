
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;


 int* zbuf ;

void flip_bit ( int bit )
{
   int byteno = bit / 8;
   int bitno = bit % 8;
   uchar mask = 1 << bitno;


   zbuf[byteno] ^= mask;
}
