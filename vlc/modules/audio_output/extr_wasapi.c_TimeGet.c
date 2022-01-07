
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ aout_stream_t ;
struct TYPE_6__ {scalar_t__ rate; scalar_t__ written; int client; int started_state; } ;
typedef TYPE_2__ aout_stream_sys_t ;
typedef scalar_t__ UINT64 ;
typedef int IAudioClock ;
typedef int HRESULT ;


 int CLOCK_FREQ ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ GetQPC () ;
 int IAudioClient_GetService (int ,int *,void**) ;
 int IAudioClock_GetFrequency (int *,scalar_t__*) ;
 int IAudioClock_GetPosition (int *,scalar_t__*,scalar_t__*) ;
 int IAudioClock_Release (int *) ;
 int IID_IAudioClock ;
 scalar_t__ STARTED_STATE_OK ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ VLC_TICK_FROM_MSFTIME (scalar_t__) ;
 scalar_t__ atomic_load (int *) ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 int static_assert (int,char*) ;
 scalar_t__ vlc_tick_from_frac (scalar_t__,scalar_t__) ;

__attribute__((used)) static HRESULT TimeGet(aout_stream_t *s, vlc_tick_t *restrict delay)
{
    aout_stream_sys_t *sys = s->sys;
    void *pv;
    UINT64 pos, qpcpos, freq;
    HRESULT hr;

    if (atomic_load(&sys->started_state) != STARTED_STATE_OK)
        return E_FAIL;

    hr = IAudioClient_GetService(sys->client, &IID_IAudioClock, &pv);
    if (FAILED(hr))
    {
        msg_Err(s, "cannot get clock (error 0x%lX)", hr);
        return hr;
    }

    IAudioClock *clock = pv;

    hr = IAudioClock_GetPosition(clock, &pos, &qpcpos);
    if (SUCCEEDED(hr))
        hr = IAudioClock_GetFrequency(clock, &freq);
    IAudioClock_Release(clock);
    if (FAILED(hr))
    {
        msg_Err(s, "cannot get position (error 0x%lX)", hr);
        return hr;
    }

    vlc_tick_t written = vlc_tick_from_frac(sys->written, sys->rate);
    vlc_tick_t tick_pos = vlc_tick_from_frac(pos, freq);

    static_assert((10000000 % CLOCK_FREQ) == 0, "Frequency conversion broken");

    *delay = written - tick_pos
           - VLC_TICK_FROM_MSFTIME(GetQPC() - qpcpos);

    return hr;
}
