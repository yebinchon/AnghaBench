#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  os_flags; } ;
typedef  TYPE_1__ objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  OBJSET_FLAG_USERACCOUNTING_COMPLETE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(objset_t *os)
{
	int err = 0;

	if (FUNC4(os))
		return (0);
	if (FUNC1(os))
		return (FUNC0(EINVAL));
	if (!FUNC5(os))
		return (FUNC0(ENOTSUP));

	err = FUNC3(os);
	if (err)
		return (err);

	os->os_flags |= OBJSET_FLAG_USERACCOUNTING_COMPLETE;
	FUNC6(FUNC2(os), 0);
	return (0);
}