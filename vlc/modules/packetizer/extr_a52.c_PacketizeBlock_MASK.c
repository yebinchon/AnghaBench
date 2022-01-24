#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  strmtyp; } ;
struct TYPE_21__ {TYPE_1__ eac3; } ;
struct TYPE_23__ {int /*<<< orphan*/  i_size; TYPE_2__ bs; int /*<<< orphan*/  b_eac3; } ;
typedef  TYPE_4__ vlc_a52_header_t ;
typedef  int uint8_t ;
struct TYPE_22__ {int /*<<< orphan*/  i_profile; int /*<<< orphan*/  i_codec; } ;
struct TYPE_24__ {TYPE_3__ fmt_out; TYPE_6__* p_sys; } ;
typedef  TYPE_5__ decoder_t ;
struct TYPE_25__ {int i_state; int b_discontuinity; int /*<<< orphan*/  bytestream; int /*<<< orphan*/  i_input_size; TYPE_4__ frame; } ;
typedef  TYPE_6__ decoder_sys_t ;
struct TYPE_26__ {int i_flags; int /*<<< orphan*/  i_dts; int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_7__ block_t ;

/* Variables and functions */
 int BLOCK_FLAG_CORRUPTED ; 
 int BLOCK_FLAG_DISCONTINUITY ; 
 int /*<<< orphan*/  EAC3_STRMTYP_DEPENDENT ; 
 TYPE_7__* FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
#define  STATE_GET_DATA 133 
#define  STATE_HEADER 132 
#define  STATE_NEXT_SYNC 131 
#define  STATE_NOSYNC 130 
#define  STATE_SEND_DATA 129 
#define  STATE_SYNC 128 
 int VLC_A52_MIN_HEADER_SIZE ; 
 int /*<<< orphan*/  VLC_A52_PROFILE_EAC3_DEPENDENT ; 
 int /*<<< orphan*/  VLC_CODEC_A52 ; 
 int /*<<< orphan*/  VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int*,int) ; 

__attribute__((used)) static block_t *FUNC15( decoder_t *p_dec, block_t **pp_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    uint8_t p_header[VLC_A52_MIN_HEADER_SIZE];
    block_t *p_out_buffer;

    block_t *p_block = pp_block ? *pp_block : NULL;

    if( p_block )
    {
        if( p_block->i_flags & (BLOCK_FLAG_DISCONTINUITY | BLOCK_FLAG_CORRUPTED) )
        {
            /* First always drain complete blocks before discontinuity */
            block_t *p_drain = FUNC15( p_dec, NULL );
            if(p_drain)
                return p_drain;

            FUNC1( p_dec );

            if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
            {
                FUNC8( p_block );
                return NULL;
            }
        }

        FUNC4( &p_sys->bytestream, p_block );
    }

    while( 1 )
    {
        switch( p_sys->i_state )
        {
        case STATE_NOSYNC:
            while( FUNC6( &p_sys->bytestream, p_header, 2 )
                   == VLC_SUCCESS )
            {
                if( p_header[0] == 0x0b && p_header[1] == 0x77 )
                {
                    p_sys->i_state = STATE_SYNC;
                    break;
                }
                FUNC9( &p_sys->bytestream );
            }
            if( p_sys->i_state != STATE_SYNC )
            {
                FUNC2( &p_sys->bytestream );

                /* Need more data */
                return NULL;
            }
            /* fallthrough */

        case STATE_SYNC:
            p_sys->i_state = STATE_HEADER;
            /* fallthrough */

        case STATE_HEADER:
            /* Get A/52 frame header (VLC_A52_HEADER_SIZE bytes) */
            if( FUNC6( &p_sys->bytestream, p_header,
                                 VLC_A52_MIN_HEADER_SIZE ) != VLC_SUCCESS )
            {
                /* Need more data */
                return NULL;
            }

            /* Check if frame is valid and get frame info */
            if( FUNC14( &p_sys->frame, p_header,
                                      VLC_A52_MIN_HEADER_SIZE ) != VLC_SUCCESS )
            {
                FUNC12( p_dec, "emulated sync word" );
                FUNC9( &p_sys->bytestream );
                p_sys->i_state = STATE_NOSYNC;
                break;
            }

            if( p_sys->frame.b_eac3 && p_sys->frame.bs.eac3.strmtyp == EAC3_STRMTYP_DEPENDENT )
            {
                FUNC13( p_dec, "starting with dependent stream, skip it" );
                p_sys->i_state = STATE_NOSYNC;
                if( FUNC10( &p_sys->bytestream,
                                     p_sys->frame.i_size ) != VLC_SUCCESS )
                    return NULL;
                break;
            }

            p_sys->i_input_size = p_sys->frame.i_size;
            p_sys->i_state = STATE_NEXT_SYNC;
            /* fallthrough */

        case STATE_NEXT_SYNC:
            /* Check if next expected frame contains the sync word */
            if( FUNC7( &p_sys->bytestream, p_sys->i_input_size,
                                       p_header, VLC_A52_MIN_HEADER_SIZE )
                                       != VLC_SUCCESS )
            {
                if( p_block == NULL ) /* drain */
                {
                    p_sys->i_state = STATE_GET_DATA;
                    break;
                }
                /* Need more data */
                return NULL;
            }

            if( p_header[0] == 0 || p_header[1] == 0 )
            {
                /* A52 wav files and audio CD's use stuffing */
                p_sys->i_state = STATE_GET_DATA;
                break;
            }

            if( p_header[0] != 0x0b || p_header[1] != 0x77 )
            {
                FUNC12( p_dec, "emulated sync word "
                         "(no sync on following frame)" );
                p_sys->i_state = STATE_NOSYNC;
                FUNC9( &p_sys->bytestream );
                break;
            }

            vlc_a52_header_t a52;
            if( !FUNC14( &a52, p_header, VLC_A52_MIN_HEADER_SIZE )
             && a52.b_eac3 && a52.bs.eac3.strmtyp == EAC3_STRMTYP_DEPENDENT )
            {
                p_sys->i_input_size += a52.i_size;
                p_dec->fmt_out.i_codec = VLC_CODEC_A52;
                p_dec->fmt_out.i_profile = VLC_A52_PROFILE_EAC3_DEPENDENT;
            }

            p_sys->i_state = STATE_GET_DATA;
            break;

        case STATE_GET_DATA:
            /* Make sure we have enough data. */
            if( FUNC11( &p_sys->bytestream,
                                 p_sys->i_input_size ) != VLC_SUCCESS )
            {
                /* Need more data */
                return NULL;
            }
            p_sys->i_state = STATE_SEND_DATA;
            /* fallthrough */

        case STATE_SEND_DATA:
            if( !(p_out_buffer = FUNC0( p_dec )) )
            {
                return NULL;
            }

            /* Copy the whole frame into the buffer. When we reach this point
             * we already know we have enough data available. */
            FUNC5( &p_sys->bytestream, p_out_buffer->p_buffer,
                            p_out_buffer->i_buffer );

            p_sys->i_state = STATE_NOSYNC;

            if( p_out_buffer->i_dts == VLC_TICK_INVALID )
            {
                FUNC8( p_out_buffer );
                return NULL;
            }

            if( p_sys->b_discontuinity )
            {
                p_out_buffer->i_flags |= BLOCK_FLAG_DISCONTINUITY;
                p_sys->b_discontuinity = false;
            }

            /* So p_block doesn't get re-added several times */
            if( pp_block )
                *pp_block = FUNC3( &p_sys->bytestream );

            return p_out_buffer;
        }
    }
}