
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p; } ;
typedef TYPE_2__ vout_thread_t ;
typedef int vlc_clock_t ;
typedef int ssize_t ;
typedef enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;
struct TYPE_4__ {scalar_t__ spu; int dummy; } ;


 int VOUT_SPU_CHANNEL_INVALID ;
 int assert (int) ;
 int spu_RegisterChannelInternal (scalar_t__,int *,int*) ;

ssize_t vout_RegisterSubpictureChannelInternal(vout_thread_t *vout,
                                               vlc_clock_t *clock,
                                               enum vlc_vout_order *out_order)
{
    assert(!vout->p->dummy);
    ssize_t channel = VOUT_SPU_CHANNEL_INVALID;

    if (vout->p->spu)
        channel = spu_RegisterChannelInternal(vout->p->spu, clock, out_order);

    return channel;
}
