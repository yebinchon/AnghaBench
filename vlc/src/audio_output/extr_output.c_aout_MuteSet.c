
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* mute_set ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_8__ {int lock; } ;
typedef TYPE_2__ aout_owner_t ;


 TYPE_2__* aout_owner (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int aout_MuteSet (audio_output_t *aout, bool mute)
{
    aout_owner_t *owner = aout_owner(aout);
    int ret;

    vlc_mutex_lock(&owner->lock);
    ret = aout->mute_set(aout, mute);
    vlc_mutex_unlock(&owner->lock);
    return ret ? -1 : 0;
}
