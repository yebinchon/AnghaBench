#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  out; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_9__ {scalar_t__ pulse; int /*<<< orphan*/  tick; int /*<<< orphan*/  es; int /*<<< orphan*/  pts; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_10__ {int* p_buffer; int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_dts; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TICK ; 
 scalar_t__ UINT64_MAX ; 
 int VLC_DEMUXER_EGENERIC ; 
 int VLC_DEMUXER_EOF ; 
 int VLC_DEMUXER_SUCCESS ; 
 int VLC_ENOMEM ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (demux_t *demux)
{
    demux_sys_t *sys = demux->p_sys;

    /* MIDI Tick emulation (ping the decoder every 10ms) */
    if (sys->tick <= FUNC2 (&sys->pts))
    {
        block_t *tick = FUNC1 (1);
        if (FUNC5(tick == NULL))
            return VLC_ENOMEM;

        tick->p_buffer[0] = 0xF9;
        tick->i_dts = tick->i_pts = sys->tick;

        FUNC3 (demux->out, sys->es, tick);
        FUNC4 (demux->out, sys->tick);

        sys->tick += TICK;
        return VLC_DEMUXER_SUCCESS;
    }

    /* MIDI events in chronological order across all tracks */
    uint64_t pulse = sys->pulse;

    if (FUNC0 (demux, &pulse, demux->out))
        return VLC_DEMUXER_EGENERIC;

    if (pulse == UINT64_MAX)
        return VLC_DEMUXER_EOF; /* all tracks are done */

    sys->pulse = pulse;
    return VLC_DEMUXER_SUCCESS;
}