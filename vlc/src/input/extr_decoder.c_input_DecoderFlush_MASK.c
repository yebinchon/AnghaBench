#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ i_cat; } ;
struct decoder_owner {int flushing; scalar_t__ frames_countdown; int /*<<< orphan*/  p_fifo; TYPE_1__ fmt; scalar_t__ paused; } ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 scalar_t__ SPU_ES ; 
 scalar_t__ VIDEO_ES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct decoder_owner* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = FUNC1( p_dec );

    FUNC3( p_owner->p_fifo );

    /* Empty the fifo */
    FUNC0( FUNC2( p_owner->p_fifo ) );

    /* Don't need to wait for the DecoderThread to flush. Indeed, if called a
     * second time, this function will clear the FIFO again before anything was
     * dequeued by DecoderThread and there is no need to flush a second time in
     * a row. */
    p_owner->flushing = true;

    /* Flush video/spu decoder when paused: increment frames_countdown in order
     * to display one frame/subtitle */
    if( p_owner->paused
     && ( p_owner->fmt.i_cat == VIDEO_ES || p_owner->fmt.i_cat == SPU_ES )
     && p_owner->frames_countdown == 0 )
        p_owner->frames_countdown++;

    FUNC4( p_owner->p_fifo );

    FUNC5( p_owner->p_fifo );
}