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
struct TYPE_3__ {int b_aout_busy; int /*<<< orphan*/  lock_hold; int /*<<< orphan*/  p_parent; int /*<<< orphan*/ * p_aout; } ;
typedef  TYPE_1__ input_resource_t ;
typedef  int /*<<< orphan*/  audio_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5( input_resource_t *p_resource,
                             audio_output_t *p_aout )
{
    FUNC1( p_aout != NULL );

    FUNC3( &p_resource->lock_hold );
    if( p_aout == p_resource->p_aout )
    {
        FUNC1( p_resource->b_aout_busy );
        p_resource->b_aout_busy = false;
        FUNC2( p_resource->p_parent, "keeping audio output" );
        p_aout = NULL;
    }
    else
        FUNC2( p_resource->p_parent, "destroying extra audio output" );
    FUNC4( &p_resource->lock_hold );

    if( p_aout != NULL )
        FUNC0( p_aout );
}