
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int * device_select; int * mute_set; int * volume_set; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_12__ {int lock; int module; } ;
typedef TYPE_2__ aout_owner_t ;


 int FilterCallback ;
 int StereoModeCallback ;
 int ViewpointCallback ;
 int aout_Release (TYPE_1__*) ;
 TYPE_2__* aout_owner (TYPE_1__*) ;
 int module_unneed (TYPE_1__*,int ) ;
 int var_Copy ;
 int var_CopyDevice ;
 int var_DelCallback (TYPE_1__*,char*,int ,int *) ;
 int var_SetFloat (TYPE_1__*,char*,float) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int * vlc_object_parent (TYPE_1__*) ;

void aout_Destroy (audio_output_t *aout)
{
    aout_owner_t *owner = aout_owner (aout);

    vlc_mutex_lock(&owner->lock);
    module_unneed (aout, owner->module);

    aout->volume_set = ((void*)0);
    aout->mute_set = ((void*)0);
    aout->device_select = ((void*)0);
    vlc_mutex_unlock(&owner->lock);

    var_DelCallback (aout, "viewpoint", ViewpointCallback, ((void*)0));
    var_DelCallback (aout, "audio-filter", FilterCallback, ((void*)0));
    var_DelCallback(aout, "device", var_CopyDevice, vlc_object_parent(aout));
    var_DelCallback(aout, "mute", var_Copy, vlc_object_parent(aout));
    var_SetFloat (aout, "volume", -1.f);
    var_DelCallback(aout, "volume", var_Copy, vlc_object_parent(aout));
    var_DelCallback (aout, "stereo-mode", StereoModeCallback, ((void*)0));
    aout_Release(aout);
}
