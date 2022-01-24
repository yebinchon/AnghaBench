#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  raidz_test_opts_t ;
struct TYPE_2__ {scalar_t__ rto_sanity; } ;

/* Variables and functions */
 int RAND_MAX ; 
 int /*<<< orphan*/  SWEEP_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  failed_opts ; 
 int /*<<< orphan*/  free_slots ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 
 TYPE_1__ rto_opts ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sem_cv ; 
 int /*<<< orphan*/  sem_mtx ; 
 int /*<<< orphan*/  sweep_state ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	int err = 0;
	raidz_test_opts_t *opts = (raidz_test_opts_t *)arg;
	FUNC0(opts != NULL);

	err = FUNC6(opts);

	if (rto_opts.rto_sanity) {
		/* 25% chance that a sweep test fails */
		if (FUNC5() < (RAND_MAX/4))
			err = 1;
	}

	if (0 != err) {
		FUNC3(&sem_mtx);
		FUNC2(&failed_opts, opts, sizeof (raidz_test_opts_t));
		sweep_state = SWEEP_ERROR;
		FUNC4(&sem_mtx);
	}

	FUNC8(opts, sizeof (raidz_test_opts_t));

	/* signal the next thread */
	FUNC3(&sem_mtx);
	free_slots++;
	FUNC1(&sem_cv);
	FUNC4(&sem_mtx);

	FUNC7();
}