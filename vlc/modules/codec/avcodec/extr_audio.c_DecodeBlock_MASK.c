#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_8__ ;
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
struct TYPE_33__ {unsigned int i_rate; int i_bytes_per_frame; } ;
struct TYPE_34__ {TYPE_2__ audio; } ;
struct TYPE_32__ {scalar_t__ i_extra; } ;
struct TYPE_35__ {TYPE_3__ fmt_out; TYPE_1__ fmt_in; TYPE_5__* p_sys; } ;
typedef  TYPE_4__ decoder_t ;
struct TYPE_36__ {scalar_t__ i_reject_count; TYPE_8__* p_context; int /*<<< orphan*/  end_date; } ;
typedef  TYPE_5__ decoder_sys_t ;
struct TYPE_37__ {int i_flags; scalar_t__ i_pts; size_t i_buffer; int i_nb_samples; scalar_t__ i_length; int /*<<< orphan*/ * p_buffer; } ;
typedef  TYPE_6__ block_t ;
struct TYPE_39__ {scalar_t__ channels; scalar_t__ sample_rate; int /*<<< orphan*/  extradata_size; } ;
struct TYPE_38__ {size_t size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_7__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_8__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AV_ERROR_MAX_STRING_SIZE ; 
 int BLOCK_FLAG_CORRUPTED ; 
 int BLOCK_FLAG_DISCONTINUITY ; 
 int BLOCK_FLAG_PRIVATE_REALLOCATED ; 
 TYPE_6__* FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t FF_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ INPUT_CHAN_MAX ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int VLCDEC_ECRITICAL ; 
 int VLCDEC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__*) ; 
 int FUNC13 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_8__*,TYPE_7__*) ; 
 TYPE_6__* FUNC15 (TYPE_6__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,TYPE_6__*) ; 
 scalar_t__ FUNC22 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_4__*,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27( decoder_t *p_dec, block_t **pp_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    AVCodecContext *ctx = p_sys->p_context;
    AVFrame *frame = NULL;
    block_t *p_block = NULL;
    bool b_error = false;

    if( !ctx->extradata_size && p_dec->fmt_in.i_extra
     && !FUNC12( ctx ) )
    {
        FUNC3( p_dec, ctx );
        FUNC4( p_dec );
    }

    if( !FUNC12( ctx ) )
    {
        if( pp_block )
            p_block = *pp_block;
        goto drop;
    }

    if( pp_block == NULL ) /* Drain request */
    {
        /* we don't need to care about return val */
        (void) FUNC14( ctx, NULL );
    }
    else
    {
        p_block = *pp_block;
    }

    if( p_block )
    {
        if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
        {
            FUNC2( p_dec );
            goto drop;
        }

        if( p_block->i_flags & BLOCK_FLAG_DISCONTINUITY )
        {
            FUNC20( &p_sys->end_date, VLC_TICK_INVALID );
        }

        /* We've just started the stream, wait for the first PTS. */
        if( p_block->i_pts == VLC_TICK_INVALID &&
            FUNC17( &p_sys->end_date ) == VLC_TICK_INVALID )
            goto drop;

        if( p_block->i_buffer <= 0 )
            goto drop;

        if( (p_block->i_flags & BLOCK_FLAG_PRIVATE_REALLOCATED) == 0 )
        {
            *pp_block = p_block = FUNC15( p_block, 0, p_block->i_buffer + FF_INPUT_BUFFER_PADDING_SIZE );
            if( !p_block )
                goto end;
            p_block->i_buffer -= FF_INPUT_BUFFER_PADDING_SIZE;
            FUNC23( &p_block->p_buffer[p_block->i_buffer], 0, FF_INPUT_BUFFER_PADDING_SIZE );

            p_block->i_flags |= BLOCK_FLAG_PRIVATE_REALLOCATED;
        }
    }

    frame = FUNC7();
    if (FUNC26(frame == NULL))
        goto end;

    for( int ret = 0; ret == 0; )
    {
        /* Feed in the loop as buffer could have been full on first iterations */
        if( p_block )
        {
            AVPacket pkt;
            FUNC9( &pkt );
            pkt.data = p_block->p_buffer;
            pkt.size = p_block->i_buffer;
            ret = FUNC14( ctx, &pkt );
            if( ret == 0 ) /* Block has been consumed */
            {
                /* Only set new pts from input block if it has been used,
                 * otherwise let it be through interpolation */
                if( p_block->i_pts > FUNC17( &p_sys->end_date ) )
                {
                    FUNC20( &p_sys->end_date, p_block->i_pts );
                }

                FUNC16( p_block );
                *pp_block = p_block = NULL;
            }
            else if ( ret != FUNC0(EAGAIN) ) /* Errors other than buffer full */
            {
                if( ret == FUNC0(ENOMEM) || ret == FUNC0(EINVAL) )
                    goto end;
                else
                {
                    char errorstring[AV_ERROR_MAX_STRING_SIZE];
                    if( !FUNC10( ret, errorstring, AV_ERROR_MAX_STRING_SIZE ) )
                        FUNC24( p_dec, "%s", errorstring );
                    goto drop;
                }
            }
        }

        /* Try to read one or multiple frames */
        ret = FUNC13( ctx, frame );
        if( ret == 0 )
        {
            /* checks and init from first decoded frame */
            if( ctx->channels <= 0 || ctx->channels > INPUT_CHAN_MAX
             || ctx->sample_rate <= 0 )
            {
                FUNC25( p_dec, "invalid audio properties channels count %d, sample rate %d",
                          ctx->channels, ctx->sample_rate );
                goto drop;
            }
            else if( p_dec->fmt_out.audio.i_rate != (unsigned int)ctx->sample_rate )
            {
                FUNC19( &p_sys->end_date, ctx->sample_rate, 1 );
            }

            FUNC5( p_dec, true );
            if( FUNC22( p_dec ) )
                goto drop;

            block_t *p_converted = FUNC1( p_dec, frame ); /* Consumes frame */
            if( p_converted )
            {
                /* Silent unwanted samples */
                if( p_sys->i_reject_count > 0 )
                {
                    FUNC23( p_converted->p_buffer, 0, p_converted->i_buffer );
                    p_sys->i_reject_count--;
                }
                p_converted->i_buffer = p_converted->i_nb_samples
                                      * p_dec->fmt_out.audio.i_bytes_per_frame;
                p_converted->i_pts = FUNC17( &p_sys->end_date );
                p_converted->i_length = FUNC18( &p_sys->end_date,
                                                      p_converted->i_nb_samples ) - p_converted->i_pts;

                FUNC21( p_dec, p_converted );
            }

            /* Prepare new frame */
            frame = FUNC7();
            if (FUNC26(frame == NULL))
                break;
        }
        else
        {
            /* After draining, we need to reset decoder with a flush */
            if( ret == AVERROR_EOF )
                FUNC11( p_sys->p_context );
            FUNC8( &frame );
        }
    };

    return VLCDEC_SUCCESS;

end:
    b_error = true;
drop:
    if( pp_block )
    {
        FUNC6( *pp_block == p_block );
        *pp_block = NULL;
    }
    if( p_block != NULL )
        FUNC16(p_block);
    if( frame != NULL )
        FUNC8( &frame );

    return (b_error) ? VLCDEC_ECRITICAL : VLCDEC_SUCCESS;
}