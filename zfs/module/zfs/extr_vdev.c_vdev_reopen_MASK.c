#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int vdev_reopening; int /*<<< orphan*/ * vdev_aux; int /*<<< orphan*/  vdev_offline; TYPE_2__* vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
struct TYPE_16__ {int /*<<< orphan*/  spa_l2cache; } ;
typedef  TYPE_2__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ SCL_STATE_ALL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 

void
FUNC11(vdev_t *vd)
{
	spa_t *spa = vd->vdev_spa;

	FUNC0(FUNC3(spa, SCL_STATE_ALL, RW_WRITER) == SCL_STATE_ALL);

	/* set the reopening flag unless we're taking the vdev offline */
	vd->vdev_reopening = !vd->vdev_offline;
	FUNC4(vd);
	(void) FUNC5(vd);

	/*
	 * Call vdev_validate() here to make sure we have the same device.
	 * Otherwise, a device with an invalid label could be successfully
	 * opened in response to vdev_reopen().
	 */
	if (vd->vdev_aux) {
		(void) FUNC9(vd);
		if (FUNC7(vd) && FUNC10(vd) &&
		    vd->vdev_aux == &spa->spa_l2cache &&
		    !FUNC2(vd))
			FUNC1(spa, vd);
	} else {
		(void) FUNC8(vd);
	}

	/*
	 * Reassess parent vdev's health.
	 */
	FUNC6(vd);
}