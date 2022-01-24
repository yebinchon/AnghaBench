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
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_3__ {scalar_t__ i_vout; int /*<<< orphan*/  lock_hold; int /*<<< orphan*/ ** pp_vout; } ;
typedef  TYPE_1__ input_resource_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

vout_thread_t *FUNC3( input_resource_t *p_resource )
{
    FUNC0( &p_resource->lock_hold );

    vout_thread_t *p_vout = p_resource->i_vout > 0 ? p_resource->pp_vout[0] : NULL;
    if( p_vout )
        FUNC2(p_vout);

    FUNC1( &p_resource->lock_hold );

    return p_vout;
}