
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stbfile ;
struct TYPE_3__ {int range_high; int pending_ffs; int * output; scalar_t__ range_low; } ;
typedef TYPE_1__ stb_arith ;



void stb_arith_init_encode(stb_arith *a, stbfile *out)
{
   a->range_low = 0;
   a->range_high = 0xffffffff;
   a->pending_ffs = -1;
   a->output = out;
}
