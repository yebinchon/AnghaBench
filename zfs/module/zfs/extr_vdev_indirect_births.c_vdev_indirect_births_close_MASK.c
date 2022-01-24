#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* vib_phys; int /*<<< orphan*/ * vib_dbuf; scalar_t__ vib_object; int /*<<< orphan*/ * vib_objset; int /*<<< orphan*/ * vib_entries; } ;
typedef  TYPE_2__ vdev_indirect_births_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {scalar_t__ vib_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(vdev_indirect_births_t *vib)
{
	FUNC0(FUNC4(vib));

	if (vib->vib_phys->vib_count > 0) {
		uint64_t births_size = FUNC3(vib);

		FUNC5(vib->vib_entries, births_size);
		vib->vib_entries = NULL;
	}

	FUNC1(vib->vib_dbuf, vib);

	vib->vib_objset = NULL;
	vib->vib_object = 0;
	vib->vib_dbuf = NULL;
	vib->vib_phys = NULL;

	FUNC2(vib, sizeof (*vib));
}