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
struct decoder_owner {float output_rate; int /*<<< orphan*/  p_clock; int /*<<< orphan*/  lock; scalar_t__ paused; scalar_t__ b_waiting; } ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 struct decoder_owner* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vlc_tick_t FUNC4( decoder_t *p_dec,
                                       vlc_tick_t system_now, vlc_tick_t i_ts )
{
    struct decoder_owner *p_owner = FUNC0( p_dec );

    FUNC2( &p_owner->lock );
    if( p_owner->b_waiting || p_owner->paused )
        i_ts = VLC_TICK_INVALID;
    float rate = p_owner->output_rate;
    FUNC3( &p_owner->lock );

    if( !p_owner->p_clock || i_ts == VLC_TICK_INVALID )
        return i_ts;

    return FUNC1( p_owner->p_clock, system_now, i_ts, rate );
}