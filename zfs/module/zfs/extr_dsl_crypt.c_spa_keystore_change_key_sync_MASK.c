#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_24__ {int /*<<< orphan*/  sk_wkeys_lock; int /*<<< orphan*/  sk_wkeys; } ;
struct TYPE_25__ {TYPE_1__ spa_keystore; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_26__ {int /*<<< orphan*/  skcka_dsname; TYPE_7__* skcka_cp; } ;
typedef  TYPE_3__ spa_keystore_change_key_args_t ;
struct TYPE_27__ {int /*<<< orphan*/  wk_refcnt; int /*<<< orphan*/  wk_ddobj; } ;
typedef  TYPE_4__ dsl_wrapping_key_t ;
struct TYPE_28__ {TYPE_2__* dp_spa; } ;
typedef  TYPE_5__ dsl_pool_t ;
struct TYPE_29__ {TYPE_9__* ds_dir; int /*<<< orphan*/  ds_is_snapshot; } ;
typedef  TYPE_6__ dsl_dataset_t ;
struct TYPE_30__ {char* cp_keylocation; scalar_t__ cp_cmd; TYPE_4__* cp_wkey; } ;
typedef  TYPE_7__ dsl_crypto_params_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  avl_index_t ;
struct TYPE_31__ {int /*<<< orphan*/  dd_object; struct TYPE_31__* dd_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ DCP_CMD_FORCE_INHERIT ; 
 scalar_t__ DCP_CMD_FORCE_NEW_KEY ; 
 scalar_t__ DCP_CMD_INHERIT ; 
 scalar_t__ DCP_CMD_NEW_KEY ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_PROP_KEYLOCATION ; 
 int /*<<< orphan*/  ZPROP_SRC_LOCAL ; 
 int /*<<< orphan*/  ZPROP_SRC_NONE ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,TYPE_9__*,int /*<<< orphan*/ ,TYPE_4__**) ; 
 scalar_t__ FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC20(void *arg, dmu_tx_t *tx)
{
	dsl_dataset_t *ds;
	avl_index_t where;
	dsl_pool_t *dp = FUNC6(tx);
	spa_t *spa = dp->dp_spa;
	spa_keystore_change_key_args_t *skcka = arg;
	dsl_crypto_params_t *dcp = skcka->skcka_cp;
	dsl_wrapping_key_t *wkey = NULL, *found_wkey;
	dsl_wrapping_key_t wkey_search;
	char *keylocation = dcp->cp_keylocation;
	uint64_t rddobj, new_rddobj;

	/* create and initialize the wrapping key */
	FUNC2(FUNC7(dp, skcka->skcka_dsname, FTAG, &ds));
	FUNC0(!ds->ds_is_snapshot);

	if (dcp->cp_cmd == DCP_CMD_NEW_KEY ||
	    dcp->cp_cmd == DCP_CMD_FORCE_NEW_KEY) {
		/*
		 * We are changing to a new wkey. Set additional properties
		 * which can be sent along with this ioctl. Note that this
		 * command can set keylocation even if it can't normally be
		 * set via 'zfs set' due to a non-local keylocation.
		 */
		if (dcp->cp_cmd == DCP_CMD_NEW_KEY) {
			wkey = dcp->cp_wkey;
			wkey->wk_ddobj = ds->ds_dir->dd_object;
		} else {
			keylocation = "prompt";
		}

		if (keylocation != NULL) {
			FUNC10(ds,
			    FUNC18(ZFS_PROP_KEYLOCATION),
			    ZPROP_SRC_LOCAL, 1, FUNC17(keylocation) + 1,
			    keylocation, tx);
		}

		FUNC2(FUNC9(ds->ds_dir, &rddobj));
		new_rddobj = ds->ds_dir->dd_object;
	} else {
		/*
		 * We are inheritting the parent's wkey. Unset any local
		 * keylocation and grab a reference to the wkey.
		 */
		if (dcp->cp_cmd == DCP_CMD_INHERIT) {
			FUNC2(FUNC16(spa,
			    ds->ds_dir->dd_parent, FTAG, &wkey));
		}

		FUNC10(ds,
		    FUNC18(ZFS_PROP_KEYLOCATION), ZPROP_SRC_NONE,
		    0, 0, NULL, tx);

		rddobj = ds->ds_dir->dd_object;
		FUNC2(FUNC9(ds->ds_dir->dd_parent,
		    &new_rddobj));
	}

	if (wkey == NULL) {
		FUNC0(dcp->cp_cmd == DCP_CMD_FORCE_INHERIT ||
		    dcp->cp_cmd == DCP_CMD_FORCE_NEW_KEY);
	}

	FUNC13(&spa->spa_keystore.sk_wkeys_lock, RW_WRITER);

	/* recurse through all children and rewrap their keys */
	FUNC15(rddobj, ds->ds_dir->dd_object,
	    new_rddobj, wkey, B_FALSE, tx);

	/*
	 * All references to the old wkey should be released now (if it
	 * existed). Replace the wrapping key.
	 */
	wkey_search.wk_ddobj = ds->ds_dir->dd_object;
	found_wkey = FUNC3(&spa->spa_keystore.sk_wkeys, &wkey_search, NULL);
	if (found_wkey != NULL) {
		FUNC1(FUNC19(&found_wkey->wk_refcnt));
		FUNC5(&spa->spa_keystore.sk_wkeys, found_wkey);
		FUNC11(found_wkey);
	}

	if (dcp->cp_cmd == DCP_CMD_NEW_KEY) {
		FUNC3(&spa->spa_keystore.sk_wkeys, wkey, &where);
		FUNC4(&spa->spa_keystore.sk_wkeys, wkey, where);
	} else if (wkey != NULL) {
		FUNC12(wkey, FTAG);
	}

	FUNC14(&spa->spa_keystore.sk_wkeys_lock);

	FUNC8(ds, FTAG);
}