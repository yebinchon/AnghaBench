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
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int ZVOL_HT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_taskq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zvol_htable ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zvol_state_list ; 
 int /*<<< orphan*/  zvol_state_lock ; 

void
FUNC5(void)
{
	FUNC4(NULL);

	/*
	 * The call to "zvol_remove_minors_impl" may dispatch entries to
	 * the system_taskq, but it doesn't wait for those entires to
	 * complete before it returns. Thus, we must wait for all of the
	 * removals to finish, before we can continue.
	 */
	FUNC3(system_taskq, 0);

	FUNC0(zvol_htable, ZVOL_HT_SIZE * sizeof (struct hlist_head));
	FUNC1(&zvol_state_list);
	FUNC2(&zvol_state_lock);
}