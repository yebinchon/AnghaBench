#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  p_vout_dummy; int /*<<< orphan*/  lock; int /*<<< orphan*/  lock_hold; int /*<<< orphan*/ * p_aout; int /*<<< orphan*/  rc; } ;
typedef  TYPE_1__ input_resource_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7( input_resource_t *p_resource )
{
    if( !FUNC4( &p_resource->rc ) )
        return;

    FUNC0( p_resource );
    FUNC1( p_resource );
    if( p_resource->p_aout != NULL )
        FUNC2( p_resource->p_aout );

    FUNC5( &p_resource->lock_hold );
    FUNC5( &p_resource->lock );
    FUNC6( p_resource->p_vout_dummy );
    FUNC3( p_resource );
}