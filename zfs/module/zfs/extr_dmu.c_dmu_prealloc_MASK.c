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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(objset_t *os, uint64_t object, uint64_t offset, uint64_t size,
    dmu_tx_t *tx)
{
	dmu_buf_t **dbp;
	int numbufs, i;

	if (size == 0)
		return;

	FUNC0(0 == FUNC1(os, object, offset, size,
	    FALSE, FTAG, &numbufs, &dbp));

	for (i = 0; i < numbufs; i++) {
		dmu_buf_t *db = dbp[i];

		FUNC3(db, tx);
	}
	FUNC2(dbp, numbufs, FTAG);
}