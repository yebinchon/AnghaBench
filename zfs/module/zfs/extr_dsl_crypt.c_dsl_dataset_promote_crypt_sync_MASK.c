#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_15__ {TYPE_2__* dp_spa; } ;
typedef  TYPE_3__ dsl_pool_t ;
struct TYPE_16__ {scalar_t__ dd_crypto_obj; int /*<<< orphan*/  dd_object; TYPE_3__* dd_pool; } ;
typedef  TYPE_4__ dsl_dir_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_17__ {int /*<<< orphan*/  dd_head_dataset_obj; } ;
struct TYPE_13__ {int /*<<< orphan*/  sk_wkeys_lock; } ;
struct TYPE_14__ {TYPE_1__ spa_keystore; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZAP_MAXVALUELEN ; 
 int /*<<< orphan*/  ZFS_PROP_KEYLOCATION ; 
 int /*<<< orphan*/  ZPROP_SRC_LOCAL ; 
 int /*<<< orphan*/  ZPROP_SRC_NONE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 TYPE_6__* FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,char*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

void
FUNC15(dsl_dir_t *target, dsl_dir_t *origin,
    dmu_tx_t *tx)
{
	uint64_t rddobj;
	dsl_pool_t *dp = target->dd_pool;
	dsl_dataset_t *targetds;
	dsl_dataset_t *originds;
	char *keylocation;

	if (origin->dd_crypto_obj == 0)
		return;
	if (FUNC4(origin))
		return;

	FUNC0(FUNC3(origin, &rddobj));

	if (rddobj != origin->dd_object)
		return;

	/*
	 * If the target is being promoted to the encryption root update the
	 * DSL Crypto Key and keylocation to reflect that. We also need to
	 * update the DSL Crypto Keys of all children inheritting their
	 * encryption root to point to the new target. Otherwise, the check
	 * function ensured that the encryption root will not change.
	 */
	keylocation = FUNC8(ZAP_MAXVALUELEN, KM_SLEEP);

	FUNC0(FUNC1(dp,
	    FUNC5(target)->dd_head_dataset_obj, FTAG, &targetds));
	FUNC0(FUNC1(dp,
	    FUNC5(origin)->dd_head_dataset_obj, FTAG, &originds));

	FUNC0(FUNC6(origin, FUNC14(ZFS_PROP_KEYLOCATION),
	    1, ZAP_MAXVALUELEN, keylocation, NULL, B_FALSE));
	FUNC7(targetds, FUNC14(ZFS_PROP_KEYLOCATION),
	    ZPROP_SRC_LOCAL, 1, FUNC13(keylocation) + 1, keylocation, tx);
	FUNC7(originds, FUNC14(ZFS_PROP_KEYLOCATION),
	    ZPROP_SRC_NONE, 0, 0, NULL, tx);

	FUNC10(&dp->dp_spa->spa_keystore.sk_wkeys_lock, RW_WRITER);
	FUNC12(rddobj, origin->dd_object,
	    target->dd_object, NULL, B_FALSE, tx);
	FUNC11(&dp->dp_spa->spa_keystore.sk_wkeys_lock);

	FUNC2(targetds, FTAG);
	FUNC2(originds, FTAG);
	FUNC9(keylocation, ZAP_MAXVALUELEN);
}