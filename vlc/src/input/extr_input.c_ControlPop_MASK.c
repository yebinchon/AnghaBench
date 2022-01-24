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
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_5__ {int i_control; int /*<<< orphan*/  lock_control; TYPE_2__* control; int /*<<< orphan*/  wait_control; scalar_t__ is_stopped; } ;
typedef  TYPE_1__ input_thread_private_t ;
typedef  int /*<<< orphan*/  input_control_param_t ;
struct TYPE_6__ {int i_type; int /*<<< orphan*/  param; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC7( input_thread_t *p_input,
                              int *pi_type, input_control_param_t *p_param,
                              vlc_tick_t i_deadline, bool b_postpone_seek )
{
    input_thread_private_t *p_sys = FUNC1(p_input);

    FUNC5( &p_sys->lock_control );
    while( p_sys->i_control <= 0 ||
           ( b_postpone_seek && FUNC0( p_sys->control[0].i_type ) ) )
    {
        if( p_sys->is_stopped )
        {
            FUNC6( &p_sys->lock_control );
            return VLC_EGENERIC;
        }

        if( i_deadline >= 0 )
        {
            if( FUNC3( &p_sys->wait_control, &p_sys->lock_control,
                                    i_deadline ) )
            {
                FUNC6( &p_sys->lock_control );
                return VLC_EGENERIC;
            }
        }
        else
            FUNC4( &p_sys->wait_control, &p_sys->lock_control );
    }

    /* */
    *pi_type = p_sys->control[0].i_type;
    *p_param   = p_sys->control[0].param;

    p_sys->i_control --;
    if( p_sys->i_control > 0 )
        FUNC2( &p_sys->control[0], &p_sys->control[1],
                 sizeof(*p_sys->control) * p_sys->i_control );
    FUNC6( &p_sys->lock_control );

    return VLC_SUCCESS;
}