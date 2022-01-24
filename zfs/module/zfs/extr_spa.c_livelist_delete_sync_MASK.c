#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ spa_livelists_to_delete; int /*<<< orphan*/ * spa_meta_objset; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_6__ {scalar_t__ ll_obj; scalar_t__ zap_obj; TYPE_1__* spa; } ;
typedef  TYPE_2__ livelist_delete_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_POOL_DELETED_CLONES ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  SPA_FEATURE_LIVELIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void *arg, dmu_tx_t *tx)
{
	livelist_delete_arg_t *lda = arg;
	spa_t *spa = lda->spa;
	uint64_t ll_obj = lda->ll_obj;
	uint64_t zap_obj = lda->zap_obj;
	objset_t *mos = spa->spa_meta_objset;
	uint64_t count;

	/* free the livelist and decrement the feature count */
	FUNC0(FUNC7(mos, zap_obj, ll_obj, tx));
	FUNC1(mos, ll_obj, tx);
	FUNC2(spa, SPA_FEATURE_LIVELIST, tx);
	FUNC0(FUNC4(mos, zap_obj, &count));
	if (count == 0) {
		/* no more livelists to delete */
		FUNC0(FUNC6(mos, DMU_POOL_DIRECTORY_OBJECT,
		    DMU_POOL_DELETED_CLONES, tx));
		FUNC0(FUNC5(mos, zap_obj, tx));
		spa->spa_livelists_to_delete = 0;
		FUNC3(spa);
	}
}