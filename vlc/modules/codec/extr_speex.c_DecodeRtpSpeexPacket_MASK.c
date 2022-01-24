#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_21__ {size_t i_channels; unsigned int i_bytes_per_frame; int /*<<< orphan*/  i_rate; int /*<<< orphan*/  i_physical_channels; } ;
struct TYPE_22__ {TYPE_1__ audio; } ;
struct TYPE_23__ {TYPE_2__ fmt_out; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ decoder_t ;
struct TYPE_27__ {scalar_t__ buf_size; } ;
struct TYPE_24__ {int rtp_rate; int /*<<< orphan*/  i_frame_in_packet; TYPE_6__* p_header; int /*<<< orphan*/  end_date; TYPE_7__ bits; int /*<<< orphan*/  p_state; } ;
typedef  TYPE_4__ decoder_sys_t ;
struct TYPE_25__ {scalar_t__ i_pts; scalar_t__ i_buffer; scalar_t__ i_length; scalar_t__ p_buffer; int /*<<< orphan*/  i_dts; } ;
typedef  TYPE_5__ block_t ;
struct TYPE_26__ {int vbr; int frames_per_packet; size_t nb_channels; int /*<<< orphan*/  frame_size; int /*<<< orphan*/  rate; } ;
typedef  int /*<<< orphan*/  SpeexMode ;
typedef  int /*<<< orphan*/  SpeexHeader ;

/* Variables and functions */
 int /*<<< orphan*/  SPEEX_MODE_FRAME_SIZE ; 
 int VLCDEC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_5__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 TYPE_6__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*,char*,scalar_t__) ; 
 int FUNC13 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC17 (int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  speex_nb_mode ; 
 int /*<<< orphan*/ * vlc_chan_maps ; 

__attribute__((used)) static int FUNC19( decoder_t *p_dec, block_t *p_speex_bit_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_aout_buffer;
    int i_decode_ret;
    unsigned int i_speex_frame_size;

    if ( !p_speex_bit_block || p_speex_bit_block->i_pts == VLC_TICK_INVALID )
        return VLCDEC_SUCCESS;

    /*
      If the SpeexBits buffer size is 0 (a default value),
      we know that a proper initialization has not yet been done.
    */
    if ( p_sys->bits.buf_size==0 )
    {
        p_sys->p_header = FUNC9(sizeof(SpeexHeader));
        if ( !p_sys->p_header )
        {
            FUNC10( p_dec, "Could not allocate a Speex header.");
            return VLCDEC_SUCCESS;
        }

        const SpeexMode *mode = FUNC17((p_sys->rtp_rate / 8000) >> 1);

        FUNC16( p_sys->p_header,p_sys->rtp_rate, 1, mode );
        FUNC11( &p_sys->bits );
        p_sys->p_state = FUNC15( mode );
        if ( !p_sys->p_state )
        {
            FUNC10( p_dec, "Could not allocate a Speex decoder." );
            FUNC8( p_sys->p_header );
            return VLCDEC_SUCCESS;
        }

        /*
          Assume that variable bit rate is enabled. Also assume
          that there is only one frame per packet.
        */
        p_sys->p_header->vbr = 1;
        p_sys->p_header->frames_per_packet = 1;

        p_dec->fmt_out.audio.i_channels = p_sys->p_header->nb_channels;
        p_dec->fmt_out.audio.i_physical_channels =
            vlc_chan_maps[p_sys->p_header->nb_channels];
        p_dec->fmt_out.audio.i_rate = p_sys->p_header->rate;

        if ( FUNC18( &speex_nb_mode,
                               SPEEX_MODE_FRAME_SIZE,
                               &i_speex_frame_size ) )
        {
            FUNC10( p_dec, "Could not determine the frame size." );
            FUNC14( p_sys->p_state );
            FUNC8( p_sys->p_header );
            return VLCDEC_SUCCESS;
        }
        p_dec->fmt_out.audio.i_bytes_per_frame = i_speex_frame_size;

        FUNC3(&p_sys->end_date, p_sys->p_header->rate, 1);
    }

    /*
      If the SpeexBits are initialized but there is
      still no header, an error must be thrown.
    */
    if ( !p_sys->p_header )
    {
        FUNC10( p_dec, "There is no valid Speex header found." );
        return VLCDEC_SUCCESS;
    }

    if ( FUNC1( &p_sys->end_date ) == VLC_TICK_INVALID )
        FUNC4( &p_sys->end_date, p_speex_bit_block->i_dts );

    /*
      Ask for a new audio output buffer and make sure
      we get one.
    */
    if( FUNC7( p_dec ) )
        p_aout_buffer = NULL;
    else
        p_aout_buffer = FUNC5( p_dec,
            p_sys->p_header->frame_size );
    if ( !p_aout_buffer || p_aout_buffer->i_buffer == 0 )
    {
        FUNC10(p_dec, "Oops: No new buffer was returned!");
        return VLCDEC_SUCCESS;
    }

    /*
      Read the Speex payload into the SpeexBits buffer.
    */
    FUNC12( &p_sys->bits,
        (char*)p_speex_bit_block->p_buffer,
        p_speex_bit_block->i_buffer );

    /*
      Decode the input and ensure that no errors
      were encountered.
    */
    i_decode_ret = FUNC13( p_sys->p_state, &p_sys->bits,
            (int16_t*)p_aout_buffer->p_buffer );
    if ( i_decode_ret < 0 )
    {
        FUNC10( p_dec, "Decoding failed. Perhaps we have a bad stream?" );
        return VLCDEC_SUCCESS;
    }

    /*
      Handle date management on the audio output buffer.
    */
    p_aout_buffer->i_pts = FUNC1( &p_sys->end_date );
    p_aout_buffer->i_length = FUNC2( &p_sys->end_date,
        p_sys->p_header->frame_size ) - p_aout_buffer->i_pts;


    p_sys->i_frame_in_packet++;
    FUNC0( p_speex_bit_block );
    FUNC6( p_dec, p_aout_buffer );
    return VLCDEC_SUCCESS;
}