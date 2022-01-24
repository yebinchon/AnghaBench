#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_4__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
typedef  int /*<<< orphan*/  raw1394handle_t ;
typedef  enum raw1394_iso_disposition { ____Placeholder_raw1394_iso_disposition } raw1394_iso_disposition ;
struct TYPE_10__ {int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_3__ block_t ;
struct TYPE_11__ {TYPE_1__* p_ev; int /*<<< orphan*/  lock; int /*<<< orphan*/  p_frame; } ;
typedef  TYPE_4__ access_sys_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock; TYPE_3__* p_frame; int /*<<< orphan*/ * pp_last; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum raw1394_iso_disposition
FUNC8(raw1394handle_t handle, unsigned char *data,
        unsigned int length, unsigned char channel,
        unsigned char tag, unsigned char sy, unsigned int cycle,
        unsigned int dropped)
{
    stream_t *p_access = NULL;
    access_sys_t *p_sys = NULL;
    block_t *p_block = NULL;
    FUNC0(channel); FUNC0(tag);
    FUNC0(sy); FUNC0(cycle); FUNC0(dropped);

    p_access = (stream_t *) FUNC5( handle );
    if( !p_access ) return 0;

    p_sys = p_access->p_sys;

    /* skip empty packets */
    if( length > 16 )
    {
        unsigned char * p = data + 8;
        int section_type = p[ 0 ] >> 5;           /* section type is in bits 5 - 7 */
        int dif_sequence = p[ 1 ] >> 4;           /* dif sequence number is in bits 4 - 7 */
        int dif_block = p[ 2 ];

        FUNC6( &p_sys->p_ev->lock );

        /* if we are at the beginning of a frame, we put the previous
           frame in our output_queue. */
        if( (section_type == 0) && (dif_sequence == 0) )
        {
            FUNC6( &p_sys->lock );
            if( p_sys->p_ev->p_frame )
            {
                /* Push current frame to p_access thread. */
                //p_sys->p_ev->p_frame->i_pts = vlc_tick_now();
                FUNC2( &p_sys->p_frame, p_sys->p_ev->p_frame );
            }
            /* reset list */
            p_sys->p_ev->p_frame = FUNC1( 144000 );
            p_sys->p_ev->pp_last = &p_sys->p_frame;
            FUNC7( &p_sys->lock );
        }

        p_block = p_sys->p_ev->p_frame;
        if( p_block )
        {
            switch ( section_type )
            {
            case 0:    /* 1 Header block */
                /* p[3] |= 0x80; // hack to force PAL data */
                FUNC4( p_block->p_buffer + dif_sequence * 150 * 80, p, 480 );
                break;

            case 1:    /* 2 Subcode blocks */
                FUNC4( p_block->p_buffer + dif_sequence * 150 * 80 + ( 1 + dif_block ) * 80, p, 480 );
                break;

            case 2:    /* 3 VAUX blocks */
                FUNC4( p_block->p_buffer + dif_sequence * 150 * 80 + ( 3 + dif_block ) * 80, p, 480 );
                break;

            case 3:    /* 9 Audio blocks interleaved with video */
                FUNC4( p_block->p_buffer + dif_sequence * 150 * 80 + ( 6 + dif_block * 16 ) * 80, p, 480 );
                break;

            case 4:    /* 135 Video blocks interleaved with audio */
                FUNC4( p_block->p_buffer + dif_sequence * 150 * 80 + ( 7 + ( dif_block / 15 ) + dif_block ) * 80, p, 480 );
                break;

            default:    /* we can´t handle any other data */
                FUNC3( p_block );
                p_block = NULL;
                break;
            }
        }

        FUNC7( &p_sys->p_ev->lock );
    }
    return 0;
}