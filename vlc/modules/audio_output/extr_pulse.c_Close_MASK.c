#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct sink {struct sink* sink_force; struct sink* next; struct sink* sinks; int /*<<< orphan*/  mainloop; int /*<<< orphan*/ * context; } ;
typedef  int /*<<< orphan*/  pa_context ;
struct TYPE_2__ {struct sink* sys; } ;
typedef  TYPE_1__ audio_output_t ;
typedef  struct sink aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sink*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(vlc_object_t *obj)
{
    audio_output_t *aout = (audio_output_t *)obj;
    aout_sys_t *sys = aout->sys;
    pa_context *ctx = sys->context;

    FUNC2(sys->mainloop);
    FUNC1(sys->context, NULL, NULL);
    FUNC3(sys->mainloop);
    FUNC4(obj, ctx, sys->mainloop);

    for (struct sink *sink = sys->sinks, *next; sink != NULL; sink = next)
    {
        next = sink->next;
        FUNC0(sink);
    }
    FUNC0(sys->sink_force);
    FUNC0(sys);
}