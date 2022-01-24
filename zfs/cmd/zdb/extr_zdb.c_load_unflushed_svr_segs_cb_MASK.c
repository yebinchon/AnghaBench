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
struct TYPE_6__ {size_t vdev_ms_shift; int /*<<< orphan*/ * vdev_indirect_mapping; int /*<<< orphan*/ ** vdev_ms; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  vdev_indirect_mapping_t ;
typedef  size_t uint64_t ;
struct TYPE_7__ {size_t sme_offset; size_t sme_run; scalar_t__ sme_vdev; scalar_t__ sme_type; } ;
typedef  TYPE_2__ space_map_entry_t ;
struct TYPE_8__ {scalar_t__ svr_vdev_id; int /*<<< orphan*/  svr_allocd_segs; } ;
typedef  TYPE_3__ spa_vdev_removal_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  metaslab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SM_ALLOC ; 
 scalar_t__ SM_FREE ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(spa_t *spa, space_map_entry_t *sme,
    uint64_t txg, void *arg)
{
	spa_vdev_removal_t *svr = arg;

	uint64_t offset = sme->sme_offset;
	uint64_t size = sme->sme_run;

	/* skip vdevs we don't care about */
	if (sme->sme_vdev != svr->svr_vdev_id)
		return (0);

	vdev_t *vd = FUNC5(spa, sme->sme_vdev);
	metaslab_t *ms = vd->vdev_ms[offset >> vd->vdev_ms_shift];
	FUNC0(sme->sme_type == SM_ALLOC || sme->sme_type == SM_FREE);

	if (txg < FUNC1(ms))
		return (0);

	vdev_indirect_mapping_t *vim = vd->vdev_indirect_mapping;
	FUNC0(vim != NULL);
	if (offset >= FUNC4(vim))
		return (0);

	if (sme->sme_type == SM_ALLOC)
		FUNC2(svr->svr_allocd_segs, offset, size);
	else
		FUNC3(svr->svr_allocd_segs, offset, size);

	return (0);
}