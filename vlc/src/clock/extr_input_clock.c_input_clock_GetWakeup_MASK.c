#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct TYPE_5__ {scalar_t__ stream; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; scalar_t__ i_buffering_duration; int /*<<< orphan*/  drift; TYPE_1__ last; scalar_t__ b_has_reference; } ;
typedef  TYPE_2__ input_clock_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

vlc_tick_t FUNC4( input_clock_t *cl )
{
    vlc_tick_t i_wakeup = 0;

    FUNC2( &cl->lock );

    /* Synchronized, we can wait */
    if( cl->b_has_reference )
        i_wakeup = FUNC1( cl, cl->last.stream + FUNC0( &cl->drift ) - cl->i_buffering_duration );

    FUNC3( &cl->lock );

    return i_wakeup;
}