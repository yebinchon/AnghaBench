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
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  pa_time_event ;
typedef  int /*<<< orphan*/  pa_mainloop_api ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_6__ {int /*<<< orphan*/  stream; int /*<<< orphan*/ * trigger; int /*<<< orphan*/  mainloop; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(pa_mainloop_api *api, pa_time_event *e,
                              const struct timeval *tv, void *userdata)
{
    audio_output_t *aout = userdata;
    aout_sys_t *sys = aout->sys;

    FUNC0 (sys->trigger == e);

    FUNC1(aout, "starting deferred");
    FUNC3(sys->mainloop, sys->trigger);
    sys->trigger = NULL;
    FUNC2(sys->stream, aout);
    (void) api; (void) e; (void) tv;
}