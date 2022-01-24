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
struct TYPE_3__ {int /*<<< orphan*/  dd_myname; int /*<<< orphan*/  dd_lock; struct TYPE_3__* dd_parent; } ;
typedef  TYPE_1__ dsl_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(dsl_dir_t *dd)
{
	int result = 0;

	if (dd->dd_parent) {
		/* parent's name + 1 for the "/" */
		result = FUNC4(dd->dd_parent) + 1;
	}

	if (!FUNC0(&dd->dd_lock)) {
		/* see dsl_dir_name */
		FUNC1(&dd->dd_lock);
		result += FUNC3(dd->dd_myname);
		FUNC2(&dd->dd_lock);
	} else {
		result += FUNC3(dd->dd_myname);
	}

	return (result);
}