#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;
typedef  struct TYPE_26__   TYPE_12__ ;

/* Type definitions */
struct TYPE_26__ {unsigned int i_rate; unsigned int i_channels; unsigned int i_physical_channels; int i_bitspersample; int /*<<< orphan*/  i_format; } ;
struct TYPE_27__ {int /*<<< orphan*/  i_codec; TYPE_12__ audio; } ;
struct TYPE_28__ {TYPE_1__ fmt_out; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ decoder_t ;
struct TYPE_29__ {scalar_t__ i_header_size; int i_type; int /*<<< orphan*/  pi_chan_table; int /*<<< orphan*/  i_chans_to_reorder; int /*<<< orphan*/  end_date; scalar_t__ b_packetizer; } ;
typedef  TYPE_3__ decoder_sys_t ;
struct TYPE_30__ {int i_flags; scalar_t__ i_pts; scalar_t__ i_buffer; scalar_t__ i_dts; int /*<<< orphan*/  p_buffer; void* i_length; } ;
typedef  TYPE_4__ block_t ;
struct TYPE_31__ {int i_bits; int i_channels; } ;
typedef  TYPE_5__ aob_group_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_4__*,unsigned int,TYPE_5__*) ; 
 int FUNC1 (unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int BLOCK_FLAG_CORRUPTED ; 
 int BLOCK_FLAG_DISCONTINUITY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_4__*,int,unsigned int,unsigned int,unsigned int) ; 
 int FUNC3 (TYPE_3__*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
#define  LPCM_AOB 131 
#define  LPCM_BD 130 
#define  LPCM_VOB 129 
#define  LPCM_WIDI 128 
 int /*<<< orphan*/  VLC_CODEC_S16N ; 
 int /*<<< orphan*/  VLC_CODEC_S32N ; 
 scalar_t__ VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_4__*,unsigned int) ; 
 int FUNC6 (unsigned int*,unsigned int*,unsigned int*,unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC7 (unsigned int*,unsigned int*,unsigned int*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_4__* FUNC16 (TYPE_2__*,int) ; 
 scalar_t__ FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC20 () ; 

__attribute__((used)) static block_t *FUNC21( decoder_t *p_dec, block_t **pp_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t       *p_block;
    unsigned int  i_rate = 0, i_original_channels = 0, i_channels = 0, i_bits = 0;
    int           i_frame_length;

    if( !pp_block || !*pp_block ) return NULL;

    p_block = *pp_block;
    *pp_block = NULL; /* So the packet doesn't get re-sent */

    if( p_block->i_flags & (BLOCK_FLAG_CORRUPTED|BLOCK_FLAG_DISCONTINUITY) )
    {
        FUNC4( p_dec );
        if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
        {
            FUNC11( p_block );
            *pp_block = NULL;
            return NULL;
        }
    }

    /* Date management */
    if( p_block->i_pts != VLC_TICK_INVALID &&
        p_block->i_pts != FUNC12( &p_sys->end_date ) )
    {
        FUNC15( &p_sys->end_date, p_block->i_pts );
    }

    if( FUNC12( &p_sys->end_date ) == VLC_TICK_INVALID )
    {
        /* We've just started the stream, wait for the first PTS. */
        FUNC11( p_block );
        return NULL;
    }

    if( p_block->i_buffer <= p_sys->i_header_size )
    {
        FUNC18(p_dec, "frame is too short");
        FUNC11( p_block );
        return NULL;
    }

    int i_ret;
    unsigned i_channels_padding = 0;
    unsigned i_padding = 0; /* only for AOB */
    aob_group_t p_aob_group[2];

    switch( p_sys->i_type )
    {
    case LPCM_VOB:
        i_ret = FUNC6( &i_rate, &i_channels, &i_original_channels, &i_bits,
                           p_block->p_buffer );
        break;
    case LPCM_AOB:
        i_ret = FUNC1( &i_rate, &i_channels, &i_original_channels, &i_bits, &i_padding,
                           p_aob_group,
                           p_block->p_buffer );
        break;
    case LPCM_BD:
        i_ret = FUNC3( p_sys, &i_rate, &i_channels, &i_channels_padding, &i_original_channels, &i_bits,
                          p_block->p_buffer );
        break;
    case LPCM_WIDI:
        i_ret = FUNC7( &i_rate, &i_channels, &i_original_channels, &i_bits,
                            p_block->p_buffer );
        break;
    default:
        FUNC8();
    }

    if( i_ret || p_block->i_buffer <= p_sys->i_header_size + i_padding )
    {
        FUNC19( p_dec, "no frame sync or too small frame" );
        FUNC11( p_block );
        return NULL;
    }

    /* Set output properties */
    if( p_dec->fmt_out.audio.i_rate != i_rate )
    {
        FUNC14( &p_sys->end_date, i_rate, 1 );
        FUNC15( &p_sys->end_date, p_block->i_pts );
    }
    p_dec->fmt_out.audio.i_rate = i_rate;
    p_dec->fmt_out.audio.i_channels = i_channels;
    p_dec->fmt_out.audio.i_physical_channels = i_original_channels;

    if ( p_sys->i_type == LPCM_AOB )
    {
        i_frame_length = (p_block->i_buffer - p_sys->i_header_size - i_padding) /
                         (
                            ( (p_aob_group[0].i_bits / 8) * p_aob_group[0].i_channels ) +
                            ( (p_aob_group[1].i_bits / 8) * p_aob_group[1].i_channels )
                         );
    }
    else
    {
        i_frame_length = (p_block->i_buffer - p_sys->i_header_size - i_padding) /
                         (i_channels + i_channels_padding) * 8 / i_bits;
    }

    if( p_sys->b_packetizer )
    {
        p_block->i_pts = p_block->i_dts = FUNC12( &p_sys->end_date );
        p_block->i_length =
            FUNC13( &p_sys->end_date, i_frame_length ) -
            p_block->i_pts;

        /* Just pass on the incoming frame */
        return p_block;
    }
    else
    {
        /* */
        if( i_bits == 16 )
        {
            p_dec->fmt_out.audio.i_format =
            p_dec->fmt_out.i_codec = VLC_CODEC_S16N;
            p_dec->fmt_out.audio.i_bitspersample = 16;
        }
        else
        {
            p_dec->fmt_out.audio.i_format =
            p_dec->fmt_out.i_codec = VLC_CODEC_S32N;
            p_dec->fmt_out.audio.i_bitspersample = 32;
        }
        FUNC10(&p_dec->fmt_out.audio);

        /* */
        block_t *p_aout_buffer;
        if( FUNC17( p_dec ) != VLC_SUCCESS ||
           !(p_aout_buffer = FUNC16( p_dec, i_frame_length )) )
        {
            FUNC11( p_block );
            return NULL;
        }

        p_aout_buffer->i_pts = FUNC12( &p_sys->end_date );
        p_aout_buffer->i_length =
            FUNC13( &p_sys->end_date, i_frame_length )
            - p_aout_buffer->i_pts;

        p_block->p_buffer += p_sys->i_header_size + i_padding;
        p_block->i_buffer -= p_sys->i_header_size + i_padding;

        switch( p_sys->i_type )
        {
        case LPCM_WIDI:
        case LPCM_VOB:
            FUNC5( p_aout_buffer, p_block, i_bits );
            break;
        case LPCM_AOB:
            FUNC0( p_aout_buffer, p_block, i_bits, p_aob_group );
            break;
        default:
            FUNC20();
        case LPCM_BD:
            FUNC2( p_aout_buffer, p_block, i_frame_length, i_channels, i_channels_padding, i_bits );
            break;
        }

        if( p_sys->i_chans_to_reorder )
        {
            FUNC9( p_aout_buffer->p_buffer, p_aout_buffer->i_buffer,
                                 p_sys->i_chans_to_reorder, p_sys->pi_chan_table,
                                 p_dec->fmt_out.i_codec );
        }

        FUNC11( p_block );
        return p_aout_buffer;
    }
}