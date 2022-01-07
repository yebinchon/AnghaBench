
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {float volume; int (* set_volume ) (int ,float,int ) ;int lock; int mute; int opaque; scalar_t__ ready; } ;
typedef TYPE_2__ aout_sys_t ;


 int stub1 (int ,float,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int VolumeSet (audio_output_t *aout, float vol)
{
    aout_sys_t *sys = aout->sys;
    int val;

    sys->volume = vol;

    vlc_mutex_lock(&sys->lock);
    if (sys->ready)
        val = sys->set_volume(sys->opaque, vol, sys->mute);
    else
        val = 0;
    vlc_mutex_unlock(&sys->lock);

    return val ? -1 : 0;
}
