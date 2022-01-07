
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int range; unsigned int code; } ;
typedef TYPE_1__ stb_arith ;


 int stb__renorm_decoder (TYPE_1__*) ;

void stb_arith_decode_advance_log2(stb_arith *a, unsigned int totalfreq2, unsigned int freq, unsigned int cumfreq)
{
   unsigned int freqsize = a->range >> totalfreq2;
   a->code -= freqsize * cumfreq;
   a->range = freqsize * freq;
   while (a->range < 0x1000000)
      stb__renorm_decoder(a);
}
