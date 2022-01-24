#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct decoder_owner {int /*<<< orphan*/  p_fifo; int /*<<< orphan*/  wait_fifo; int /*<<< orphan*/  b_waiting; } ;
typedef  int /*<<< orphan*/  decoder_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_flags; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FLAG_DISCONTINUITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct decoder_owner* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10( decoder_t *p_dec, block_t *p_block, bool b_do_pace )
{
    struct decoder_owner *p_owner = FUNC1( p_dec );

    FUNC6( p_owner->p_fifo );
    if( !b_do_pace )
    {
        /* FIXME: ideally we would check the time amount of data
         * in the FIFO instead of its size. */
        /* 400 MiB, i.e. ~ 50mb/s for 60s */
        if( FUNC4( p_owner->p_fifo ) > 400*1024*1024 )
        {
            FUNC2( p_dec, "decoder/packetizer fifo full (data not "
                      "consumed quickly enough), resetting fifo!" );
            FUNC0( FUNC3( p_owner->p_fifo ) );
            p_block->i_flags |= BLOCK_FLAG_DISCONTINUITY;
        }
    }
    else
    if( !p_owner->b_waiting )
    {   /* The FIFO is not consumed when waiting, so pacing would deadlock VLC.
         * Locking is not necessary as b_waiting is only read, not written by
         * the decoder thread. */
        while( FUNC5( p_owner->p_fifo ) >= 10 )
            FUNC9( p_owner->p_fifo, &p_owner->wait_fifo );
    }

    FUNC7( p_owner->p_fifo, p_block );
    FUNC8( p_owner->p_fifo );
}