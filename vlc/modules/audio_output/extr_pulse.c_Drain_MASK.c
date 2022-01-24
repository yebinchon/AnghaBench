#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  pa_stream ;
typedef  int /*<<< orphan*/  pa_operation ;
struct TYPE_7__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_8__ {int /*<<< orphan*/  mainloop; int /*<<< orphan*/  last_date; int /*<<< orphan*/ * trigger; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static void FUNC12(audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;
    pa_stream *s = sys->stream;

    FUNC5(sys->mainloop);

    if (FUNC9(FUNC4(s) > 0))
    {
        /* Drain while the stream is corked. It happens with very small input
         * when the stream is drained while the start is still being deferred.
         * In that case, we need start the stream before we actually drain it.
         * */
        if (sys->trigger != NULL)
        {
            FUNC10(sys->mainloop, sys->trigger);
            sys->trigger = NULL;
        }
        FUNC7(s, aout);
    }

    pa_operation *op = FUNC3(s, NULL, NULL);
    if (op != NULL)
        FUNC2(op);
    sys->last_date = VLC_TICK_INVALID;

    /* XXX: Loosy drain emulation.
     * See #18141: drain callback is never received */
    vlc_tick_t delay;
    if (FUNC0(aout, &delay) == 0 && delay <= FUNC1(5))
    {
        FUNC6(sys->mainloop);
        FUNC11(delay);
        FUNC5(sys->mainloop);
    }

    FUNC8(s, aout);
    FUNC6(sys->mainloop);
}