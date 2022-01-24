#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  vdev_guid; } ;
typedef  TYPE_1__ vdev_t ;
typedef  unsigned long long uint64_t ;
struct TYPE_9__ {int sav_count; TYPE_1__** sav_vdevs; } ;
struct TYPE_8__ {TYPE_3__ spa_l2cache; } ;
typedef  TYPE_2__ spa_t ;
typedef  TYPE_3__ spa_aux_vdev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned long long*) ; 

void
FUNC4(spa_t *spa)
{
	vdev_t *vd;
	int i;
	spa_aux_vdev_t *sav = &spa->spa_l2cache;

	for (i = 0; i < sav->sav_count; i++) {
		uint64_t pool;

		vd = sav->sav_vdevs[i];
		FUNC0(vd != NULL);

		if (FUNC3(vd->vdev_guid, &pool) &&
		    pool != 0ULL && FUNC2(vd))
			FUNC1(vd);
	}
}