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
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_8__ {TYPE_6__* os_dsl_dataset; int /*<<< orphan*/  os_spa; } ;
typedef  TYPE_1__ objset_t ;
typedef  int /*<<< orphan*/  nice_used ;
typedef  int /*<<< orphan*/  nice_uncomp ;
typedef  int /*<<< orphan*/  nice_comp ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_9__ {int /*<<< orphan*/  dd_livelist; } ;
typedef  TYPE_2__ dsl_dir_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_11__ {TYPE_2__* ds_dir; } ;
struct TYPE_10__ {int /*<<< orphan*/  dd_origin_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_6__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 TYPE_4__* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,char*,int) ; 

__attribute__((used)) static int
FUNC15(objset_t *os)
{
	uint64_t ll_used, used, ll_comp, comp, ll_uncomp, uncomp;
	dsl_pool_t *dp = FUNC13(os->os_spa);
	dsl_dir_t  *dd = os->os_dsl_dataset->ds_dir;

	FUNC0(!FUNC2(os));
	if (!FUNC6(&dd->dd_livelist))
		return (0);
	FUNC9(dp, FTAG);
	FUNC7(&dd->dd_livelist, &ll_used,
	    &ll_comp, &ll_uncomp);

	dsl_dataset_t *origin_ds;
	FUNC0(FUNC11(dp));
	FUNC1(FUNC3(dp,
	    FUNC8(dd)->dd_origin_obj, FTAG, &origin_ds));
	FUNC1(FUNC5(origin_ds, os->os_dsl_dataset,
	    &used, &comp, &uncomp));
	FUNC4(origin_ds, FTAG);
	FUNC10(dp, FTAG);
	/*
	 *  It's possible that the dataset's uncomp space is larger than the
	 *  livelist's because livelists do not track embedded block pointers
	 */
	if (used != ll_used || comp != ll_comp || uncomp < ll_uncomp) {
		char nice_used[32], nice_comp[32], nice_uncomp[32];
		(void) FUNC12("Discrepancy in space accounting:\n");
		FUNC14(used, nice_used, sizeof (nice_used));
		FUNC14(comp, nice_comp, sizeof (nice_comp));
		FUNC14(uncomp, nice_uncomp, sizeof (nice_uncomp));
		(void) FUNC12("dir: used %s, comp %s, uncomp %s\n",
		    nice_used, nice_comp, nice_uncomp);
		FUNC14(ll_used, nice_used, sizeof (nice_used));
		FUNC14(ll_comp, nice_comp, sizeof (nice_comp));
		FUNC14(ll_uncomp, nice_uncomp, sizeof (nice_uncomp));
		(void) FUNC12("livelist: used %s, comp %s, uncomp %s\n",
		    nice_used, nice_comp, nice_uncomp);
		return (1);
	}
	return (0);
}