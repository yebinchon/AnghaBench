#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  bytes; scalar_t__ packet; } ;
typedef  TYPE_2__ ogg_packet ;
struct TYPE_22__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ decoder_t ;
struct TYPE_23__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  p_state; TYPE_1__* p_header; scalar_t__ b_packetizer; int /*<<< orphan*/  end_date; } ;
typedef  TYPE_4__ decoder_sys_t ;
struct TYPE_24__ {scalar_t__ i_pts; int i_buffer; scalar_t__ p_buffer; } ;
typedef  TYPE_5__ block_t ;
struct TYPE_20__ {int frames_per_packet; int frame_size; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_5__* FUNC1 (TYPE_3__*,TYPE_5__*) ; 
 scalar_t__ VLC_TICK_INVALID ; 
 TYPE_5__* FUNC2 (int) ; 
 TYPE_5__* FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (short*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,short*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static block_t *FUNC16( decoder_t *p_dec, ogg_packet *p_oggpacket,
                               block_t **pp_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_block = *pp_block;

    /* Date management */
    if( p_block && p_block->i_pts != VLC_TICK_INVALID &&
        p_block->i_pts != FUNC5( &p_sys->end_date ) )
    {
        FUNC6( &p_sys->end_date, p_block->i_pts );
    }

    if( FUNC5( &p_sys->end_date ) == VLC_TICK_INVALID )
    {
        /* We've just started the stream, wait for the first PTS. */
        if( p_block ) FUNC4( p_block );
        return NULL;
    }

    *pp_block = NULL; /* To avoid being fed the same packet again */

    if( p_sys->b_packetizer )
    {
        if ( p_sys->p_header->frames_per_packet > 1 )
        {
            short *p_frame_holder = NULL;
            int i_bits_before = 0, i_bits_after = 0, i_bytes_in_speex_frame = 0,
                i_pcm_output_size = 0, i_bits_in_speex_frame = 0;
            block_t *p_new_block = NULL;

            i_pcm_output_size = p_sys->p_header->frame_size;
            p_frame_holder = (short*)FUNC15( sizeof(short)*i_pcm_output_size );

            FUNC9( &p_sys->bits, (char*)p_oggpacket->packet,
                p_oggpacket->bytes);
            i_bits_before = FUNC10( &p_sys->bits );
            FUNC14(p_sys->p_state, &p_sys->bits, p_frame_holder);
            i_bits_after = FUNC10( &p_sys->bits );

            i_bits_in_speex_frame = i_bits_before - i_bits_after;
            i_bytes_in_speex_frame = ( i_bits_in_speex_frame +
                (8 - (i_bits_in_speex_frame % 8)) )
                / 8;

            p_new_block = FUNC2( i_bytes_in_speex_frame );
            FUNC8( p_new_block->p_buffer, 0xff, i_bytes_in_speex_frame );

            /*
             * Copy the first frame in this packet to a new packet.
             */
            FUNC12( &p_sys->bits );
            FUNC13( &p_sys->bits,
                (char*)p_new_block->p_buffer,
                (int)i_bytes_in_speex_frame );

            /*
             * Move the remaining part of the original packet (subsequent
             * frames, if there are any) into the beginning
             * of the original packet so
             * they are preserved following the realloc.
             * Note: Any bits that
             * remain in the initial packet
             * are "filler" if they do not constitute
             * an entire byte.
             */
            if ( i_bits_after > 7 )
            {
                /* round-down since we rounded-up earlier (to include
             * the speex terminator code.
             */
                i_bytes_in_speex_frame--;
                FUNC13( &p_sys->bits,
                    (char*)p_block->p_buffer,
                    p_block->i_buffer - i_bytes_in_speex_frame );
                p_block = FUNC3( p_block,
                    0,
                    p_block->i_buffer-i_bytes_in_speex_frame );
                *pp_block = p_block;
            }
            else
            {
                FUNC11( &p_sys->bits );
            }

            FUNC7( p_frame_holder );
            return FUNC1( p_dec, p_new_block);
        }
        else
        {
                return FUNC1( p_dec, p_block );
        }
    }
    else
    {
        block_t *p_aout_buffer = FUNC0( p_dec, p_oggpacket );

        if( p_block )
            FUNC4( p_block );
        return p_aout_buffer;
    }
}