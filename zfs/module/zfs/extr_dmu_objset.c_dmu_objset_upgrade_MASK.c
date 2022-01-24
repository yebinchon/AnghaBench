#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ os_upgrade_id; scalar_t__ os_upgrade_status; int /*<<< orphan*/  os_upgrade_lock; TYPE_1__* os_spa; int /*<<< orphan*/  os_upgrade_cb; int /*<<< orphan*/  os_upgrade_exit; } ;
typedef  TYPE_2__ objset_t ;
typedef  int /*<<< orphan*/  dmu_objset_upgrade_cb_t ;
struct TYPE_7__ {int /*<<< orphan*/  spa_upgrade_taskq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ TASKQID_INVALID ; 
 int /*<<< orphan*/  TQ_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  dmu_objset_upgrade_task_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  upgrade_tag ; 

__attribute__((used)) static void
FUNC9(objset_t *os, dmu_objset_upgrade_cb_t cb)
{
	if (os->os_upgrade_id != 0)
		return;

	FUNC0(FUNC5(FUNC2(os)));
	FUNC3(FUNC1(os), upgrade_tag);

	FUNC6(&os->os_upgrade_lock);
	if (os->os_upgrade_id == 0 && os->os_upgrade_status == 0) {
		os->os_upgrade_exit = B_FALSE;
		os->os_upgrade_cb = cb;
		os->os_upgrade_id = FUNC8(
		    os->os_spa->spa_upgrade_taskq,
		    dmu_objset_upgrade_task_cb, os, TQ_SLEEP);
		if (os->os_upgrade_id == TASKQID_INVALID) {
			FUNC4(FUNC1(os), upgrade_tag);
			os->os_upgrade_status = ENOMEM;
		}
	}
	FUNC7(&os->os_upgrade_lock);
}