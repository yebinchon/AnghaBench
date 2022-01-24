#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int b_has_reference; int b_has_external_clock; int /*<<< orphan*/  lock; int /*<<< orphan*/  i_ts_max; int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ input_clock_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3( input_clock_t *cl )
{
    FUNC1( &cl->lock );

    cl->b_has_reference = false;
    cl->ref = FUNC0( VLC_TICK_INVALID, VLC_TICK_INVALID );
    cl->b_has_external_clock = false;
    cl->i_ts_max = VLC_TICK_INVALID;

    FUNC2( &cl->lock );
}