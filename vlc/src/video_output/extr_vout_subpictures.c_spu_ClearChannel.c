
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct spu_channel {int delay; scalar_t__ clock; } ;
struct TYPE_6__ {TYPE_2__* p; } ;
typedef TYPE_1__ spu_t ;
struct TYPE_7__ {int lock; } ;
typedef TYPE_2__ spu_private_t ;


 struct spu_channel* spu_GetChannel (TYPE_1__*,size_t) ;
 int spu_channel_Clear (TYPE_2__*,struct spu_channel*) ;
 int vlc_clock_Reset (scalar_t__) ;
 int vlc_clock_SetDelay (scalar_t__,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void spu_ClearChannel(spu_t *spu, size_t channel_id)
{
    spu_private_t *sys = spu->p;
    vlc_mutex_lock(&sys->lock);
    struct spu_channel *channel = spu_GetChannel(spu, channel_id);
    spu_channel_Clear(sys, channel);
    if (channel->clock)
    {
        vlc_clock_Reset(channel->clock);
        vlc_clock_SetDelay(channel->clock, channel->delay);
    }
    vlc_mutex_unlock(&sys->lock);
}
