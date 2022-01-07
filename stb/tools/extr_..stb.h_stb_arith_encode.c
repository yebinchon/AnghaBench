
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int range_high; unsigned int range_low; } ;
typedef TYPE_1__ stb_arith ;


 int stb__arith_carry (TYPE_1__*) ;
 int stb__renorm_encoder (TYPE_1__*) ;

void stb_arith_encode(stb_arith *a, unsigned int totalfreq, unsigned int freq, unsigned int cumfreq)
{
   unsigned int range = a->range_high - a->range_low;
   unsigned int old = a->range_low;
   range /= totalfreq;
   a->range_low += range * cumfreq;
   a->range_high = a->range_low + range*freq;
   if (a->range_low < old)
      stb__arith_carry(a);
   while (a->range_high - a->range_low < 0x1000000)
      stb__renorm_encoder(a);
}
