#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  spa_name; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  ZFS_ERR_DISCARDING_CHECKPOINT 129 
#define  ZFS_ERR_NO_CHECKPOINT 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ztest_checkpoint_lock ; 

__attribute__((used)) static void
FUNC4(spa_t *spa)
{
	FUNC0(FUNC1(&ztest_checkpoint_lock));

	int error = FUNC3(spa->spa_name);

	switch (error) {
	case 0:
	case ZFS_ERR_DISCARDING_CHECKPOINT:
	case ZFS_ERR_NO_CHECKPOINT:
		break;
	default:
		FUNC2(0, "spa_discard_checkpoint(%s) = %d",
		    spa->spa_name, error);
	}

}