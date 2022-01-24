#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_19__ ;
typedef  struct TYPE_21__   TYPE_15__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  za_first_integer; } ;
typedef  TYPE_2__ zap_cursor_t ;
typedef  TYPE_2__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  list_t ;
struct TYPE_25__ {TYPE_19__* dd_pool; } ;
typedef  TYPE_4__ dsl_dir_t ;
struct TYPE_26__ {int /*<<< orphan*/  ds_remap_deadlist; int /*<<< orphan*/  ds_deadlist; TYPE_1__* ds_dir; } ;
typedef  TYPE_5__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_23__ {int /*<<< orphan*/  dd_origin_txg; } ;
struct TYPE_22__ {int /*<<< orphan*/ * dp_meta_objset; } ;
struct TYPE_21__ {scalar_t__ dd_clones; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_19__*,int /*<<< orphan*/ ,void*,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,void*) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_15__* FUNC5 (TYPE_4__*) ; 
 TYPE_2__* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC13 (TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC14(dsl_dir_t *dd, uint64_t mintxg, dmu_tx_t *tx,
    list_t *stack, void *tag)
{
	objset_t *mos = dd->dd_pool->dp_meta_objset;

	/*
	 * If it is the old version, dd_clones doesn't exist so we can't
	 * find the clones, but dsl_deadlist_remove_key() is a no-op so it
	 * doesn't matter.
	 */
	if (FUNC5(dd)->dd_clones == 0)
		return;

	zap_cursor_t *zc = FUNC6(sizeof (zap_cursor_t), KM_SLEEP);
	zap_attribute_t *za = FUNC6(sizeof (zap_attribute_t), KM_SLEEP);

	for (FUNC12(zc, mos, FUNC5(dd)->dd_clones);
	    FUNC13(zc, za) == 0;
	    FUNC10(zc)) {
		dsl_dataset_t *clone;

		FUNC0(FUNC1(dd->dd_pool,
		    za->za_first_integer, tag, &clone));

		if (clone->ds_dir->dd_origin_txg > mintxg) {
			FUNC4(&clone->ds_deadlist,
			    mintxg, tx);

			if (FUNC3(clone)) {
				FUNC4(
				    &clone->ds_remap_deadlist, mintxg, tx);
			}

			FUNC8(stack, FUNC9(clone));
		} else {
			FUNC2(clone, tag);
		}
	}
	FUNC11(zc);

	FUNC7(za, sizeof (zap_attribute_t));
	FUNC7(zc, sizeof (zap_cursor_t));
}