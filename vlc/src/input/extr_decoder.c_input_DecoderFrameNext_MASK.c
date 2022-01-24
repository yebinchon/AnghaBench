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
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_2__ {scalar_t__ i_cat; } ;
struct decoder_owner {int /*<<< orphan*/  lock; scalar_t__ p_vout; TYPE_1__ fmt; int /*<<< orphan*/  p_fifo; int /*<<< orphan*/  frames_countdown; int /*<<< orphan*/  paused; } ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 scalar_t__ VIDEO_ES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct decoder_owner* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__*) ; 

void FUNC8( decoder_t *p_dec, vlc_tick_t *pi_duration )
{
    struct decoder_owner *p_owner = FUNC1( p_dec );

    FUNC0( p_owner->paused );
    *pi_duration = 0;

    FUNC2( p_owner->p_fifo );
    p_owner->frames_countdown++;
    FUNC3( p_owner->p_fifo );
    FUNC4( p_owner->p_fifo );

    FUNC5( &p_owner->lock );
    if( p_owner->fmt.i_cat == VIDEO_ES )
    {
        if( p_owner->p_vout )
            FUNC7( p_owner->p_vout, pi_duration );
    }
    FUNC6( &p_owner->lock );
}