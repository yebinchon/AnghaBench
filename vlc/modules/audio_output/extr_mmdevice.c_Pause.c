
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int stream; } ;
typedef TYPE_2__ aout_sys_t ;
typedef int HRESULT ;


 int EnterMTA () ;
 int LeaveMTA () ;
 int aout_stream_Pause (int ,int) ;
 int vlc_FromHR (TYPE_1__*,int ) ;

__attribute__((used)) static void Pause(audio_output_t *aout, bool paused, vlc_tick_t date)
{
    aout_sys_t *sys = aout->sys;
    HRESULT hr;

    EnterMTA();
    hr = aout_stream_Pause(sys->stream, paused);
    LeaveMTA();

    vlc_FromHR(aout, hr);
    (void) date;
}
