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
typedef  int /*<<< orphan*/  input_thread_t ;
typedef  int /*<<< orphan*/  input_control_param_t ;
struct TYPE_2__ {int /*<<< orphan*/  is_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(input_thread_t *p_input, int i_type,
                       const input_control_param_t* param )
{
    FUNC1( !FUNC2(p_input)->is_running );
    FUNC0( p_input, i_type, *param );
}