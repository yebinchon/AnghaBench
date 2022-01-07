
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct spu_channel {int delay; int clock; } ;
struct TYPE_5__ {TYPE_2__* p; } ;
typedef TYPE_1__ spu_t ;
struct TYPE_6__ {int lock; } ;
typedef TYPE_2__ spu_private_t ;


 int assert (int ) ;
 struct spu_channel* spu_GetChannel (TYPE_1__*,size_t) ;
 int vlc_clock_SetDelay (int ,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void spu_SetClockDelay(spu_t *spu, size_t channel_id, vlc_tick_t delay)
{
    spu_private_t *sys = spu->p;

    vlc_mutex_lock(&sys->lock);
    struct spu_channel *channel = spu_GetChannel(spu, channel_id);
    assert(channel->clock);
    vlc_clock_SetDelay(channel->clock, delay);
    channel->delay = delay;
    vlc_mutex_unlock(&sys->lock);
}
