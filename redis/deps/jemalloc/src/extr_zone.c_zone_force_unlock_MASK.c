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
typedef  int /*<<< orphan*/  malloc_zone_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 scalar_t__ isthreaded ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int zone_force_lock_pid ; 

__attribute__((used)) static void
FUNC4(malloc_zone_t *zone) {
	/*
	 * zone_force_lock and zone_force_unlock are the entry points to the
	 * forking machinery on OS X.  The tricky thing is, the child is not
	 * allowed to unlock mutexes locked in the parent, even if owned by the
	 * forking thread (and the mutex type we use in OS X will fail an assert
	 * if we try).  In the child, we can get away with reinitializing all
	 * the mutexes, which has the effect of unlocking them.  In the parent,
	 * doing this would mean we wouldn't wake any waiters blocked on the
	 * mutexes we unlock.  So, we record the pid of the current thread in
	 * zone_force_lock, and use that to detect if we're in the parent or
	 * child here, to decide which unlock logic we need.
	 */
	if (isthreaded) {
		FUNC0(zone_force_lock_pid != -1);
		if (FUNC1() == zone_force_lock_pid) {
			FUNC3();
		} else {
			FUNC2();
		}
		zone_force_lock_pid = -1;
	}
}