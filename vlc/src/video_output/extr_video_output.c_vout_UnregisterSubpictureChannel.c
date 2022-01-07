
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
 int spu_UnregisterChannel (int,size_t) ;

void vout_UnregisterSubpictureChannel( vout_thread_t *vout, size_t channel )
{
    assert(!vout->p->dummy);
    assert(vout->p->spu);
    spu_UnregisterChannel(vout->p->spu, channel);
}
