
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int device_select; int flush; int pause; int play; int mute_set; int volume_set; int time_get; int stop; int start; TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_7__ {int * client; int * stream; } ;
typedef TYPE_2__ aout_sys_t ;


 int DeviceSelect ;
 int Flush ;
 int MuteSet ;
 int Pause ;
 int Play ;
 int Start ;
 int Stop ;
 int TimeGet ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VolumeSet ;
 TYPE_2__* malloc (int) ;
 int msg_Dbg (TYPE_1__*,char*,int *) ;
 scalar_t__ unlikely (int ) ;
 int * var_CreateGetAddress (int ,char*) ;
 int vlc_object_parent (TYPE_1__*) ;

__attribute__((used)) static int Open(vlc_object_t *obj)
{
    audio_output_t *aout = (audio_output_t *)obj;

    aout_sys_t *sys = malloc(sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    aout->sys = sys;
    sys->stream = ((void*)0);
    sys->client = var_CreateGetAddress( vlc_object_parent(aout), "winstore-client" );
    if (sys->client != ((void*)0))
        msg_Dbg( aout, "Reusing previous client: %p", sys->client );
    aout->start = Start;
    aout->stop = Stop;
    aout->time_get = TimeGet;
    aout->volume_set = VolumeSet;
    aout->mute_set = MuteSet;
    aout->play = Play;
    aout->pause = Pause;
    aout->flush = Flush;
    aout->device_select = DeviceSelect;
    return VLC_SUCCESS;
}
