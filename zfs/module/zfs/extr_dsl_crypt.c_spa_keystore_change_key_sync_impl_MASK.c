#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_43__   TYPE_8__ ;
typedef  struct TYPE_42__   TYPE_7__ ;
typedef  struct TYPE_41__   TYPE_6__ ;
typedef  struct TYPE_40__   TYPE_5__ ;
typedef  struct TYPE_39__   TYPE_3__ ;
typedef  struct TYPE_38__   TYPE_2__ ;
typedef  struct TYPE_37__   TYPE_24__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_14__ ;

/* Type definitions */
struct TYPE_39__ {scalar_t__ za_first_integer; } ;
typedef  TYPE_3__ zap_cursor_t ;
typedef  TYPE_3__ zap_attribute_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dsl_wrapping_key_t ;
struct TYPE_40__ {int /*<<< orphan*/  dp_meta_objset; TYPE_14__* dp_spa; } ;
typedef  TYPE_5__ dsl_pool_t ;
struct TYPE_41__ {char* dd_myname; int /*<<< orphan*/  dd_crypto_obj; } ;
typedef  TYPE_6__ dsl_dir_t ;
struct TYPE_42__ {TYPE_2__* ds_dir; } ;
typedef  TYPE_7__ dsl_dataset_t ;
struct TYPE_43__ {int /*<<< orphan*/ * dck_wkey; } ;
typedef  TYPE_8__ dsl_crypto_key_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_38__ {scalar_t__ dd_object; } ;
struct TYPE_37__ {int /*<<< orphan*/  dd_clones; int /*<<< orphan*/  dd_child_dir_zapobj; } ;
struct TYPE_36__ {int /*<<< orphan*/  sk_wkeys_lock; } ;
struct TYPE_35__ {TYPE_1__ spa_keystore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DSL_CRYPTO_KEY_ROOT_DDOBJ ; 
 int ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ,TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_6__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_6__**) ; 
 scalar_t__ FUNC10 (TYPE_6__*) ; 
 TYPE_24__* FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 TYPE_3__* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_14__*,TYPE_6__*,int /*<<< orphan*/ ,TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_14__*,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC24(uint64_t rddobj, uint64_t ddobj,
    uint64_t new_rddobj, dsl_wrapping_key_t *wkey, boolean_t skip,
    dmu_tx_t *tx)
{
	int ret;
	zap_cursor_t *zc;
	zap_attribute_t *za;
	dsl_pool_t *dp = FUNC4(tx);
	dsl_dir_t *dd = NULL;
	dsl_crypto_key_t *dck = NULL;
	uint64_t curr_rddobj;

	FUNC0(FUNC1(&dp->dp_spa->spa_keystore.sk_wkeys_lock));

	/* hold the dd */
	FUNC3(FUNC9(dp, ddobj, NULL, FTAG, &dd));

	/* ignore special dsl dirs */
	if (dd->dd_myname[0] == '$' || dd->dd_myname[0] == '%') {
		FUNC12(dd, FTAG);
		return;
	}

	ret = FUNC8(dd, &curr_rddobj);
	FUNC2(ret == 0 || ret == ENOENT);

	/*
	 * Stop recursing if this dsl dir didn't inherit from the root
	 * or if this dd is a clone.
	 */
	if (ret == ENOENT ||
	    (!skip && (curr_rddobj != rddobj || FUNC10(dd)))) {
		FUNC12(dd, FTAG);
		return;
	}

	/*
	 * If we don't have a wrapping key just update the dck to reflect the
	 * new encryption root. Otherwise rewrap the entire dck and re-sync it
	 * to disk. If skip is set, we don't do any of this work.
	 */
	if (!skip) {
		if (wkey == NULL) {
			FUNC3(FUNC23(dp->dp_meta_objset,
			    dd->dd_crypto_obj,
			    DSL_CRYPTO_KEY_ROOT_DDOBJ, 8, 1,
			    &new_rddobj, tx));
		} else {
			FUNC3(FUNC17(dp->dp_spa, dd,
			    FTAG, &dck));
			FUNC13(wkey, dck);
			FUNC14(dck->dck_wkey, dck);
			dck->dck_wkey = wkey;
			FUNC5(dck, tx);
			FUNC18(dp->dp_spa, dck, FTAG);
		}
	}

	zc = FUNC15(sizeof (zap_cursor_t), KM_SLEEP);
	za = FUNC15(sizeof (zap_attribute_t), KM_SLEEP);

	/* Recurse into all child dsl dirs. */
	for (FUNC21(zc, dp->dp_meta_objset,
	    FUNC11(dd)->dd_child_dir_zapobj);
	    FUNC22(zc, za) == 0;
	    FUNC19(zc)) {
		FUNC24(rddobj,
		    za->za_first_integer, new_rddobj, wkey, B_FALSE, tx);
	}
	FUNC20(zc);

	/*
	 * Recurse into all dsl dirs of clones. We utilize the skip parameter
	 * here so that we don't attempt to process the clones directly. This
	 * is because the clone and its origin share the same dck, which has
	 * already been updated.
	 */
	for (FUNC21(zc, dp->dp_meta_objset,
	    FUNC11(dd)->dd_clones);
	    FUNC22(zc, za) == 0;
	    FUNC19(zc)) {
		dsl_dataset_t *clone;

		FUNC3(FUNC6(dp, za->za_first_integer,
		    FTAG, &clone));
		FUNC24(rddobj,
		    clone->ds_dir->dd_object, new_rddobj, wkey, B_TRUE, tx);
		FUNC7(clone, FTAG);
	}
	FUNC20(zc);

	FUNC16(za, sizeof (zap_attribute_t));
	FUNC16(zc, sizeof (zap_cursor_t));

	FUNC12(dd, FTAG);
}