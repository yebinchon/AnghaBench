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
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_5__ {int /*<<< orphan*/  timer_latch; int /*<<< orphan*/  current_time; } ;
struct TYPE_6__ {TYPE_1__ params; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ TestParamsWrapper ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 () ; 

void
FUNC6(int64 new_val, bool set_latch)
{
	TestParamsWrapper *wrapper = FUNC5();

	FUNC0(wrapper != NULL);

	FUNC2(&wrapper->mutex);
	wrapper->params.current_time = new_val;
	FUNC3(&wrapper->mutex);

	if (set_latch)
		FUNC1(&wrapper->params.timer_latch);

	FUNC4(wrapper);
}