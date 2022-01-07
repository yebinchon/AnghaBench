
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int range; unsigned int code; } ;
typedef TYPE_1__ stb_arith ;



unsigned int stb_arith_decode_value(stb_arith *a, unsigned int totalfreq)
{
   unsigned int freqsize = a->range / totalfreq;
   unsigned int z = a->code / freqsize;
   return z >= totalfreq ? totalfreq-1 : z;
}
