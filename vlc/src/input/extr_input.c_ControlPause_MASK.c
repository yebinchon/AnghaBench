#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
typedef  int /*<<< orphan*/  demux_t ;
struct TYPE_4__ {scalar_t__ b_can_pause; int /*<<< orphan*/  p_es_out; TYPE_1__* master; } ;
struct TYPE_3__ {int /*<<< orphan*/ * p_demux; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMUX_SET_PAUSE_STATE ; 
 int PAUSE_S ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC5( input_thread_t *p_input, vlc_tick_t i_control_date )
{
    int i_state = PAUSE_S;

    if( FUNC3(p_input)->b_can_pause )
    {
        demux_t *p_demux = FUNC3(p_input)->master->p_demux;

        if( FUNC0( p_demux, DEMUX_SET_PAUSE_STATE, true ) )
        {
            FUNC4( p_input, "cannot set pause state" );
            return;
        }
    }

    /* */
    if( FUNC1( FUNC3(p_input)->p_es_out, FUNC3(p_input)->b_can_pause,
                              true, i_control_date ) )
    {
        FUNC4( p_input, "cannot set pause state at es_out level" );
        return;
    }

    /* Switch to new state */
    FUNC2( p_input, i_state, i_control_date );
}