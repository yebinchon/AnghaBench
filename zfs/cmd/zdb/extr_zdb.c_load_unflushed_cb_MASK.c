#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t vdev_ms_shift; TYPE_3__** vdev_ms; } ;
typedef  TYPE_1__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_9__ {size_t sme_offset; size_t sme_run; size_t sme_vdev; scalar_t__ sme_type; } ;
typedef  TYPE_2__ space_map_entry_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_10__ {int /*<<< orphan*/  ms_allocatable; } ;
typedef  TYPE_3__ metaslab_t ;
typedef  scalar_t__ maptype_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SM_ALLOC ; 
 scalar_t__ SM_FREE ; 
 size_t FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC6(spa_t *spa, space_map_entry_t *sme, uint64_t txg, void *arg)
{
	maptype_t *uic_maptype = arg;

	uint64_t offset = sme->sme_offset;
	uint64_t size = sme->sme_run;
	uint64_t vdev_id = sme->sme_vdev;

	vdev_t *vd = FUNC5(spa, vdev_id);

	/* skip indirect vdevs */
	if (!FUNC4(vd))
		return (0);

	metaslab_t *ms = vd->vdev_ms[offset >> vd->vdev_ms_shift];

	FUNC0(sme->sme_type == SM_ALLOC || sme->sme_type == SM_FREE);
	FUNC0(*uic_maptype == SM_ALLOC || *uic_maptype == SM_FREE);

	if (txg < FUNC1(ms))
		return (0);

	if (*uic_maptype == sme->sme_type)
		FUNC2(ms->ms_allocatable, offset, size);
	else
		FUNC3(ms->ms_allocatable, offset, size);

	return (0);
}