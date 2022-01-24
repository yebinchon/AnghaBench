#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_5__ {int /*<<< orphan*/  dn_struct_rwlock; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(objset_t *os, uint64_t object, uint64_t maxblkid,
    dmu_tx_t *tx)
{
	dnode_t *dn;
	int err;

	err = FUNC0(os, object, FTAG, &dn);
	if (err)
		return (err);
	FUNC3(&dn->dn_struct_rwlock, RW_WRITER);
	FUNC1(dn, maxblkid, tx, B_FALSE, B_TRUE);
	FUNC4(&dn->dn_struct_rwlock);
	FUNC2(dn, FTAG);
	return (0);
}