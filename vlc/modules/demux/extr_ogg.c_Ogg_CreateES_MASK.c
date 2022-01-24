#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ i_codec; int b_packetized; scalar_t__ i_cat; } ;
struct TYPE_13__ {int b_finished; int b_reinit; int b_initializing; int /*<<< orphan*/ * p_es; TYPE_5__ fmt; int /*<<< orphan*/  fmt_old; scalar_t__ i_pre_skip; } ;
typedef  TYPE_1__ logical_stream_t ;
struct TYPE_14__ {int /*<<< orphan*/  out; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_15__ {int i_streams; int b_es_created; TYPE_1__* p_old_stream; TYPE_1__** pp_stream; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  ES_OUT_SET_ES_FMT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ VLC_CODEC_A52 ; 
 scalar_t__ VLC_CODEC_MPGA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 

__attribute__((used)) static void FUNC7( demux_t *p_demux )
{
    demux_sys_t *p_ogg = p_demux->p_sys;
    logical_stream_t *p_old_stream = p_ogg->p_old_stream;
    int i_stream;

    for( i_stream = 0 ; i_stream < p_ogg->i_streams; i_stream++ )
    {
        logical_stream_t *p_stream = p_ogg->pp_stream[i_stream];

        if ( p_stream->p_es == NULL && !p_stream->b_finished )
        {
            /* Better be safe than sorry when possible with ogm */
            if( p_stream->fmt.i_codec == VLC_CODEC_MPGA ||
                p_stream->fmt.i_codec == VLC_CODEC_A52 )
                p_stream->fmt.b_packetized = false;

            /* Try first to reuse an old ES */
            if( p_old_stream &&
                p_old_stream->fmt.i_cat == p_stream->fmt.i_cat &&
                p_old_stream->fmt.i_codec == p_stream->fmt.i_codec &&
                p_old_stream->p_es != NULL && p_stream->p_es != NULL )
            {
                FUNC6( p_demux, "will reuse old stream to avoid glitch" );

                p_stream->p_es = p_old_stream->p_es;
                p_stream->b_finished = false;
                p_stream->b_reinit = false;
                p_stream->b_initializing = false;
                p_stream->i_pre_skip = 0;
                FUNC2( &p_stream->fmt_old );
                FUNC3( &p_stream->fmt_old, &p_old_stream->fmt );
                bool b_resetdecoder = FUNC1( p_demux, p_stream );

                p_old_stream->p_es = NULL;
                p_old_stream = NULL;
                if ( b_resetdecoder )
                {
                    FUNC5( p_demux->out, ES_OUT_SET_ES_FMT,
                                    p_stream->p_es, &p_stream->fmt );
                }
            }
            else
            {
                p_stream->p_es = FUNC4( p_demux->out, &p_stream->fmt );
            }
        }
    }

    if( p_ogg->p_old_stream )
    {
        if( p_ogg->p_old_stream->p_es )
            FUNC6( p_demux, "old stream not reused" );
        FUNC0( p_demux, p_ogg->p_old_stream );
        p_ogg->p_old_stream = NULL;
    }
    p_ogg->b_es_created = true;
}