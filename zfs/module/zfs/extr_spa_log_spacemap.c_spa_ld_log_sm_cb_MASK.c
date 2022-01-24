#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t vdev_ms_shift; TYPE_4__** vdev_ms; } ;
typedef  TYPE_1__ vdev_t ;
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {size_t sme_offset; size_t sme_run; int sme_type; int /*<<< orphan*/  sme_vdev; } ;
typedef  TYPE_2__ space_map_entry_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_11__ {scalar_t__ slls_txg; int /*<<< orphan*/ * slls_spa; } ;
typedef  TYPE_3__ spa_ld_log_sm_arg_t ;
struct TYPE_12__ {int /*<<< orphan*/  ms_unflushed_frees; int /*<<< orphan*/  ms_unflushed_allocs; int /*<<< orphan*/  ms_loaded; } ;
typedef  TYPE_4__ metaslab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  SM_ALLOC 129 
#define  SM_FREE 128 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(space_map_entry_t *sme, void *arg)
{
	uint64_t offset = sme->sme_offset;
	uint64_t size = sme->sme_run;
	uint32_t vdev_id = sme->sme_vdev;

	spa_ld_log_sm_arg_t *slls = arg;
	spa_t *spa = slls->slls_spa;

	vdev_t *vd = FUNC5(spa, vdev_id);

	/*
	 * If the vdev has been removed (i.e. it is indirect or a hole)
	 * skip this entry. The contents of this vdev have already moved
	 * elsewhere.
	 */
	if (!FUNC4(vd))
		return (0);

	metaslab_t *ms = vd->vdev_ms[offset >> vd->vdev_ms_shift];
	FUNC0(!ms->ms_loaded);

	/*
	 * If we have already flushed entries for this TXG to this
	 * metaslab's space map, then ignore it. Note that we flush
	 * before processing any allocations/frees for that TXG, so
	 * the metaslab's space map only has entries from *before*
	 * the unflushed TXG.
	 */
	if (slls->slls_txg < FUNC1(ms))
		return (0);

	switch (sme->sme_type) {
	case SM_ALLOC:
		FUNC3(offset, offset + size,
		    ms->ms_unflushed_frees, ms->ms_unflushed_allocs);
		break;
	case SM_FREE:
		FUNC3(offset, offset + size,
		    ms->ms_unflushed_allocs, ms->ms_unflushed_frees);
		break;
	default:
		FUNC2("invalid maptype_t");
		break;
	}
	return (0);
}