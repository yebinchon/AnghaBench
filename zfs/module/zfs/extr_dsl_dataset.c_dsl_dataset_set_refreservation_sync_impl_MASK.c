#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  int /*<<< orphan*/  value ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_9__ {TYPE_4__* ds_dir; int /*<<< orphan*/  ds_lock; scalar_t__ ds_reserved; int /*<<< orphan*/  ds_dbuf; } ;
typedef  TYPE_1__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_11__ {scalar_t__ ds_unique_bytes; } ;
struct TYPE_10__ {int /*<<< orphan*/  dd_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DD_USED_REFRSRV ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_PROP_REFRESERVATION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(dsl_dataset_t *ds,
    zprop_source_t source, uint64_t value, dmu_tx_t *tx)
{
	uint64_t newval;
	uint64_t unique;
	int64_t delta;

	FUNC8(ds, FUNC11(ZFS_PROP_REFRESERVATION),
	    source, sizeof (value), 1, &value, tx);

	FUNC3(FUNC7(ds,
	    FUNC11(ZFS_PROP_REFRESERVATION), &newval));

	FUNC4(ds->ds_dbuf, tx);
	FUNC9(&ds->ds_dir->dd_lock);
	FUNC9(&ds->ds_lock);
	FUNC0(FUNC1(ds));
	unique = FUNC5(ds)->ds_unique_bytes;
	delta = FUNC2(0, (int64_t)(newval - unique)) -
	    FUNC2(0, (int64_t)(ds->ds_reserved - unique));
	ds->ds_reserved = newval;
	FUNC10(&ds->ds_lock);

	FUNC6(ds->ds_dir, DD_USED_REFRSRV, delta, 0, 0, tx);
	FUNC10(&ds->ds_dir->dd_lock);
}