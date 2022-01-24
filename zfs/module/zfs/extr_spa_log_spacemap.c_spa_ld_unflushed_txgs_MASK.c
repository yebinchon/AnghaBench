#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ vdev_top_zap; size_t vdev_ms_count; TYPE_4__** vdev_ms; TYPE_2__* vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_11__ {int /*<<< orphan*/  spa_flushed_ms_lock; int /*<<< orphan*/  spa_metaslabs_by_flushed; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_12__ {scalar_t__ msp_unflushed_txg; } ;
typedef  TYPE_3__ metaslab_unflushed_phys_t ;
struct TYPE_13__ {size_t ms_id; scalar_t__ ms_unflushed_txg; } ;
typedef  TYPE_4__ metaslab_t ;
typedef  int /*<<< orphan*/  entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int /*<<< orphan*/  VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,size_t,size_t,size_t,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int,size_t*) ; 

__attribute__((used)) static int
FUNC8(vdev_t *vd)
{
	spa_t *spa = vd->vdev_spa;
	objset_t *mos = FUNC6(spa);

	if (vd->vdev_top_zap == 0)
		return (0);

	uint64_t object = 0;
	int error = FUNC7(mos, vd->vdev_top_zap,
	    VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS,
	    sizeof (uint64_t), 1, &object);
	if (error == ENOENT)
		return (0);
	else if (error != 0) {
		FUNC5(spa, "spa_ld_unflushed_txgs(): failed at "
		    "zap_lookup(vdev_top_zap=%llu) [error %d]",
		    (u_longlong_t)vd->vdev_top_zap, error);
		return (error);
	}

	for (uint64_t m = 0; m < vd->vdev_ms_count; m++) {
		metaslab_t *ms = vd->vdev_ms[m];
		FUNC0(ms != NULL);

		metaslab_unflushed_phys_t entry;
		uint64_t entry_size = sizeof (entry);
		uint64_t entry_offset = ms->ms_id * entry_size;

		error = FUNC2(mos, object,
		    entry_offset, entry_size, &entry, 0);
		if (error != 0) {
			FUNC5(spa, "spa_ld_unflushed_txgs(): "
			    "failed at dmu_read(obj=%llu) [error %d]",
			    (u_longlong_t)object, error);
			return (error);
		}

		ms->ms_unflushed_txg = entry.msp_unflushed_txg;
		if (ms->ms_unflushed_txg != 0) {
			FUNC3(&spa->spa_flushed_ms_lock);
			FUNC1(&spa->spa_metaslabs_by_flushed, ms);
			FUNC4(&spa->spa_flushed_ms_lock);
		}
	}
	return (0);
}