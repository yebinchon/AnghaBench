#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ b_supported; } ;
struct decoder_owner {int flushing; int b_waiting; TYPE_2__ cc; int /*<<< orphan*/  thread; int /*<<< orphan*/  lock; scalar_t__ out_pool; scalar_t__ vout_thread_started; int /*<<< orphan*/ * p_vout; int /*<<< orphan*/  wait_request; int /*<<< orphan*/  p_fifo; } ;
struct TYPE_8__ {scalar_t__ i_cat; } ;
struct TYPE_10__ {TYPE_1__ fmt_in; } ;
typedef  TYPE_3__ decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int MAX_CC_DECODERS ; 
 scalar_t__ VIDEO_ES ; 
 int /*<<< orphan*/  VLC_CODEC_CEA608 ; 
 struct decoder_owner* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = FUNC1( p_dec );

    FUNC4( p_owner->thread );

    FUNC6( p_owner->p_fifo );
    p_owner->flushing = true;
    FUNC7( p_owner->p_fifo );

    /* Make sure we aren't waiting/decoding anymore */
    FUNC9( &p_owner->lock );
    p_owner->b_waiting = false;
    FUNC5( &p_owner->wait_request );

    /* If the video output is paused or slow, or if the picture pool size was
     * under-estimated (e.g. greedy video filter, buggy decoder...), the
     * the picture pool may be empty, and the decoder thread or any decoder
     * module worker threads may be stuck waiting for free picture buffers.
     *
     * This unblocks the thread, allowing the decoder module to join all its
     * worker threads (if any) and the decoder thread to terminate. */
    if( p_dec->fmt_in.i_cat == VIDEO_ES && p_owner->p_vout != NULL && p_owner->vout_thread_started )
    {
        if (p_owner->out_pool)
            FUNC3( p_owner->out_pool, true );
    }
    FUNC10( &p_owner->lock );

    FUNC8( p_owner->thread, NULL );

    /* */
    if( p_owner->cc.b_supported )
    {
        for( int i = 0; i < MAX_CC_DECODERS; i++ )
            FUNC2( p_dec, VLC_CODEC_CEA608, i, false );
    }

    /* Delete decoder */
    FUNC0( p_dec );
}