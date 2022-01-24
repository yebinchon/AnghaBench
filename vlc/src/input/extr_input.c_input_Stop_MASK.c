#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_4__ {size_t i_control; int is_stopped; int /*<<< orphan*/  interrupt; int /*<<< orphan*/  lock_control; int /*<<< orphan*/  wait_control; TYPE_2__* control; } ;
typedef  TYPE_1__ input_thread_private_t ;
struct TYPE_5__ {int /*<<< orphan*/  param; int /*<<< orphan*/  i_type; } ;
typedef  TYPE_2__ input_control_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6( input_thread_t *p_input )
{
    input_thread_private_t *sys = FUNC1(p_input);

    FUNC4( &sys->lock_control );
    /* Discard all pending controls */
    for( size_t i = 0; i < sys->i_control; i++ )
    {
        input_control_t *ctrl = &sys->control[i];
        FUNC0( ctrl->i_type, &ctrl->param );
    }
    sys->i_control = 0;
    sys->is_stopped = true;
    FUNC2( &sys->wait_control );
    FUNC5( &sys->lock_control );
    FUNC3( &sys->interrupt );
}