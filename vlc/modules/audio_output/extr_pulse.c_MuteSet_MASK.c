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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  pa_operation ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_6__ {int flags_force; int /*<<< orphan*/  mainloop; int /*<<< orphan*/  context; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */
 int PA_STREAM_START_MUTED ; 
 int PA_STREAM_START_UNMUTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(audio_output_t *aout, bool mute)
{
    aout_sys_t *sys = aout->sys;

    if (sys->stream == NULL)
    {
        sys->flags_force &= ~(PA_STREAM_START_MUTED|PA_STREAM_START_UNMUTED);
        sys->flags_force |=
            mute ? PA_STREAM_START_MUTED : PA_STREAM_START_UNMUTED;
        FUNC0(aout, mute);
        return 0;
    }

    pa_operation *op;
    uint32_t idx = FUNC4(sys->stream);
    FUNC5(sys->mainloop);
    op = FUNC2(sys->context, idx, mute, NULL, NULL);
    if (FUNC1(op != NULL))
        FUNC3(op);
    FUNC6(sys->mainloop);

    return 0;
}