
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int audio_volume_t ;
struct TYPE_4__ {int * module; int object; } ;
typedef TYPE_1__ aout_volume_t ;


 int ReplayGainCallback ;
 int module_unneed (int *,int *) ;
 int var_DelCallback (int ,char*,int ,TYPE_1__*) ;
 int vlc_object_delete (int *) ;
 int vlc_object_parent (int *) ;

void aout_volume_Delete(aout_volume_t *vol)
{
    if (vol == ((void*)0))
        return;

    audio_volume_t *obj = &vol->object;

    if (vol->module != ((void*)0))
        module_unneed(obj, vol->module);
    var_DelCallback(vlc_object_parent(obj), "audio-replay-gain-mode",
                    ReplayGainCallback, vol);
    vlc_object_delete(obj);
}
