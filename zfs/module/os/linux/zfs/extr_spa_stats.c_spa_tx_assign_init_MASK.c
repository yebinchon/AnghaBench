#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u_longlong_t ;
struct TYPE_14__ {int count; int size; scalar_t__ private; int /*<<< orphan*/  lock; TYPE_5__* kstat; } ;
struct TYPE_11__ {TYPE_4__ tx_assign_histogram; } ;
struct TYPE_13__ {TYPE_1__ spa_stats; } ;
typedef  TYPE_3__ spa_t ;
typedef  TYPE_4__ spa_history_kstat_t ;
struct TYPE_15__ {int ks_ndata; int ks_data_size; int /*<<< orphan*/  ks_update; TYPE_3__* ks_private; scalar_t__ ks_data; int /*<<< orphan*/ * ks_lock; } ;
typedef  TYPE_5__ kstat_t ;
struct TYPE_12__ {scalar_t__ ui64; } ;
struct TYPE_16__ {int /*<<< orphan*/  name; TYPE_2__ value; int /*<<< orphan*/  data_type; } ;
typedef  TYPE_6__ kstat_named_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  KSTAT_DATA_UINT64 ; 
 int /*<<< orphan*/  KSTAT_FLAG_VIRTUAL ; 
 int /*<<< orphan*/  KSTAT_STRLEN ; 
 int /*<<< orphan*/  KSTAT_TYPE_NAMED ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_5__* FUNC3 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  spa_tx_assign_update ; 

__attribute__((used)) static void
FUNC8(spa_t *spa)
{
	spa_history_kstat_t *shk = &spa->spa_stats.tx_assign_histogram;
	char *name;
	kstat_named_t *ks;
	kstat_t *ksp;
	int i;

	FUNC5(&shk->lock, NULL, MUTEX_DEFAULT, NULL);

	shk->count = 42; /* power of two buckets for 1ns to 2,199s */
	shk->size = shk->count * sizeof (kstat_named_t);
	shk->private = FUNC0(shk->size, KM_SLEEP);

	name = FUNC1("zfs/%s", FUNC7(spa));

	for (i = 0; i < shk->count; i++) {
		ks = &((kstat_named_t *)shk->private)[i];
		ks->data_type = KSTAT_DATA_UINT64;
		ks->value.ui64 = 0;
		(void) FUNC6(ks->name, KSTAT_STRLEN, "%llu ns",
		    (u_longlong_t)1 << i);
	}

	ksp = FUNC3(name, 0, "dmu_tx_assign", "misc",
	    KSTAT_TYPE_NAMED, 0, KSTAT_FLAG_VIRTUAL);
	shk->kstat = ksp;

	if (ksp) {
		ksp->ks_lock = &shk->lock;
		ksp->ks_data = shk->private;
		ksp->ks_ndata = shk->count;
		ksp->ks_data_size = shk->size;
		ksp->ks_private = spa;
		ksp->ks_update = spa_tx_assign_update;
		FUNC4(ksp);
	}
	FUNC2(name);
}