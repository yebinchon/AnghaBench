#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  size_t spa_feature_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_5__ {int /*<<< orphan*/ ** ds_feature; int /*<<< orphan*/  ds_object; } ;
typedef  TYPE_1__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_7__ {int /*<<< orphan*/ * dp_meta_objset; int /*<<< orphan*/ * dp_spa; } ;
struct TYPE_6__ {int fi_flags; int /*<<< orphan*/  fi_guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ZFEATURE_FLAG_PER_DATASET ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 TYPE_2__* spa_feature_table ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(dsl_dataset_t *ds, spa_feature_t f,
    dmu_tx_t *tx)
{
	spa_t *spa = FUNC2(tx)->dp_spa;
	objset_t *mos = FUNC2(tx)->dp_meta_objset;
	uint64_t dsobj = ds->ds_object;

	FUNC0(spa_feature_table[f].fi_flags & ZFEATURE_FLAG_PER_DATASET);

	FUNC1(FUNC4(mos, dsobj, spa_feature_table[f].fi_guid, tx));
	FUNC3(spa, f, tx);
	ds->ds_feature[f] = NULL;
}