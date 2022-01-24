#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int vdev_children; scalar_t__ vdev_islog; int /*<<< orphan*/ * vdev_mg; struct TYPE_6__** vdev_child; } ;
typedef  TYPE_1__ vdev_t ;
struct TYPE_7__ {TYPE_1__* spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  metaslab_group_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALLOC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static boolean_t
FUNC4(spa_t *spa)
{
	vdev_t *rvd = spa->spa_root_vdev;
	boolean_t slog_found = B_FALSE;

	FUNC0(FUNC2(spa, SCL_ALLOC, RW_WRITER));

	if (!FUNC3(spa))
		return (B_FALSE);

	for (int c = 0; c < rvd->vdev_children; c++) {
		vdev_t *tvd = rvd->vdev_child[c];
		metaslab_group_t *mg = tvd->vdev_mg;

		if (tvd->vdev_islog) {
			FUNC1(mg);
			slog_found = B_TRUE;
		}
	}

	return (slog_found);
}