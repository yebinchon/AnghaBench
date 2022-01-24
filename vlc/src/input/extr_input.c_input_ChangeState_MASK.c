#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_2__ {int i_state; int /*<<< orphan*/  p_item; } ;

/* Variables and functions */
 int ERROR_S ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3( input_thread_t *p_input, int i_state,
                               vlc_tick_t state_date )
{
    if( FUNC2(p_input)->i_state == i_state )
        return;

    FUNC2(p_input)->i_state = i_state;
    if( i_state == ERROR_S )
        FUNC1( FUNC2(p_input)->p_item, true );
    FUNC0( p_input, i_state, state_date );
}