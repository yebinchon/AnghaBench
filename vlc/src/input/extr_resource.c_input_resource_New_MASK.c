#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock_hold; int /*<<< orphan*/  lock; int /*<<< orphan*/ * p_parent; int /*<<< orphan*/  rc; int /*<<< orphan*/  p_vout_dummy; } ;
typedef  TYPE_1__ input_resource_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

input_resource_t *FUNC5( vlc_object_t *p_parent )
{
    input_resource_t *p_resource = FUNC0( 1, sizeof(*p_resource) );
    if( !p_resource )
        return NULL;

    p_resource->p_vout_dummy = FUNC4(p_parent);
    if( !p_resource->p_vout_dummy )
    {
        FUNC1( p_resource );
        return NULL;
    }

    FUNC2( &p_resource->rc );
    p_resource->p_parent = p_parent;
    FUNC3( &p_resource->lock );
    FUNC3( &p_resource->lock_hold );
    return p_resource;
}