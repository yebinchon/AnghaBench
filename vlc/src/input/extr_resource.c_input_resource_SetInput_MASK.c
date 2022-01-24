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
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_3__ {scalar_t__ i_vout; scalar_t__ p_vout_free; scalar_t__* pp_vout; int /*<<< orphan*/  lock; int /*<<< orphan*/ * p_input; } ;
typedef  TYPE_1__ input_resource_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3( input_resource_t *p_resource, input_thread_t *p_input )
{
    FUNC1( &p_resource->lock );

    if( p_resource->p_input && !p_input )
        FUNC0( p_resource->i_vout == 0 || p_resource->p_vout_free == p_resource->pp_vout[0] );

    /* */
    p_resource->p_input = p_input;

    FUNC2( &p_resource->lock );
}