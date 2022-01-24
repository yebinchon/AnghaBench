#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_3__ {scalar_t__ i_cat; } ;
struct TYPE_4__ {TYPE_1__ fmt_out; } ;
struct decoder_owner {int flushing; int reset_out_state; int paused; scalar_t__ pause_date; float request_rate; scalar_t__ delay; scalar_t__ frames_countdown; int b_idle; int b_draining; int drained; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_acknowledge; int /*<<< orphan*/  p_fifo; int /*<<< orphan*/ * p_aout; TYPE_2__ dec; int /*<<< orphan*/  wait_fifo; } ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 scalar_t__ AUDIO_ES ; 
 int /*<<< orphan*/  FUNC0 (struct decoder_owner*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct decoder_owner*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct decoder_owner*,float) ; 
 int /*<<< orphan*/  FUNC3 (struct decoder_owner*) ; 
 int /*<<< orphan*/  FUNC4 (struct decoder_owner*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 

__attribute__((used)) static void *FUNC20( void *p_data )
{
    struct decoder_owner *p_owner = (struct decoder_owner *)p_data;
    float rate = 1.f;
    vlc_tick_t delay = 0;
    bool paused = false;

    /* The decoder's main loop */
    FUNC12( p_owner->p_fifo );
    FUNC10( p_owner->p_fifo );

    for( ;; )
    {
        if( p_owner->flushing )
        {   /* Flush before/regardless of pause. We do not want to resume just
             * for the sake of flushing (glitches could otherwise happen). */
            int canc = FUNC18();

            FUNC13( p_owner->p_fifo );

            /* Flush the decoder (and the output) */
            FUNC3( p_owner );

            FUNC12( p_owner->p_fifo );
            FUNC17( canc );

            /* Reset flushing after DecoderThread_ProcessInput in case input_DecoderFlush
             * is called again. This will avoid a second useless flush (but
             * harmless). */
            p_owner->flushing = false;

            continue;
        }

        /* Reset the original pause/rate state when a new aout/vout is created:
         * this will trigger the DecoderThread_ChangePause/DecoderThread_ChangeRate code path
         * if needed. */
        if( p_owner->reset_out_state )
        {
            rate = 1.f;
            paused = false;
            delay = 0;
            p_owner->reset_out_state = false;
        }

        if( paused != p_owner->paused )
        {   /* Update playing/paused status of the output */
            int canc = FUNC18();
            vlc_tick_t date = p_owner->pause_date;

            paused = p_owner->paused;
            FUNC13( p_owner->p_fifo );

            FUNC1( p_owner, paused, date );

            FUNC17( canc );
            FUNC12( p_owner->p_fifo );
            continue;
        }

        if( rate != p_owner->request_rate )
        {
            int canc = FUNC18();

            rate = p_owner->request_rate;
            FUNC13( p_owner->p_fifo );

            FUNC2( p_owner, rate );

            FUNC17( canc );
            FUNC12( p_owner->p_fifo );
        }

        if( delay != p_owner->delay )
        {
            int canc = FUNC18();

            delay = p_owner->delay;
            FUNC13( p_owner->p_fifo );

            FUNC0( p_owner, delay );

            FUNC17( canc );
            FUNC12( p_owner->p_fifo );
        }

        if( p_owner->paused && p_owner->frames_countdown == 0 )
        {   /* Wait for resumption from pause */
            p_owner->b_idle = true;
            FUNC9( &p_owner->wait_acknowledge );
            FUNC14( p_owner->p_fifo );
            p_owner->b_idle = false;
            continue;
        }

        FUNC9( &p_owner->wait_fifo );
        FUNC19(); /* forced expedited cancellation in case of stop */

        block_t *p_block = FUNC11( p_owner->p_fifo );
        if( p_block == NULL )
        {
            if( FUNC6(!p_owner->b_draining) )
            {   /* Wait for a block to decode (or a request to drain) */
                p_owner->b_idle = true;
                FUNC9( &p_owner->wait_acknowledge );
                FUNC14( p_owner->p_fifo );
                p_owner->b_idle = false;
                continue;
            }
            /* We have emptied the FIFO and there is a pending request to
             * drain. Pass p_block = NULL to decoder just once. */
        }

        FUNC13( p_owner->p_fifo );

        int canc = FUNC18();
        FUNC4( p_owner, p_block );

        if( p_block == NULL && p_owner->dec.fmt_out.i_cat == AUDIO_ES )
        {   /* Draining: the decoder is drained and all decoded buffers are
             * queued to the output at this point. Now drain the output. */
            if( p_owner->p_aout != NULL )
                FUNC5( p_owner->p_aout );
        }
        FUNC17( canc );

        /* TODO? Wait for draining instead of polling. */
        FUNC15( &p_owner->lock );
        FUNC12( p_owner->p_fifo );
        if( p_owner->b_draining && (p_block == NULL) )
        {
            p_owner->b_draining = false;
            p_owner->drained = true;
        }
        FUNC9( &p_owner->wait_acknowledge );
        FUNC16( &p_owner->lock );
    }
    FUNC8();
    FUNC7();
}