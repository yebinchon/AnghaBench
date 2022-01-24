#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ aout_stream_t ;
struct TYPE_6__ {scalar_t__ rate; scalar_t__ written; int /*<<< orphan*/  client; int /*<<< orphan*/  started_state; } ;
typedef  TYPE_2__ aout_stream_sys_t ;
typedef  scalar_t__ UINT64 ;
typedef  int /*<<< orphan*/  IAudioClock ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int CLOCK_FREQ ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAudioClock ; 
 scalar_t__ STARTED_STATE_OK ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC12(aout_stream_t *s, vlc_tick_t *restrict delay)
{
    aout_stream_sys_t *sys = s->sys;
    void *pv;
    UINT64 pos, qpcpos, freq;
    HRESULT hr;

    if (FUNC8(&sys->started_state) != STARTED_STATE_OK)
        return E_FAIL;

    hr = FUNC2(sys->client, &IID_IAudioClock, &pv);
    if (FUNC0(hr))
    {
        FUNC9(s, "cannot get clock (error 0x%lX)", hr);
        return hr;
    }

    IAudioClock *clock = pv;

    hr = FUNC4(clock, &pos, &qpcpos);
    if (FUNC6(hr))
        hr = FUNC3(clock, &freq);
    FUNC5(clock);
    if (FUNC0(hr))
    {
        FUNC9(s, "cannot get position (error 0x%lX)", hr);
        return hr;
    }

    vlc_tick_t written = FUNC11(sys->written, sys->rate);
    vlc_tick_t tick_pos = FUNC11(pos, freq);

    FUNC10((10000000 % CLOCK_FREQ) == 0, "Frequency conversion broken");

    *delay = written - tick_pos
           - FUNC7(FUNC1() - qpcpos);

    return hr;
}