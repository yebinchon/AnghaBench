#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ ds_reserved; scalar_t__ ds_quota; int /*<<< orphan*/  ds_bp_rwlock; int /*<<< orphan*/  ds_dir; } ;
typedef  TYPE_1__ dsl_dataset_t ;
struct TYPE_6__ {scalar_t__ ds_referenced_bytes; scalar_t__ ds_unique_bytes; int /*<<< orphan*/  ds_bp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ DN_MAX_OBJECT ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(dsl_dataset_t *ds,
    uint64_t *refdbytesp, uint64_t *availbytesp,
    uint64_t *usedobjsp, uint64_t *availobjsp)
{
	*refdbytesp = FUNC2(ds)->ds_referenced_bytes;
	*availbytesp = FUNC3(ds->ds_dir, NULL, 0, TRUE);
	if (ds->ds_reserved > FUNC2(ds)->ds_unique_bytes)
		*availbytesp +=
		    ds->ds_reserved - FUNC2(ds)->ds_unique_bytes;
	if (ds->ds_quota != 0) {
		/*
		 * Adjust available bytes according to refquota
		 */
		if (*refdbytesp < ds->ds_quota)
			*availbytesp = FUNC1(*availbytesp,
			    ds->ds_quota - *refdbytesp);
		else
			*availbytesp = 0;
	}
	FUNC4(&ds->ds_bp_rwlock, RW_READER, FTAG);
	*usedobjsp = FUNC0(&FUNC2(ds)->ds_bp);
	FUNC5(&ds->ds_bp_rwlock, FTAG);
	*availobjsp = DN_MAX_OBJECT - *usedobjsp;
}