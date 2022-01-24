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
struct TYPE_5__ {char* name; scalar_t__ error; int /*<<< orphan*/ * list; } ;
typedef  TYPE_1__ minors_job_t ;
typedef  int /*<<< orphan*/  list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TQ_SLEEP ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 scalar_t__ FUNC6 (char const*,char) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 
 int /*<<< orphan*/  system_taskq ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zvol_prefetch_minors_impl ; 

__attribute__((used)) static int
FUNC9(const char *dsname, void *arg)
{
	minors_job_t *j = arg;
	list_t *minors_list = j->list;
	const char *name = j->name;

	FUNC0(FUNC1(&spa_namespace_lock));

	/* skip the designated dataset */
	if (name && FUNC7(dsname, name) == 0)
		return (0);

	/* at this point, the dsname should name a snapshot */
	if (FUNC6(dsname, '@') == 0) {
		FUNC2("zvol_create_snap_minor_cb(): "
		    "%s is not a snapshot name\n", dsname);
	} else {
		minors_job_t *job;
		char *n = FUNC4(dsname);
		if (n == NULL)
			return (0);

		job = FUNC3(sizeof (minors_job_t), KM_SLEEP);
		job->name = n;
		job->list = minors_list;
		job->error = 0;
		FUNC5(minors_list, job);
		/* don't care if dispatch fails, because job->error is 0 */
		FUNC8(system_taskq, zvol_prefetch_minors_impl, job,
		    TQ_SLEEP);
	}

	return (0);
}