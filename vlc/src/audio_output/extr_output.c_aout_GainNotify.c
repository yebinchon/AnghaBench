
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int audio_output_t ;
struct TYPE_3__ {int volume; int lock; } ;
typedef TYPE_1__ aout_owner_t ;


 TYPE_1__* aout_owner (int *) ;
 int aout_volume_SetVolume (int ,float) ;
 int vlc_mutex_assert (int *) ;

__attribute__((used)) static int aout_GainNotify (audio_output_t *aout, float gain)
{
    aout_owner_t *owner = aout_owner (aout);

    vlc_mutex_assert(&owner->lock);
    aout_volume_SetVolume (owner->volume, gain);

    return 0;
}
