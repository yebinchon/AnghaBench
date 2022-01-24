#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_7__ {int running_event; int /*<<< orphan*/  start; scalar_t__ next; scalar_t__ offset; } ;
typedef  TYPE_1__ mtrk_t ;
struct TYPE_8__ {TYPE_3__* p_sys; int /*<<< orphan*/ * s; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_9__ {int ppqn; unsigned int trackc; TYPE_1__* trackv; int /*<<< orphan*/  tick; scalar_t__ pulse; int /*<<< orphan*/  pts; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  VLC_TICK_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5 (demux_t *demux)
{
    stream_t *stream = demux->s;
    demux_sys_t *sys = demux->p_sys;

    /* Default SMF tempo is 120BPM, i.e. half a second per quarter note */
    FUNC1 (&sys->pts, sys->ppqn * 2, 1);
    FUNC2 (&sys->pts, VLC_TICK_0);
    sys->pulse = 0;
    sys->tick = VLC_TICK_0;

    for (unsigned i = 0; i < sys->trackc; i++)
    {
        mtrk_t *tr = sys->trackv + i;

        tr->offset = 0;
        tr->next = 0;
        /* Why 0xF6 (Tuning Calibration)?
         * Because it has zero bytes of data, so the parser will detect the
         * error if the first event uses running status. */
        tr->running_event = 0xF6;

        if (FUNC4 (stream, tr->start)
         || FUNC0 (stream, tr))
        {
            FUNC3 (demux, "fatal parsing error");
            return -1;
        }
    }

    return 0;
}