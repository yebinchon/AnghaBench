#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zvol_task_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {TYPE_1__* dp_spa; } ;
typedef  TYPE_2__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_4__ {int /*<<< orphan*/  spa_zvol_taskq; } ;

/* Variables and functions */
 int MAXNAMELEN ; 
 int /*<<< orphan*/  TQ_SLEEP ; 
 int /*<<< orphan*/  ZVOL_ASYNC_SET_SNAPDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zvol_task_cb ; 

__attribute__((used)) static int
FUNC4(dsl_pool_t *dp, dsl_dataset_t *ds, void *arg)
{
	char dsname[MAXNAMELEN];
	zvol_task_t *task;
	uint64_t snapdev;

	FUNC0(ds, dsname);
	if (FUNC1(ds, "snapdev", &snapdev) != 0)
		return (0);
	task = FUNC3(ZVOL_ASYNC_SET_SNAPDEV, dsname, NULL, snapdev);
	if (task == NULL)
		return (0);

	(void) FUNC2(dp->dp_spa->spa_zvol_taskq, zvol_task_cb,
	    task, TQ_SLEEP);
	return (0);
}