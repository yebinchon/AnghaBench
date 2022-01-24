#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_8__ {int /*<<< orphan*/  dn_struct_rwlock; TYPE_1__* dn_phys; } ;
typedef  TYPE_2__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_7__ {int dn_flags; } ;

/* Variables and functions */
 int DNODE_FLAG_SPILL_BLKPTR ; 
 int /*<<< orphan*/  DNODE_MUST_BE_ALLOCATED ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(objset_t *os, uint64_t object, dmu_tx_t *tx)
{
	dnode_t *dn;
	int err;

	err = FUNC1(os, object, DNODE_MUST_BE_ALLOCATED, 0,
	    FTAG, &dn);
	if (err)
		return (err);

	FUNC4(&dn->dn_struct_rwlock, RW_WRITER);
	if (dn->dn_phys->dn_flags & DNODE_FLAG_SPILL_BLKPTR) {
		FUNC0(dn, tx);
		FUNC3(dn, tx);
	}
	FUNC5(&dn->dn_struct_rwlock);

	FUNC2(dn, FTAG);
	return (err);
}