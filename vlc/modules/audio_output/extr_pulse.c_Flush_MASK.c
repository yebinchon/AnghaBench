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
typedef  int /*<<< orphan*/  pa_stream ;
typedef  int /*<<< orphan*/  pa_operation ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_6__ {int /*<<< orphan*/  mainloop; int /*<<< orphan*/  last_date; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;
    pa_stream *s = sys->stream;

    FUNC2(sys->mainloop);

    pa_operation *op = FUNC1(s, NULL, NULL);
    if (op != NULL)
        FUNC0(op);
    sys->last_date = VLC_TICK_INVALID;
    FUNC4(s, aout);

    FUNC3(sys->mainloop);
}