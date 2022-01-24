#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  ogg_packet ;
struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_12__ {int /*<<< orphan*/  end_date; } ;
typedef  TYPE_2__ decoder_sys_t ;
struct TYPE_13__ {int i_flags; scalar_t__ i_pts; int /*<<< orphan*/  i_nb_samples; int /*<<< orphan*/  i_length; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int BLOCK_FLAG_CORRUPTED ; 
 int BLOCK_FLAG_DISCONTINUITY ; 
 int BLOCK_FLAG_END_OF_SEQUENCE ; 
 TYPE_3__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static block_t *FUNC5( decoder_t *p_dec, ogg_packet *p_oggpacket,
                               block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( p_block->i_flags & (BLOCK_FLAG_CORRUPTED|BLOCK_FLAG_DISCONTINUITY) )
    {
        FUNC1( p_dec );
        if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
        {
            FUNC2( p_block );
            return NULL;
        }
    }

    /* Date management */
    if( p_block->i_pts != VLC_TICK_INVALID &&
        p_block->i_pts != FUNC3( &p_sys->end_date ) )
    {
        FUNC4( &p_sys->end_date, p_block->i_pts );
    }

    if( FUNC3( &p_sys->end_date ) == VLC_TICK_INVALID )
    {
        /* We've just started the stream, wait for the first PTS. */
        FUNC2( p_block );
        return NULL;
    }

    /* trimming info */
    vlc_tick_t i_max_duration = (p_block->i_flags & BLOCK_FLAG_END_OF_SEQUENCE) ?
                             p_block->i_length : 0;

    block_t *p_aout_buffer = FUNC0( p_dec, p_oggpacket,
                                           p_block->i_nb_samples,
                                           i_max_duration );

    FUNC2( p_block );
    return p_aout_buffer;
}