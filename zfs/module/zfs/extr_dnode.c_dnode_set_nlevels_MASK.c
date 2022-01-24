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
struct TYPE_4__ {int dn_nlevels; int /*<<< orphan*/  dn_struct_rwlock; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(dnode_t *dn, int nlevels, dmu_tx_t *tx)
{
	int ret = 0;

	FUNC2(&dn->dn_struct_rwlock, RW_WRITER);

	if (dn->dn_nlevels == nlevels) {
		ret = 0;
		goto out;
	} else if (nlevels < dn->dn_nlevels) {
		ret = FUNC0(EINVAL);
		goto out;
	}

	FUNC1(dn, nlevels, tx);

out:
	FUNC3(&dn->dn_struct_rwlock);
	return (ret);
}