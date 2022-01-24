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

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dss_max ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC2(void *new_addr) {
	/*
	 * Get the current end of the DSS as max_cur and assure that dss_max is
	 * up to date.
	 */
	void *max_cur = FUNC1(0);
	if (max_cur == (void *)-1) {
		return NULL;
	}
	FUNC0(&dss_max, max_cur, ATOMIC_RELEASE);
	/* Fixed new_addr can only be supported if it is at the edge of DSS. */
	if (new_addr != NULL && max_cur != new_addr) {
		return NULL;
	}
	return max_cur;
}