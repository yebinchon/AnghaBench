#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vibe ;
struct TYPE_13__ {TYPE_3__* vib_entries; TYPE_1__* vib_phys; int /*<<< orphan*/  vib_object; int /*<<< orphan*/  vib_objset; int /*<<< orphan*/  vib_dbuf; } ;
typedef  TYPE_2__ vdev_indirect_births_t ;
struct TYPE_14__ {scalar_t__ vibe_phys_birth_txg; scalar_t__ vibe_offset; } ;
typedef  TYPE_3__ vdev_indirect_birth_entry_phys_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_12__ {int vib_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_3__* FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,scalar_t__) ; 

void
FUNC11(vdev_indirect_births_t *vib,
    uint64_t max_offset, uint64_t txg, dmu_tx_t *tx)
{
	vdev_indirect_birth_entry_phys_t vibe;
	uint64_t old_size;
	uint64_t new_size;
	vdev_indirect_birth_entry_phys_t *new_entries;

	FUNC0(FUNC3(tx));
	FUNC0(FUNC6(FUNC4(tx)));
	FUNC0(FUNC8(vib));

	FUNC2(vib->vib_dbuf, tx);

	vibe.vibe_offset = max_offset;
	vibe.vibe_phys_birth_txg = txg;

	old_size = FUNC7(vib);
	FUNC5(vib->vib_objset, vib->vib_object, old_size, sizeof (vibe),
	    &vibe, tx);
	vib->vib_phys->vib_count++;
	new_size = FUNC7(vib);

	new_entries = FUNC9(new_size, KM_SLEEP);
	if (old_size > 0) {
		FUNC1(vib->vib_entries, new_entries, old_size);
		FUNC10(vib->vib_entries, old_size);
	}
	new_entries[vib->vib_phys->vib_count - 1] = vibe;
	vib->vib_entries = new_entries;
}