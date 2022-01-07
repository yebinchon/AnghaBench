
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_4__ {int spu; int dummy; } ;


 int assert (int) ;
 int spu_SetClockRate (int,size_t,float) ;

void vout_ChangeSpuRate(vout_thread_t *vout, size_t channel_id, float rate)
{
    assert(!vout->p->dummy);
    assert(vout->p->spu);
    spu_SetClockRate(vout->p->spu, channel_id, rate);
}
