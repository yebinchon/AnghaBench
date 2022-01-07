
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int audio_output_t ;
struct TYPE_4__ {int request_delay; } ;
struct TYPE_5__ {TYPE_1__ sync; } ;
typedef TYPE_2__ aout_owner_t ;


 TYPE_2__* aout_owner (int *) ;

void aout_DecChangeDelay(audio_output_t *aout, vlc_tick_t delay)
{
    aout_owner_t *owner = aout_owner(aout);

    owner->sync.request_delay = delay;
}
