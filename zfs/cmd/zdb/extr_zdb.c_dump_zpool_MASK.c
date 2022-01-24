#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_28__ {int /*<<< orphan*/  spa_root_vdev; int /*<<< orphan*/  spa_meta_objset; int /*<<< orphan*/  spa_deferred_bpobj; TYPE_2__* spa_dsl_pool; int /*<<< orphan*/  spa_uberblock; int /*<<< orphan*/  spa_config; } ;
typedef  TYPE_1__ spa_t ;
typedef  size_t spa_feature_t ;
typedef  int /*<<< orphan*/  longlong_t ;
struct TYPE_29__ {int /*<<< orphan*/  dp_bptree_obj; int /*<<< orphan*/  dp_obsolete_bpobj; int /*<<< orphan*/  dp_free_bpobj; int /*<<< orphan*/  dp_meta_objset; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_27__ {int fi_flags; char* fi_uname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int DS_FIND_CHILDREN ; 
 int DS_FIND_SNAPSHOTS ; 
 scalar_t__ ENOTSUP ; 
 int /*<<< orphan*/  RANGE_SEG64 ; 
 size_t SPA_FEATURES ; 
 int /*<<< orphan*/  SPA_FEATURE_ASYNC_DESTROY ; 
 size_t SPA_FEATURE_BOOKMARK_WRITTEN ; 
 size_t SPA_FEATURE_DEVICE_REMOVAL ; 
 size_t SPA_FEATURE_LIVELIST ; 
 size_t SPA_FEATURE_REDACTION_BOOKMARKS ; 
 scalar_t__ SPA_VERSION_DEADLISTS ; 
 scalar_t__ UINT64_MAX ; 
 int ZFEATURE_FLAG_PER_DATASET ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__* dataset_feature_count ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dump_one_objset ; 
 int* dump_opt ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 scalar_t__ FUNC22 (TYPE_1__*,TYPE_10__*,scalar_t__*) ; 
 scalar_t__* global_feature_count ; 
 int /*<<< orphan*/  mos_refd_objs ; 
 int /*<<< orphan*/  FUNC23 (char*,...) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 scalar_t__ FUNC26 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,size_t) ; 
 TYPE_10__* spa_feature_table ; 
 TYPE_2__* FUNC28 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*) ; 
 scalar_t__ FUNC30 (TYPE_1__*) ; 
 int FUNC31 (TYPE_1__*) ; 
 int FUNC32 (TYPE_1__*) ; 
 int FUNC33 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC34(spa_t *spa)
{
	dsl_pool_t *dp = FUNC28(spa);
	int rc = 0;

	if (dump_opt['S']) {
		FUNC19(spa);
		return;
	}

	if (!dump_opt['e'] && dump_opt['C'] > 1) {
		(void) FUNC23("\nCached configuration:\n");
		FUNC17(spa->spa_config, 8);
	}

	if (dump_opt['C'])
		FUNC7(spa);

	if (dump_opt['u'])
		FUNC20(&spa->spa_uberblock, "\nUberblock:\n", "\n");

	if (dump_opt['D'])
		FUNC4(spa);

	if (dump_opt['d'] > 2 || dump_opt['m'])
		FUNC15(spa);
	if (dump_opt['M'])
		FUNC14(spa);
	if (dump_opt['d'] > 2 || dump_opt['m']) {
		FUNC13(spa);
		FUNC12(spa);
	}

	if (dump_opt['d'] || dump_opt['i']) {
		spa_feature_t f;
		mos_refd_objs = FUNC24(NULL, RANGE_SEG64, NULL, 0,
		    0);
		FUNC18(dp->dp_meta_objset);

		if (dump_opt['d'] >= 3) {
			dsl_pool_t *dp = spa->spa_dsl_pool;
			FUNC10(&spa->spa_deferred_bpobj,
			    "Deferred frees", 0);
			if (FUNC30(spa) >= SPA_VERSION_DEADLISTS) {
				FUNC10(&dp->dp_free_bpobj,
				    "Pool snapshot frees", 0);
			}
			if (FUNC2(&dp->dp_obsolete_bpobj)) {
				FUNC0(FUNC27(spa,
				    SPA_FEATURE_DEVICE_REMOVAL));
				FUNC10(&dp->dp_obsolete_bpobj,
				    "Pool obsolete blocks", 0);
			}

			if (FUNC26(spa,
			    SPA_FEATURE_ASYNC_DESTROY)) {
				FUNC6(spa->spa_meta_objset,
				    dp->dp_bptree_obj,
				    "Pool dataset frees");
			}
			FUNC9(spa->spa_root_vdev, 0);
		}

		for (spa_feature_t f = 0; f < SPA_FEATURES; f++)
			global_feature_count[f] = UINT64_MAX;
		global_feature_count[SPA_FEATURE_REDACTION_BOOKMARKS] = 0;
		global_feature_count[SPA_FEATURE_BOOKMARK_WRITTEN] = 0;
		global_feature_count[SPA_FEATURE_LIVELIST] = 0;

		(void) FUNC3(FUNC29(spa), dump_one_objset,
		    NULL, DS_FIND_SNAPSHOTS | DS_FIND_CHILDREN);

		if (rc == 0 && !dump_opt['L'])
			rc = FUNC16(spa);

		for (f = 0; f < SPA_FEATURES; f++) {
			uint64_t refcount;

			uint64_t *arr;
			if (!(spa_feature_table[f].fi_flags &
			    ZFEATURE_FLAG_PER_DATASET)) {
				if (global_feature_count[f] == UINT64_MAX)
					continue;
				if (!FUNC27(spa, f)) {
					FUNC1(global_feature_count[f]);
					continue;
				}
				arr = global_feature_count;
			} else {
				if (!FUNC27(spa, f)) {
					FUNC1(dataset_feature_count[f]);
					continue;
				}
				arr = dataset_feature_count;
			}
			if (FUNC22(spa, &spa_feature_table[f],
			    &refcount) == ENOTSUP)
				continue;
			if (arr[f] != refcount) {
				(void) FUNC23("%s feature refcount mismatch: "
				    "%lld consumers != %lld refcount\n",
				    spa_feature_table[f].fi_uname,
				    (longlong_t)arr[f], (longlong_t)refcount);
				rc = 2;
			} else {
				(void) FUNC23("Verified %s feature refcount "
				    "of %llu is correct\n",
				    spa_feature_table[f].fi_uname,
				    (longlong_t)refcount);
			}
		}

		if (rc == 0)
			rc = FUNC32(spa);
	}

	if (rc == 0 && (dump_opt['b'] || dump_opt['c']))
		rc = FUNC5(spa);

	if (rc == 0)
		rc = FUNC33(spa);

	if (dump_opt['s'])
		FUNC25(spa);

	if (dump_opt['h'])
		FUNC11(spa);

	if (rc == 0)
		rc = FUNC31(spa);

	if (rc != 0) {
		FUNC8();
		FUNC21(rc);
	}
}