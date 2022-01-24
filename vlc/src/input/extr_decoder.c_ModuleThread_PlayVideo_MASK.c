#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_thread_t ;
struct decoder_owner {scalar_t__ i_preroll_end; int b_first; int b_has_data; int paused; scalar_t__ frames_countdown; int /*<<< orphan*/  p_fifo; int /*<<< orphan*/  lock; scalar_t__ b_waiting; int /*<<< orphan*/  wait_acknowledge; int /*<<< orphan*/ * p_vout; int /*<<< orphan*/  dec; } ;
struct TYPE_5__ {scalar_t__ date; int b_force; scalar_t__ b_still; } ;
typedef  TYPE_1__ picture_t ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct decoder_owner*) ; 
 scalar_t__ PREROLL_NONE ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC15( struct decoder_owner *p_owner, picture_t *p_picture )
{
    decoder_t *p_dec = &p_owner->dec;
    vout_thread_t  *p_vout = p_owner->p_vout;

    if( p_picture->date == VLC_TICK_INVALID )
        /* FIXME: VLC_TICK_INVALID -- verify video_output */
    {
        FUNC4( p_dec, "non-dated video buffer received" );
        FUNC5( p_picture );
        return VLC_EGENERIC;
    }

    FUNC10( &p_owner->lock );
    bool prerolled = p_owner->i_preroll_end != PREROLL_NONE;
    if( prerolled && p_owner->i_preroll_end > p_picture->date )
    {
        FUNC11( &p_owner->lock );
        FUNC5( p_picture );
        return VLC_SUCCESS;
    }

    p_owner->i_preroll_end = PREROLL_NONE;

    if( FUNC6(prerolled) )
    {
        FUNC3( p_dec, "end of video preroll" );

        if( p_vout )
            FUNC13( p_vout );
    }

    if( p_owner->b_waiting && !p_owner->b_first )
    {
        p_owner->b_has_data = true;
        FUNC7( &p_owner->wait_acknowledge );
    }

    FUNC0( p_owner );

    if( p_owner->b_waiting )
    {
        FUNC1( p_owner->b_first );
        FUNC3( p_dec, "Received first picture" );
        p_owner->b_first = false;
        p_picture->b_force = true;
    }

    FUNC11( &p_owner->lock );

    /* FIXME: The *input* FIFO should not be locked here. This will not work
     * properly if/when pictures are queued asynchronously. */
    FUNC8( p_owner->p_fifo );
    if( FUNC6(p_owner->paused) && FUNC2(p_owner->frames_countdown > 0) )
        p_owner->frames_countdown--;
    FUNC9( p_owner->p_fifo );

    /* */
    if( p_vout == NULL )
    {
        FUNC5( p_picture );
        return VLC_EGENERIC;
    }

    if( p_picture->b_still )
    {
        /* Ensure no earlier higher pts breaks still state */
        FUNC12( p_vout, p_picture->date );
    }
    FUNC14( p_vout, p_picture );

    return VLC_SUCCESS;
}