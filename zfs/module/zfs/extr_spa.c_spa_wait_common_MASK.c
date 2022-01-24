#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_wait_activity_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  spa_activities_lock; int /*<<< orphan*/  spa_waiters_cv; int /*<<< orphan*/  spa_waiters; int /*<<< orphan*/  spa_activities_cv; scalar_t__ spa_waiters_cancel; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int EINTR ; 
 int EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  ZPOOL_WAIT_INITIALIZE ; 
 int /*<<< orphan*/  ZPOOL_WAIT_NUM_ACTIVITIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,TYPE_1__**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(const char *pool, zpool_wait_activity_t activity,
    boolean_t use_tag, uint64_t tag, boolean_t *waited)
{
	/*
	 * The tag is used to distinguish between instances of an activity.
	 * 'initialize' is the only activity that we use this for. The other
	 * activities can only have a single instance in progress in a pool at
	 * one time, making the tag unnecessary.
	 *
	 * There can be multiple devices being replaced at once, but since they
	 * all finish once resilvering finishes, we don't bother keeping track
	 * of them individually, we just wait for them all to finish.
	 */
	if (use_tag && activity != ZPOOL_WAIT_INITIALIZE)
		return (EINVAL);

	if (activity < 0 || activity >= ZPOOL_WAIT_NUM_ACTIVITIES)
		return (EINVAL);

	spa_t *spa;
	int error = FUNC6(pool, &spa, FTAG);
	if (error != 0)
		return (error);

	/*
	 * Increment the spa's waiter count so that we can call spa_close and
	 * still ensure that the spa_t doesn't get freed before this thread is
	 * finished with it when the pool is exported. We want to call spa_close
	 * before we start waiting because otherwise the additional ref would
	 * prevent the pool from being exported or destroyed throughout the
	 * potentially long wait.
	 */
	FUNC2(&spa->spa_activities_lock);
	spa->spa_waiters++;
	FUNC5(spa, FTAG);

	*waited = B_FALSE;
	for (;;) {
		boolean_t in_progress;
		error = FUNC4(spa, activity, use_tag, tag,
		    &in_progress);

		if (error || !in_progress || spa->spa_waiters_cancel)
			break;

		*waited = B_TRUE;

		if (FUNC1(&spa->spa_activities_cv,
		    &spa->spa_activities_lock) == 0) {
			error = EINTR;
			break;
		}
	}

	spa->spa_waiters--;
	FUNC0(&spa->spa_waiters_cv);
	FUNC3(&spa->spa_activities_lock);

	return (error);
}