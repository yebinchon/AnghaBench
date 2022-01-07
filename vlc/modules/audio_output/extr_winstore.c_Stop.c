
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int * stream; } ;
typedef TYPE_2__ aout_sys_t ;


 int EnterMTA () ;
 int LeaveMTA () ;
 int aout_stream_Stop (int *) ;
 int assert (int ) ;
 int vlc_object_delete (int *) ;

__attribute__((used)) static void Stop(audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;

    assert (sys->stream != ((void*)0));

    EnterMTA();
    aout_stream_Stop(sys->stream);
    LeaveMTA();

    vlc_object_delete(sys->stream);
    sys->stream = ((void*)0);
}
