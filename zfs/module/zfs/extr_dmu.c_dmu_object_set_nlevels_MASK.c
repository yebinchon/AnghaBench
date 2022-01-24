#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dnode_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

int
FUNC3(objset_t *os, uint64_t object, int nlevels, dmu_tx_t *tx)
{
	dnode_t *dn;
	int err;

	err = FUNC0(os, object, FTAG, &dn);
	if (err)
		return (err);
	err = FUNC2(dn, nlevels, tx);
	FUNC1(dn, FTAG);
	return (err);
}