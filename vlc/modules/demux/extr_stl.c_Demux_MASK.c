#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_10__ {scalar_t__ start; long long blocknumber; scalar_t__ stop; } ;
typedef  TYPE_1__ stl_entry_t ;
struct TYPE_11__ {int /*<<< orphan*/  out; int /*<<< orphan*/  s; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_12__ {scalar_t__ next_date; size_t current; size_t count; int b_first_time; int /*<<< orphan*/  b_slave; int /*<<< orphan*/  es; TYPE_1__* index; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_13__ {int i_buffer; scalar_t__ i_length; scalar_t__ i_pts; scalar_t__ i_dts; } ;
typedef  TYPE_4__ block_t ;

/* Variables and functions */
 int VLC_DEMUXER_EOF ; 
 int VLC_DEMUXER_SUCCESS ; 
 scalar_t__ VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_0 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__ const) ; 
 scalar_t__ const FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(demux_t *demux)
{
    demux_sys_t *sys = demux->p_sys;

    vlc_tick_t i_barrier = sys->next_date
        - FUNC4(FUNC5(demux), "spu-delay");
    if(i_barrier < 0)
        i_barrier = sys->next_date;

    while(sys->current < sys->count &&
          sys->index[sys->current].start <= i_barrier)
    {
        stl_entry_t *s = &sys->index[sys->current];

        if (!sys->b_slave && sys->b_first_time)
        {
            FUNC3(demux->out, VLC_TICK_0 + i_barrier);
            sys->b_first_time = false;
        }

        /* Might be a gap in block # */
        const uint64_t i_pos = 1024 + 128LL * s->blocknumber;
        if(i_pos != FUNC8(demux->s) &&
           FUNC7( demux->s, i_pos ) != VLC_SUCCESS )
            return VLC_DEMUXER_EOF;

        block_t *b = FUNC6(demux->s, 128);
        if (b && b->i_buffer == 128)
        {
            b->i_dts =
            b->i_pts = VLC_TICK_0 + s->start;
            if (s->stop > s->start)
                b->i_length = s->stop - s->start;
            FUNC2(demux->out, sys->es, b);
        }
        else
        {
            if(b)
                FUNC1(b);
            return VLC_DEMUXER_EOF;
        }
        sys->current++;
    }

    if (!sys->b_slave)
    {
        FUNC3(demux->out, VLC_TICK_0 + i_barrier);
        sys->next_date += FUNC0(125);
    }

    return sys->current < sys->count ? VLC_DEMUXER_SUCCESS : VLC_DEMUXER_EOF;
}