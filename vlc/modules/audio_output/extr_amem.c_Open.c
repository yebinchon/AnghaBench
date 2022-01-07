
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int mute_set; int volume_set; int * drain; int flush; int pause; int play; int time_get; int stop; int start; TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int volume; int mute; int ready; int * set_volume; void* drain; int * play; int lock; void* flush; void* resume; void* pause; void* channels; void* rate; void* opaque; int * cleanup; void* setup_opaque; int * setup; } ;
typedef TYPE_2__ aout_sys_t ;


 int * Drain ;
 int Flush ;
 int MuteSet ;
 int Pause ;
 int Play ;
 int SoftMuteSet ;
 int SoftVolumeSet ;
 int Start ;
 int Stop ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VolumeSet ;
 int aout_TimeGetDefault ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 void* var_InheritAddress (int *,char*) ;
 void* var_InheritInteger (int *,char*) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static int Open (vlc_object_t *obj)
{
    audio_output_t *aout = (audio_output_t *)obj;
    aout_sys_t *sys = malloc (sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    void *opaque = var_InheritAddress (obj, "amem-data");
    sys->setup = var_InheritAddress (obj, "amem-setup");
    if (sys->setup != ((void*)0))
    {
        sys->cleanup = var_InheritAddress (obj, "amem-cleanup");
        sys->setup_opaque = opaque;
    }
    else
    {
        sys->cleanup = ((void*)0);
        sys->opaque = opaque;
        sys->rate = var_InheritInteger (obj, "amem-rate");
        sys->channels = var_InheritInteger (obj, "amem-channels");
    }

    sys->play = var_InheritAddress (obj, "amem-play");
    sys->pause = var_InheritAddress (obj, "amem-pause");
    sys->resume = var_InheritAddress (obj, "amem-resume");
    sys->flush = var_InheritAddress (obj, "amem-flush");
    sys->drain = var_InheritAddress (obj, "amem-drain");
    sys->set_volume = var_InheritAddress (obj, "amem-set-volume");
    sys->volume = 1.;
    sys->mute = 0;
    sys->ready = 0;
    vlc_mutex_init(&sys->lock);

    if (sys->play == ((void*)0))
    {
        free (sys);
        return VLC_EGENERIC;
    }

    aout->sys = sys;
    aout->start = Start;
    aout->stop = Stop;
    aout->time_get = aout_TimeGetDefault;
    aout->play = Play;
    aout->pause = Pause;
    aout->flush = Flush;
    aout->drain = sys->drain ? Drain : ((void*)0);
    if (sys->set_volume != ((void*)0))
    {
        aout->volume_set = VolumeSet;
        aout->mute_set = MuteSet;
    }
    else
    {
        aout->volume_set = SoftVolumeSet;
        aout->mute_set = SoftMuteSet;
    }
    return VLC_SUCCESS;
}
