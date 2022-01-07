
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int range; unsigned int code; } ;
typedef TYPE_1__ stb_arith ;



unsigned int stb_arith_decode_value_log2(stb_arith *a, unsigned int totalfreq2)
{
   unsigned int freqsize = a->range >> totalfreq2;
   unsigned int z = a->code / freqsize;
   return z >= (1U<<totalfreq2) ? (1U<<totalfreq2)-1 : z;
}
