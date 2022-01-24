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
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_4__ {int /*<<< orphan*/  frames; scalar_t__ base; } ;
typedef  TYPE_1__ tt_time_t ;

/* Variables and functions */
 int /*<<< orphan*/  TT_FRAME_RATE ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline vlc_tick_t FUNC2( const tt_time_t *t )
{
    if( !FUNC0( t ) )
        return VLC_TICK_INVALID;
    else
        return t->base + FUNC1( t->frames, TT_FRAME_RATE);
}