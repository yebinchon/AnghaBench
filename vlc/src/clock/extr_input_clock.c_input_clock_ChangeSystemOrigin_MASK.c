#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_7__ {int /*<<< orphan*/  system; } ;
struct TYPE_6__ {scalar_t__ system; } ;
struct TYPE_8__ {int b_has_external_clock; int /*<<< orphan*/  lock; TYPE_2__ last; TYPE_1__ ref; scalar_t__ i_external_clock; int /*<<< orphan*/  b_has_reference; } ;
typedef  TYPE_3__ input_clock_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4( input_clock_t *cl, bool b_absolute, vlc_tick_t i_system )
{
    FUNC2( &cl->lock );

    FUNC1( cl->b_has_reference );
    vlc_tick_t i_offset;
    if( b_absolute )
    {
        i_offset = i_system - cl->ref.system - FUNC0( cl );
    }
    else
    {
        if( !cl->b_has_external_clock )
        {
            cl->b_has_external_clock = true;
            cl->i_external_clock     = i_system;
        }
        i_offset = i_system - cl->i_external_clock;
    }

    cl->ref.system += i_offset;
    cl->last.system += i_offset;

    FUNC3( &cl->lock );
}