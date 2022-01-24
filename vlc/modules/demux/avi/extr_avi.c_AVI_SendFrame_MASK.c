#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  out; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_15__ {scalar_t__ i_buffer; scalar_t__ i_flags; int /*<<< orphan*/  p_buffer; int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_dts; } ;
typedef  TYPE_3__ block_t ;
struct TYPE_13__ {scalar_t__ i_cat; int /*<<< orphan*/  i_codec; } ;
struct TYPE_16__ {scalar_t__ p_es; scalar_t__ i_next_block_flags; TYPE_1__ fmt; scalar_t__ i_dv_audio_rate; } ;
typedef  TYPE_4__ avi_track_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ QNAP_HEADER_SIZE ; 
 scalar_t__ VIDEO_ES ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 

__attribute__((used)) static void FUNC4( demux_t *p_demux, avi_track_t *tk, block_t *p_frame )
{
    if( tk->fmt.i_cat != VIDEO_ES )
        p_frame->i_dts = p_frame->i_pts;
    else
    {
        p_frame->i_dts = p_frame->i_pts;
        p_frame->i_pts = VLC_TICK_INVALID;
    }

    if( tk->i_dv_audio_rate )
        FUNC0( p_demux, tk, p_frame );

    /* Strip QNAP header */
    if( FUNC1( tk->fmt.i_codec ) )
    {
        if( p_frame->i_buffer <= QNAP_HEADER_SIZE )
        {
            FUNC2( p_frame );
            return;
        }

        p_frame->i_buffer -= QNAP_HEADER_SIZE;
        p_frame->p_buffer += QNAP_HEADER_SIZE;
    }

    if( tk->i_next_block_flags )
    {
        p_frame->i_flags = tk->i_next_block_flags;
        tk->i_next_block_flags = 0;
    }

    if( tk->p_es )
        FUNC3( p_demux->out, tk->p_es, p_frame );
    else
        FUNC2( p_frame );
}