
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_int; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;
typedef int audio_output_t ;
struct TYPE_7__ {int lock; int requested_stereo_mode; } ;
typedef TYPE_2__ aout_owner_t ;


 int AOUT_RESTART_STEREOMODE ;
 int aout_RestartRequest (int *,int ) ;
 TYPE_2__* aout_owner (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int StereoModeCallback (vlc_object_t *obj, const char *varname,
                               vlc_value_t oldval, vlc_value_t newval, void *data)
{
    audio_output_t *aout = (audio_output_t *)obj;
    (void)varname; (void)oldval; (void)newval; (void)data;

    aout_owner_t *owner = aout_owner (aout);
    vlc_mutex_lock (&owner->lock);
    owner->requested_stereo_mode = newval.i_int;
    vlc_mutex_unlock (&owner->lock);

    aout_RestartRequest (aout, AOUT_RESTART_STEREOMODE);
    return 0;
}
