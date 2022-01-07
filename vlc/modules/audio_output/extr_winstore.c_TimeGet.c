
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int stream; int * client; } ;
typedef TYPE_2__ aout_sys_t ;
typedef int HRESULT ;


 int EnterMTA () ;
 int LeaveMTA () ;
 scalar_t__ SUCCEEDED (int ) ;
 int VLC_EGENERIC ;
 int aout_stream_TimeGet (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int TimeGet(audio_output_t *aout, vlc_tick_t *restrict delay)
{
    aout_sys_t *sys = aout->sys;
    if( unlikely( sys->client == ((void*)0) ) )
        return VLC_EGENERIC;
    HRESULT hr;

    EnterMTA();
    hr = aout_stream_TimeGet(sys->stream, delay);
    LeaveMTA();

    return SUCCEEDED(hr) ? 0 : -1;
}
