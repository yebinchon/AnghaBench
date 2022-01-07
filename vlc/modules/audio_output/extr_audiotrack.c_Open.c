
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {int mute_set; int volume_set; int device_select; int time_get; int flush; int pause; int play; int stop; int start; TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_8__ {float volume; int mute; int thread_cond; int aout_cond; int lock; int at_dev; } ;
typedef TYPE_2__ aout_sys_t ;
struct TYPE_9__ {int name; scalar_t__ id; } ;
typedef int JNIEnv ;


 int AT_DEV_DEFAULT ;
 int DeviceSelect ;
 int Flush ;
 int * GET_ENV () ;
 int InitJNIFields (TYPE_1__*,int *) ;
 int MuteSet ;
 int Pause ;
 int Play ;
 int Start ;
 int Stop ;
 int TimeGet ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VolumeSet ;
 int aout_HotplugReport (TYPE_1__*,scalar_t__,int ) ;
 TYPE_4__* at_devs ;
 TYPE_2__* calloc (int,int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static int
Open( vlc_object_t *obj )
{
    audio_output_t *p_aout = (audio_output_t *) obj;
    aout_sys_t *p_sys;
    JNIEnv *env = GET_ENV();

    if( !env || !InitJNIFields( p_aout, env ) )
        return VLC_EGENERIC;

    p_sys = calloc( 1, sizeof (aout_sys_t) );

    if( unlikely( p_sys == ((void*)0) ) )
        return VLC_ENOMEM;

    p_sys->at_dev = AT_DEV_DEFAULT;
    vlc_mutex_init(&p_sys->lock);
    vlc_cond_init(&p_sys->aout_cond);
    vlc_cond_init(&p_sys->thread_cond);

    p_aout->sys = p_sys;
    p_aout->start = Start;
    p_aout->stop = Stop;
    p_aout->play = Play;
    p_aout->pause = Pause;
    p_aout->flush = Flush;
    p_aout->time_get = TimeGet;
    p_aout->device_select = DeviceSelect;

    for( unsigned int i = 0; at_devs[i].id; ++i )
        aout_HotplugReport(p_aout, at_devs[i].id, at_devs[i].name);

    p_aout->volume_set = VolumeSet;
    p_aout->mute_set = MuteSet;
    p_sys->volume = 1.0f;
    p_sys->mute = 0;

    return VLC_SUCCESS;
}
