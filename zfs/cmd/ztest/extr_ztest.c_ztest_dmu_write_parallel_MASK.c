#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  od_object; } ;
typedef  TYPE_1__ ztest_od_t ;
typedef  int /*<<< orphan*/  ztest_ds_t ;
typedef  unsigned long long uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DMU_OT_UINT64_OTHER ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  ID_PARALLEL ; 
 unsigned long long SPA_MAXBLOCKSHIFT ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int ZTEST_RANGE_LOCKS ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC5 (int) ; 

void
FUNC6(ztest_ds_t *zd, uint64_t id)
{
	ztest_od_t *od;

	od = FUNC0(sizeof (ztest_od_t), UMEM_NOFAIL);
	uint64_t offset = (1ULL << (FUNC5(20) + 43)) +
	    (FUNC5(ZTEST_RANGE_LOCKS) << SPA_MAXBLOCKSHIFT);

	/*
	 * Have multiple threads write to large offsets in an object
	 * to verify that parallel writes to an object -- even to the
	 * same blocks within the object -- doesn't cause any trouble.
	 */
	FUNC4(od, ID_PARALLEL, FTAG, 0, DMU_OT_UINT64_OTHER, 0, 0, 0);

	if (FUNC3(zd, od, sizeof (ztest_od_t), B_FALSE) != 0)
		return;

	while (FUNC5(10) != 0)
		FUNC2(zd, od->od_object, offset);

	FUNC1(od, sizeof (ztest_od_t));
}