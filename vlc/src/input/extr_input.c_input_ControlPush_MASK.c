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
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_5__ {size_t i_control; int /*<<< orphan*/  lock_control; int /*<<< orphan*/  wait_control; TYPE_2__* control; scalar_t__ is_stopped; } ;
typedef  TYPE_1__ input_thread_private_t ;
struct TYPE_6__ {int i_type; int /*<<< orphan*/  param; } ;
typedef  TYPE_2__ input_control_t ;
typedef  int /*<<< orphan*/  input_control_param_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/  const*) ; 
 size_t INPUT_CONTROL_FIFO_SIZE ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8( input_thread_t *p_input,
                       int i_type, const input_control_param_t *p_param )
{
    input_thread_private_t *sys = FUNC2(p_input);

    FUNC6( &sys->lock_control );
    input_control_t c = {
        .i_type = i_type,
    };
    if( p_param )
        c.param = *p_param;

    size_t i_next_control_idx = FUNC0( p_input, &c );

    if( sys->is_stopped || i_next_control_idx >= INPUT_CONTROL_FIFO_SIZE )
    {
        if( sys->is_stopped )
            FUNC3( p_input, "input control stopped, trashing type=%d",
                     i_type );
        else
            FUNC4( p_input, "input control fifo overflow, trashing type=%d",
                     i_type );
        if( p_param )
            FUNC1( i_type, p_param );
        FUNC7( &sys->lock_control );
        return VLC_EGENERIC;
    }

    sys->control[i_next_control_idx] = c;
    sys->i_control = i_next_control_idx + 1;

    FUNC5( &sys->wait_control );
    FUNC7( &sys->lock_control );
    return VLC_SUCCESS;
}