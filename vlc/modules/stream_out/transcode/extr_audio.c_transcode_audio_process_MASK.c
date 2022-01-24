#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_20__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  sout_stream_t ;
struct TYPE_30__ {int /*<<< orphan*/  lock; } ;
struct TYPE_27__ {int /*<<< orphan*/  i_rate; } ;
struct TYPE_28__ {TYPE_11__ audio; } ;
struct TYPE_31__ {int b_error; scalar_t__ (* pf_drift_validate ) (int /*<<< orphan*/ ,scalar_t__) ;scalar_t__ i_drift; int /*<<< orphan*/  encoder; int /*<<< orphan*/ * p_af_chain; int /*<<< orphan*/  next_input_pts; TYPE_2__ fifo; int /*<<< orphan*/  callback_data; TYPE_5__* p_enccfg; scalar_t__ downstream_id; TYPE_20__* p_decoder; scalar_t__ (* pf_transcode_downstream_add ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;TYPE_1__ decoder_out; int /*<<< orphan*/  p_filterscfg; TYPE_11__ fmt_input_audio; } ;
typedef  TYPE_3__ sout_stream_id_sys_t ;
struct TYPE_32__ {scalar_t__ i_pts; scalar_t__ i_dts; int /*<<< orphan*/  i_nb_samples; struct TYPE_32__* p_next; } ;
typedef  TYPE_4__ block_t ;
struct TYPE_34__ {int /*<<< orphan*/  audio; } ;
struct TYPE_33__ {int /*<<< orphan*/  i_codec; } ;
struct TYPE_29__ {int (* pf_decode ) (TYPE_20__*,TYPE_4__*) ;int /*<<< orphan*/  fmt_in; } ;

/* Variables and functions */
 int VLCDEC_SUCCESS ; 
 int VLC_EGENERIC ; 
 scalar_t__ VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,float) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__**,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (TYPE_20__*,TYPE_4__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_11__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_11__*,TYPE_11__*) ; 
 TYPE_4__* FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,TYPE_11__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_4__**) ; 
 TYPE_4__* FUNC19 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_6__* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

int FUNC27( sout_stream_t *p_stream,
                                    sout_stream_id_sys_t *id,
                                    block_t *in, block_t **out )
{
    *out = NULL;

    int ret = id->p_decoder->pf_decode( id->p_decoder, in );
    if( ret != VLCDEC_SUCCESS )
        return VLC_EGENERIC;

    block_t *p_audio_bufs = FUNC16( id );

    do
    {
        block_t *p_audio_buf = p_audio_bufs;
        if( p_audio_buf == NULL )
            break;
        p_audio_bufs = p_audio_buf->p_next;
        p_audio_buf->p_next = NULL;

        if( id->b_error )
        {
            FUNC3( p_audio_buf );
            continue;
        }

        FUNC25(&id->fifo.lock);

        if( p_audio_buf && ( FUNC24(!FUNC23( id->encoder )) ||
            !FUNC15( &id->fmt_input_audio, &id->decoder_out.audio ) ) )
        {
            if( !FUNC23( id->encoder ) )
            {
                FUNC17( id->p_enccfg,
                                                   &id->decoder_out.audio, id->encoder, true );
                id->fmt_input_audio = id->decoder_out.audio;
            }
            else
            {
                /* Check if audio format has changed, and filters need reinit */
                FUNC10( p_stream, "Audio changed, trying to reinitialize filters" );
                if( id->p_af_chain != NULL )
                {
                    FUNC0( p_stream, id->p_af_chain );
                    id->p_af_chain = NULL;
                }
                id->fmt_input_audio = id->decoder_out.audio;
            }

            if( !id->p_af_chain &&
                FUNC14( p_stream,
                                              id->p_filterscfg,
                                              &id->decoder_out.audio,
                                              &FUNC20( id->encoder )->audio,
                                              &id->p_af_chain ) )
            {
                FUNC26(&id->fifo.lock);
                goto error;
            }

            FUNC6( &id->next_input_pts, id->decoder_out.audio.i_rate, 1 );
            FUNC7( &id->next_input_pts, p_audio_buf->i_pts );

            if( !FUNC23( id->encoder ) &&
                FUNC22( id->encoder, id->p_enccfg ) )
            {
                FUNC26(&id->fifo.lock);
                goto error;
            }

            if( !id->downstream_id )
                id->downstream_id =
                    id->pf_transcode_downstream_add( p_stream,
                                                     &id->p_decoder->fmt_in,
                                                     FUNC21( id->encoder ) );
            if( !id->downstream_id )
            {
                FUNC9( p_stream, "cannot output transcoded stream %4.4s",
                                   (char *) &id->p_enccfg->i_codec );
                FUNC26(&id->fifo.lock);
                goto error;
            }
        }

        FUNC26(&id->fifo.lock);

        if( id->pf_drift_validate )
        {
            vlc_tick_t i_pts = FUNC4( &id->next_input_pts );
            vlc_tick_t i_drift = 0;

            if( FUNC8( p_audio_buf->i_pts != VLC_TICK_INVALID ) )
                i_drift = p_audio_buf->i_pts - i_pts;
            if( id->pf_drift_validate( id->callback_data, i_drift ) != VLC_SUCCESS )
            {
                FUNC7( &id->next_input_pts, p_audio_buf->i_pts );
                i_drift = 0;
            }

            FUNC25(&id->fifo.lock);
            id->i_drift = i_drift;
            FUNC26(&id->fifo.lock);
            FUNC5( &id->next_input_pts, p_audio_buf->i_nb_samples );
        }

        p_audio_buf->i_dts = p_audio_buf->i_pts;

        /* Run filter chain */
        p_audio_buf = FUNC1( id->p_af_chain, p_audio_buf, 1.f );
        if( p_audio_buf  )
        {
            p_audio_buf->i_dts = p_audio_buf->i_pts;

            block_t *p_block = FUNC19( id->encoder, p_audio_buf );
            FUNC2( out, p_block );
            FUNC3( p_audio_buf );
        }
        continue;
error:
        if( p_audio_buf )
            FUNC3( p_audio_buf );
        id->b_error = true;
    } while( p_audio_bufs );

    /* Drain encoder */
    if( FUNC24( !id->b_error && in == NULL ) && FUNC23( id->encoder ) )
    {
        FUNC18( id->encoder, out );
    }

    return id->b_error ? VLC_EGENERIC : VLC_SUCCESS;
}