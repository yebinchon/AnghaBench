#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;
struct TYPE_13__ {scalar_t__ os_upgrade_id; int os_upgrade_status; TYPE_1__* os_spa; int /*<<< orphan*/  os_upgrade_lock; } ;
typedef  TYPE_3__ objset_t ;
struct TYPE_11__ {int /*<<< orphan*/  spa_upgrade_taskq; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DS_HOLD_FLAG_DECRYPT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC11(zfs_cmd_t *zc)
{
	objset_t *os;
	int error;

	error = FUNC1(zc->zc_name, B_TRUE, FTAG, &os);
	if (error != 0)
		return (error);

	if (FUNC5(os) ||
	    FUNC4(os)) {
		FUNC8(&os->os_upgrade_lock);
		if (os->os_upgrade_id == 0) {
			/* clear potential error code and retry */
			os->os_upgrade_status = 0;
			FUNC9(&os->os_upgrade_lock);

			FUNC2(os);
		} else {
			FUNC9(&os->os_upgrade_lock);
		}

		FUNC7(FUNC3(os), FTAG);

		FUNC10(os->os_spa->spa_upgrade_taskq, os->os_upgrade_id);
		error = os->os_upgrade_status;
	} else {
		FUNC7(FUNC3(os), FTAG);
	}

	FUNC6(FUNC0(os), DS_HOLD_FLAG_DECRYPT, FTAG);

	return (error);
}