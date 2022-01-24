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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_stream_t ;
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* start; int /*<<< orphan*/ * stream; int /*<<< orphan*/ * last; int /*<<< orphan*/ * first; } ;
typedef  TYPE_2__ sout_stream_sys_t ;
typedef  TYPE_2__ sout_cycle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(vlc_object_t *obj)
{
    sout_stream_t *stream = (sout_stream_t *)obj;
    sout_stream_sys_t *sys = stream->p_sys;

    FUNC0(sys->first == NULL && sys->last == NULL);

    if (sys->stream != NULL)
        FUNC2(sys->stream, NULL);

    for (sout_cycle_t *cycle = sys->start, *next; cycle != NULL; cycle = next)
    {
        next = cycle->next;
        FUNC1(cycle);
    }

    FUNC1(sys);
}