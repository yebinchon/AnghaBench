#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int i_rate; } ;
struct TYPE_17__ {TYPE_1__ audio; } ;
typedef  TYPE_2__ es_format_t ;
struct TYPE_18__ {int /*<<< orphan*/  out; } ;
typedef  TYPE_3__ demux_t ;
struct TYPE_19__ {size_t i_buffer; int* p_buffer; } ;
typedef  TYPE_4__ block_t ;
struct TYPE_20__ {int i_dv_audio_rate; int /*<<< orphan*/ * p_es_dv_audio; } ;
typedef  TYPE_5__ avi_track_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_4__* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 

__attribute__((used)) static void FUNC7( demux_t *p_demux, avi_track_t *tk, block_t *p_frame )
{
    size_t i_offset = 80 * 6 + 80 * 16 * 3 + 3;
    if( p_frame->i_buffer < i_offset + 5 )
        return;

    if( p_frame->p_buffer[i_offset] != 0x50 )
        return;

    es_format_t fmt;
    FUNC2( &fmt, &p_frame->p_buffer[i_offset + 1] );

    if( tk->p_es_dv_audio && tk->i_dv_audio_rate != (int)fmt.audio.i_rate )
    {
        FUNC5( p_demux->out, tk->p_es_dv_audio );
        tk->p_es_dv_audio = NULL;
    }

    if( !tk->p_es_dv_audio )
    {
        tk->p_es_dv_audio = FUNC4( p_demux->out, &fmt );
        tk->i_dv_audio_rate = fmt.audio.i_rate;
    }

    FUNC3( &fmt );

    block_t *p_frame_audio = FUNC1( p_frame );
    if( p_frame_audio )
    {
        if( tk->p_es_dv_audio )
            FUNC6( p_demux->out, tk->p_es_dv_audio, p_frame_audio );
        else
            FUNC0( p_frame_audio );
    }
}