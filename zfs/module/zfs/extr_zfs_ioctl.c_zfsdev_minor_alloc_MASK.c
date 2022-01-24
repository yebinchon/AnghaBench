#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int minor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ZFSDEV_MAX_MINOR ; 
 int /*<<< orphan*/  ZST_ALL ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfsdev_state_lock ; 

minor_t
FUNC3(void)
{
	static minor_t last_minor = 0;
	minor_t m;

	FUNC0(FUNC1(&zfsdev_state_lock));

	for (m = last_minor + 1; m != last_minor; m++) {
		if (m > ZFSDEV_MAX_MINOR)
			m = 1;
		if (FUNC2(m, ZST_ALL) == NULL) {
			last_minor = m;
			return (m);
		}
	}

	return (0);
}