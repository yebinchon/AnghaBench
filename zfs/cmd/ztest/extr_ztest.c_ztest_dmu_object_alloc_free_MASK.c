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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_OT_UINT64_OTHER ; 
 int /*<<< orphan*/  FTAG ; 
 int OD_ARRAY_SIZE ; 
 size_t SPA_MAXBLOCKSHIFT ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int ZTEST_RANGE_LOCKS ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int) ; 

void
FUNC6(ztest_ds_t *zd, uint64_t id)
{
	ztest_od_t *od;
	int batchsize;
	int size;
	int b;

	size = sizeof (ztest_od_t) * OD_ARRAY_SIZE;
	od = FUNC0(size, UMEM_NOFAIL);
	batchsize = OD_ARRAY_SIZE;

	for (b = 0; b < batchsize; b++)
		FUNC4(od + b, id, FTAG, b, DMU_OT_UINT64_OTHER,
		    0, 0, 0);

	/*
	 * Destroy the previous batch of objects, create a new batch,
	 * and do some I/O on the new objects.
	 */
	if (FUNC3(zd, od, size, B_TRUE) != 0)
		return;

	while (FUNC5(4 * batchsize) != 0)
		FUNC2(zd, od[FUNC5(batchsize)].od_object,
		    FUNC5(ZTEST_RANGE_LOCKS) << SPA_MAXBLOCKSHIFT);

	FUNC1(od, size);
}