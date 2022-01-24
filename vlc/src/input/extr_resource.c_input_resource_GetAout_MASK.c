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
struct TYPE_3__ {int b_aout_busy; int /*<<< orphan*/  lock_hold; int /*<<< orphan*/ * p_aout; int /*<<< orphan*/  p_parent; } ;
typedef  TYPE_1__ input_resource_t ;
typedef  int /*<<< orphan*/  audio_output_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

audio_output_t *FUNC5( input_resource_t *p_resource )
{
    audio_output_t *p_aout;

    FUNC3( &p_resource->lock_hold );
    p_aout = p_resource->p_aout;

    if( p_aout == NULL || p_resource->b_aout_busy )
    {
        FUNC2( p_resource->p_parent, "creating audio output" );
        FUNC4( &p_resource->lock_hold );

        p_aout = FUNC0( p_resource->p_parent );
        if( p_aout == NULL )
            return NULL; /* failed */

        FUNC3( &p_resource->lock_hold );
        if( p_resource->p_aout == NULL )
            p_resource->p_aout = p_aout;
    }
    else
        FUNC2( p_resource->p_parent, "reusing audio output" );

    if( p_resource->p_aout == p_aout )
    {
        FUNC1( !p_resource->b_aout_busy );
        p_resource->b_aout_busy = true;
    }
    FUNC4( &p_resource->lock_hold );
    return p_aout;
}