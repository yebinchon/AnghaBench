#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_20__ {TYPE_3__** pp_inputs; scalar_t__ p_sys; } ;
typedef  TYPE_1__ sout_mux_t ;
struct TYPE_21__ {scalar_t__ i_start_dts; scalar_t__ i_written_duration; unsigned int i_nb_streams; scalar_t__ i_read_duration; TYPE_4__** pp_streams; } ;
typedef  TYPE_2__ sout_mux_sys_t ;
struct TYPE_22__ {scalar_t__ p_sys; } ;
typedef  TYPE_3__ sout_input_t ;
struct TYPE_19__ {scalar_t__ p_first; } ;
struct TYPE_23__ {scalar_t__ i_first_dts; int b_hasiframes; scalar_t__ i_written_duration; TYPE_14__ read; int /*<<< orphan*/  tinfo; TYPE_8__* p_held_entry; int /*<<< orphan*/  i_current_run; scalar_t__ i_last_iframe_time; } ;
typedef  TYPE_4__ mp4_stream_t ;
typedef  int /*<<< orphan*/  mp4_fragentry_t ;
struct TYPE_24__ {scalar_t__ i_dts; int i_length; int i_flags; scalar_t__ i_pts; } ;
typedef  TYPE_5__ block_t ;
struct TYPE_26__ {int /*<<< orphan*/ * p_next; int /*<<< orphan*/  i_run; TYPE_5__* p_block; } ;
struct TYPE_25__ {scalar_t__ i_cat; } ;

/* Variables and functions */
 scalar_t__ AUDIO_ES ; 
 int BLOCK_FLAG_DISCONTINUITY ; 
 int BLOCK_FLAG_TYPE_I ; 
 TYPE_5__* FUNC0 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_14__,TYPE_8__*) ; 
 scalar_t__ FRAGMENT_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_4__*,TYPE_5__*) ; 
 scalar_t__ VIDEO_ES ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_8__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(sout_mux_t *p_mux)
{
    sout_mux_sys_t *p_sys = (sout_mux_sys_t*) p_mux->p_sys;

    int i_stream = FUNC11(p_mux, 1, NULL);
    if (i_stream < 0)
        return VLC_SUCCESS;

    sout_input_t *p_input  = p_mux->pp_inputs[i_stream];
    mp4_stream_t *p_stream = (mp4_stream_t*) p_input->p_sys;
    block_t *p_currentblock = FUNC0(p_input, p_stream);
    if( !p_currentblock )
        return VLC_SUCCESS;

    /* Set time ranges */
    if( p_stream->i_first_dts == VLC_TICK_INVALID )
    {
        p_stream->i_first_dts = p_currentblock->i_dts;
        if( p_sys->i_start_dts == VLC_TICK_INVALID )
            p_sys->i_start_dts = p_currentblock->i_dts;
    }

    /* If we have a previous entry for outgoing queue */
    if (p_stream->p_held_entry)
    {
        block_t *p_heldblock = p_stream->p_held_entry->p_block;

        /* Fix previous block length from current */
        if (p_heldblock->i_length < 1)
        {

            /* Fix using dts if not on a boundary */
            if ((p_currentblock->i_flags & BLOCK_FLAG_DISCONTINUITY) == 0)
                p_heldblock->i_length = p_currentblock->i_dts - p_heldblock->i_dts;

            if (p_heldblock->i_length < 1)
                FUNC2(p_mux, p_stream, p_heldblock);
        }

        /* enqueue */
        FUNC1(p_stream->read, p_stream->p_held_entry);
        p_stream->p_held_entry = NULL;

        if (p_stream->b_hasiframes && (p_heldblock->i_flags & BLOCK_FLAG_TYPE_I) &&
            FUNC7(p_stream->tinfo) - p_sys->i_written_duration < FRAGMENT_LENGTH)
        {
            /* Flag the last iframe time, we'll use it as boundary so it will start
               next fragment */
            p_stream->i_last_iframe_time = FUNC7(p_stream->tinfo);
        }

        /* update buffered time */
        FUNC6(p_stream->tinfo,
                                 FUNC7(p_stream->tinfo) +
                                 FUNC4(0, p_heldblock->i_length));
    }


    /* set temp entry */
    p_stream->p_held_entry = FUNC5(sizeof(mp4_fragentry_t));
    if (FUNC12(!p_stream->p_held_entry))
        return VLC_ENOMEM;

    p_stream->p_held_entry->p_block  = p_currentblock;
    p_stream->p_held_entry->i_run    = p_stream->i_current_run;
    p_stream->p_held_entry->p_next   = NULL;

    if (FUNC8(p_stream->tinfo)->i_cat == VIDEO_ES )
    {
        if (!p_stream->b_hasiframes && (p_currentblock->i_flags & BLOCK_FLAG_TYPE_I))
            p_stream->b_hasiframes = true;

        if (!FUNC9(p_stream->tinfo) &&
            p_currentblock->i_dts != VLC_TICK_INVALID &&
            p_currentblock->i_pts > p_currentblock->i_dts)
                FUNC10(p_stream->tinfo);
    }

    /* Update the global fragment/media duration */
    vlc_tick_t i_min_read_duration = FUNC7(p_stream->tinfo);
    vlc_tick_t i_min_written_duration = p_stream->i_written_duration;
    for (unsigned int i=0; i<p_sys->i_nb_streams; i++)
    {
        const mp4_stream_t *p_s = p_sys->pp_streams[i];
        if (FUNC8(p_stream->tinfo)->i_cat != VIDEO_ES &&
            FUNC8(p_stream->tinfo)->i_cat != AUDIO_ES)
            continue;
        if (FUNC7(p_s->tinfo) < i_min_read_duration)
            i_min_read_duration = FUNC7(p_s->tinfo);

        if (p_s->i_written_duration < i_min_written_duration)
            i_min_written_duration = p_s->i_written_duration;
    }
    p_sys->i_read_duration = i_min_read_duration;
    p_sys->i_written_duration = i_min_written_duration;

    /* we have prerolled enough to know all streams, and have enough date to create a fragment */
    if (p_stream->read.p_first && p_sys->i_read_duration - p_sys->i_written_duration >= FRAGMENT_LENGTH)
        FUNC3(p_mux, false);

    return VLC_SUCCESS;
}