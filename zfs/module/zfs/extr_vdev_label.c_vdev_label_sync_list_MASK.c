#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_11__ {int /*<<< orphan*/ * vdev_aux; scalar_t__ vdev_islog; int /*<<< orphan*/  vdev_ishole; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_12__ {int /*<<< orphan*/  spa_config_dirty_list; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vdev_label_sync_ignore_done ; 
 int /*<<< orphan*/  vdev_label_sync_top_done ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(spa_t *spa, int l, uint64_t txg, int flags)
{
	list_t *dl = &spa->spa_config_dirty_list;
	vdev_t *vd;
	zio_t *zio;
	int error;

	/*
	 * Write the new labels to disk.
	 */
	zio = FUNC8(spa, NULL, NULL, flags);

	for (vd = FUNC2(dl); vd != NULL; vd = FUNC3(dl, vd)) {
		uint64_t *good_writes;

		FUNC0(!vd->vdev_ishole);

		good_writes = FUNC1(sizeof (uint64_t), KM_SLEEP);
		zio_t *vio = FUNC7(zio, spa, NULL,
		    (vd->vdev_islog || vd->vdev_aux != NULL) ?
		    vdev_label_sync_ignore_done : vdev_label_sync_top_done,
		    good_writes, flags);
		FUNC4(vio, good_writes, vd, l, txg, flags);
		FUNC6(vio);
	}

	error = FUNC9(zio);

	/*
	 * Flush the new labels to disk.
	 */
	zio = FUNC8(spa, NULL, NULL, flags);

	for (vd = FUNC2(dl); vd != NULL; vd = FUNC3(dl, vd))
		FUNC5(zio, vd);

	(void) FUNC9(zio);

	return (error);
}