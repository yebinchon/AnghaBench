#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct decoder_owner {int paused; int /*<<< orphan*/  p_fifo; scalar_t__ frames_countdown; int /*<<< orphan*/  pause_date; } ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 struct decoder_owner* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4( decoder_t *p_dec, bool b_paused, vlc_tick_t i_date )
{
    struct decoder_owner *p_owner = FUNC0( p_dec );

    /* Normally, p_owner->b_paused != b_paused here. But if a track is added
     * while the input is paused (e.g. add sub file), then b_paused is
     * (incorrectly) false. FIXME: This is a bug in the decoder owner. */
    FUNC1( p_owner->p_fifo );
    p_owner->paused = b_paused;
    p_owner->pause_date = i_date;
    p_owner->frames_countdown = 0;
    FUNC2( p_owner->p_fifo );
    FUNC3( p_owner->p_fifo );
}