#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int end_of_input; } ;
typedef  int /*<<< orphan*/  SRC_STATE ;
typedef  TYPE_1__ SRC_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int
FUNC3 (SRC_DATA *src_data, int converter, int channels)
{	SRC_STATE	*src_state ;
	int 		error ;

	if ((src_state = FUNC1 (converter, channels, &error)) == NULL)
		return error ;

	src_data->end_of_input = 1 ; /* Only one buffer worth of input. */

	error = FUNC2 (src_state, src_data) ;

	FUNC0 (src_state) ;

	return error ;
}