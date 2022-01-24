#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  traverse_data_t ;
struct TYPE_4__ {int dn_nblkptr; int dn_flags; int /*<<< orphan*/ * dn_blkptr; scalar_t__ dn_nlevels; } ;
typedef  TYPE_1__ dnode_phys_t ;

/* Variables and functions */
 int DMU_SPILL_BLKID ; 
 int DNODE_FLAG_SPILL_BLKPTR ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(traverse_data_t *td, const dnode_phys_t *dnp,
    uint64_t objset, uint64_t object)
{
	int j;
	zbookmark_phys_t czb;

	for (j = 0; j < dnp->dn_nblkptr; j++) {
		FUNC1(&czb, objset, object, dnp->dn_nlevels - 1, j);
		FUNC2(td, &dnp->dn_blkptr[j], &czb);
	}

	if (dnp->dn_flags & DNODE_FLAG_SPILL_BLKPTR) {
		FUNC1(&czb, objset, object, 0, DMU_SPILL_BLKID);
		FUNC2(td, FUNC0(dnp), &czb);
	}
}