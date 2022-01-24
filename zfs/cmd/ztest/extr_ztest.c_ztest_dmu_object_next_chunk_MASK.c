#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* zd_os; } ;
typedef  TYPE_1__ ztest_ds_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  os_obj_lock; int /*<<< orphan*/  os_obj_next_chunk; } ;
typedef  TYPE_2__ objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int dmu_object_alloc_chunk_shift ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(ztest_ds_t *zd, uint64_t id)
{
	objset_t *os = zd->zd_os;
	int dnodes_per_chunk = 1 << dmu_object_alloc_chunk_shift;
	uint64_t object;

	/*
	 * Rewind the global allocator randomly back to a lower object number
	 * to force backfilling and reclamation of recently freed dnodes.
	 */
	FUNC1(&os->os_obj_lock);
	object = FUNC3(os->os_obj_next_chunk);
	os->os_obj_next_chunk = FUNC0(object, dnodes_per_chunk);
	FUNC2(&os->os_obj_lock);
}