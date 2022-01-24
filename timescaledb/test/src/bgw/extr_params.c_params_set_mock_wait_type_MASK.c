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
struct TYPE_5__ {int /*<<< orphan*/  mock_wait_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; TYPE_1__ params; } ;
typedef  TYPE_2__ TestParamsWrapper ;
typedef  int /*<<< orphan*/  MockWaitType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 () ; 

__attribute__((used)) static void
FUNC5(MockWaitType new_val)
{
	TestParamsWrapper *wrapper = FUNC4();

	FUNC0(wrapper != NULL);

	FUNC1(&wrapper->mutex);

	wrapper->params.mock_wait_type = new_val;

	FUNC2(&wrapper->mutex);

	FUNC3(wrapper);
}