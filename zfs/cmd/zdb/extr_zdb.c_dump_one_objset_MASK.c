#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t spa_feature_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_11__ {scalar_t__ zbm_redaction_obj; int zbm_flags; } ;
struct TYPE_13__ {TYPE_1__ dbn_phys; } ;
typedef  TYPE_3__ dsl_bookmark_node_t ;
struct TYPE_15__ {TYPE_2__* ds_dir; int /*<<< orphan*/  ds_bookmarks; } ;
struct TYPE_14__ {int fi_flags; } ;
struct TYPE_12__ {int /*<<< orphan*/  dd_livelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FTAG ; 
 size_t SPA_FEATURES ; 
 size_t SPA_FEATURE_BOOKMARK_WRITTEN ; 
 size_t SPA_FEATURE_LIVELIST ; 
 size_t SPA_FEATURE_REDACTION_BOOKMARKS ; 
 int ZBM_FLAG_HAS_FBN ; 
 int ZFEATURE_FLAG_PER_DATASET ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dataset_feature_count ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,size_t) ; 
 scalar_t__ FUNC7 (TYPE_5__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * global_feature_count ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int FUNC12 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  remap_deadlist_count ; 
 TYPE_4__* spa_feature_table ; 

__attribute__((used)) static int
FUNC13(const char *dsname, void *arg)
{
	int error;
	objset_t *os;
	spa_feature_t f;

	error = FUNC12(dsname, FTAG, &os);
	if (error != 0)
		return (0);

	for (f = 0; f < SPA_FEATURES; f++) {
		if (!FUNC6(FUNC4(os), f))
			continue;
		FUNC0(spa_feature_table[f].fi_flags &
		    ZFEATURE_FLAG_PER_DATASET);
		dataset_feature_count[f]++;
	}

	if (FUNC7(FUNC4(os))) {
		remap_deadlist_count++;
	}

	for (dsl_bookmark_node_t *dbn =
	    FUNC2(&FUNC4(os)->ds_bookmarks); dbn != NULL;
	    dbn = FUNC1(&FUNC4(os)->ds_bookmarks, dbn)) {
		FUNC11(dbn->dbn_phys.zbm_redaction_obj);
		if (dbn->dbn_phys.zbm_redaction_obj != 0)
			global_feature_count[SPA_FEATURE_REDACTION_BOOKMARKS]++;
		if (dbn->dbn_phys.zbm_flags & ZBM_FLAG_HAS_FBN)
			global_feature_count[SPA_FEATURE_BOOKMARK_WRITTEN]++;
	}

	if (FUNC8(&FUNC4(os)->ds_dir->dd_livelist) &&
	    !FUNC5(os)) {
		global_feature_count[SPA_FEATURE_LIVELIST]++;
	}

	FUNC9(os);
	FUNC3(os, FTAG);
	FUNC10();
	return (0);
}