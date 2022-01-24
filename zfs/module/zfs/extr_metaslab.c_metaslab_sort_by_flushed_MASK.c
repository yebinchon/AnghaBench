#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  ms_id; TYPE_1__* ms_group; int /*<<< orphan*/  ms_unflushed_txg; } ;
typedef  TYPE_3__ metaslab_t ;
struct TYPE_5__ {int /*<<< orphan*/  vdev_id; } ;
struct TYPE_4__ {TYPE_2__* mg_vd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

int
FUNC2(const void *va, const void *vb)
{
	const metaslab_t *a = va;
	const metaslab_t *b = vb;

	int cmp = FUNC0(a->ms_unflushed_txg, b->ms_unflushed_txg);
	if (FUNC1(cmp))
		return (cmp);

	uint64_t a_vdev_id = a->ms_group->mg_vd->vdev_id;
	uint64_t b_vdev_id = b->ms_group->mg_vd->vdev_id;
	cmp = FUNC0(a_vdev_id, b_vdev_id);
	if (cmp)
		return (cmp);

	return (FUNC0(a->ms_id, b->ms_id));
}