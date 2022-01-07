
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int audio_output_t ;
struct TYPE_3__ {int buffers_played; int buffers_lost; } ;
typedef TYPE_1__ aout_owner_t ;


 TYPE_1__* aout_owner (int *) ;
 unsigned int atomic_exchange_explicit (int *,int ,int ) ;
 int memory_order_relaxed ;

void aout_DecGetResetStats(audio_output_t *aout, unsigned *restrict lost,
                           unsigned *restrict played)
{
    aout_owner_t *owner = aout_owner (aout);

    *lost = atomic_exchange_explicit(&owner->buffers_lost, 0,
                                     memory_order_relaxed);
    *played = atomic_exchange_explicit(&owner->buffers_played, 0,
                                       memory_order_relaxed);
}
