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
typedef  scalar_t__ int32 ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef  TYPE_2__ BgwJob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7(BgwJob *job)
{
	bool started = false;
	int32 materialization_id;
	bool finshed_all_materialization;

	if (!FUNC1())
	{
		started = true;
		FUNC2();
	}

	materialization_id = FUNC6(job->fd.id);
	if (materialization_id < 0)
		FUNC4(ERROR, "cannot find continuous aggregate for job %d", job->fd.id);

	FUNC0();

	/* always materialize verbosely for now */
	finshed_all_materialization = FUNC3(materialization_id, true);

	FUNC2();

	if (!finshed_all_materialization)
		FUNC5(job, "materialize continuous aggregate");

	if (started)
		FUNC0();

	return true;
}