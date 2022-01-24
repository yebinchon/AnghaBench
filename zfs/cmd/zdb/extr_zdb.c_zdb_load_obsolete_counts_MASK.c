#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ vdev_id; int /*<<< orphan*/  vdev_asize; int /*<<< orphan*/ * vdev_obsolete_sm; TYPE_2__* vdev_spa; int /*<<< orphan*/ * vdev_indirect_mapping; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  vdev_indirect_mapping_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  space_map_t ;
struct TYPE_8__ {scalar_t__ scip_vdev; scalar_t__ scip_prev_obsolete_sm_object; } ;
struct TYPE_7__ {int /*<<< orphan*/  spa_meta_objset; TYPE_3__ spa_condensing_indirect_phys; } ;
typedef  TYPE_2__ spa_t ;
typedef  TYPE_3__ spa_condensing_indirect_phys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__*) ; 

__attribute__((used)) static uint32_t *
FUNC7(vdev_t *vd)
{
	vdev_indirect_mapping_t *vim = vd->vdev_indirect_mapping;
	spa_t *spa = vd->vdev_spa;
	spa_condensing_indirect_phys_t *scip =
	    &spa->spa_condensing_indirect_phys;
	uint64_t obsolete_sm_object;
	uint32_t *counts;

	FUNC1(FUNC6(vd, &obsolete_sm_object));
	FUNC0(obsolete_sm_object != 0, vd->vdev_obsolete_sm != NULL);
	counts = FUNC4(vim);
	if (vd->vdev_obsolete_sm != NULL) {
		FUNC5(vim, counts,
		    vd->vdev_obsolete_sm);
	}
	if (scip->scip_vdev == vd->vdev_id &&
	    scip->scip_prev_obsolete_sm_object != 0) {
		space_map_t *prev_obsolete_sm = NULL;
		FUNC1(FUNC3(&prev_obsolete_sm, spa->spa_meta_objset,
		    scip->scip_prev_obsolete_sm_object, 0, vd->vdev_asize, 0));
		FUNC5(vim, counts,
		    prev_obsolete_sm);
		FUNC2(prev_obsolete_sm);
	}
	return (counts);
}