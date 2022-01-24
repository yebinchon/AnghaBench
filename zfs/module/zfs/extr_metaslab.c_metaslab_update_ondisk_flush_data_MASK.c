#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  vdev_top_zap; int /*<<< orphan*/ * vdev_spa; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_10__ {int /*<<< orphan*/  msp_unflushed_txg; } ;
typedef  TYPE_3__ metaslab_unflushed_phys_t ;
struct TYPE_11__ {int ms_id; TYPE_1__* ms_group; } ;
typedef  TYPE_4__ metaslab_t ;
typedef  int /*<<< orphan*/  entry ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_8__ {TYPE_2__* mg_vd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_OTN_UINT64_METADATA ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int ENOENT ; 
 int /*<<< orphan*/  SPA_FEATURE_LOG_SPACEMAP ; 
 int /*<<< orphan*/  SPA_OLD_MAXBLOCKSIZE ; 
 int /*<<< orphan*/  VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 

__attribute__((used)) static void
FUNC9(metaslab_t *ms, dmu_tx_t *tx)
{
	vdev_t *vd = ms->ms_group->mg_vd;
	spa_t *spa = vd->vdev_spa;
	objset_t *mos = FUNC6(spa);

	FUNC0(FUNC5(spa, SPA_FEATURE_LOG_SPACEMAP));

	metaslab_unflushed_phys_t entry = {
		.msp_unflushed_txg = FUNC4(ms),
	};
	uint64_t entry_size = sizeof (entry);
	uint64_t entry_offset = ms->ms_id * entry_size;

	uint64_t object = 0;
	int err = FUNC8(mos, vd->vdev_top_zap,
	    VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS, sizeof (uint64_t), 1,
	    &object);
	if (err == ENOENT) {
		object = FUNC2(mos, DMU_OTN_UINT64_METADATA,
		    SPA_OLD_MAXBLOCKSIZE, DMU_OT_NONE, 0, tx);
		FUNC1(FUNC7(mos, vd->vdev_top_zap,
		    VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS, sizeof (uint64_t), 1,
		    &object, tx));
	} else {
		FUNC1(err);
	}

	FUNC3(FUNC6(spa), object, entry_offset, entry_size,
	    &entry, tx);
}