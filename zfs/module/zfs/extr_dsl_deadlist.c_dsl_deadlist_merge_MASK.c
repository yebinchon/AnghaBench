#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_13__ {int /*<<< orphan*/  za_first_integer; int /*<<< orphan*/  za_name; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_14__ {int /*<<< orphan*/  dl_lock; int /*<<< orphan*/  dl_os; } ;
typedef  TYPE_2__ dsl_deadlist_t ;
typedef  int /*<<< orphan*/  dsl_deadlist_phys_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_15__ {scalar_t__ doi_type; } ;
typedef  TYPE_3__ dmu_object_info_t ;
struct TYPE_16__ {int /*<<< orphan*/ * db_data; } ;
typedef  TYPE_4__ dmu_buf_t ;
typedef  int /*<<< orphan*/  bpobj_t ;

/* Variables and functions */
 scalar_t__ DMU_OT_BPOBJ ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dsl_deadlist_insert_cb ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC18(dsl_deadlist_t *dl, uint64_t obj, dmu_tx_t *tx)
{
	zap_cursor_t zc;
	zap_attribute_t za;
	dmu_buf_t *bonus;
	dsl_deadlist_phys_t *dlp;
	dmu_object_info_t doi;

	FUNC0(FUNC8(dl->dl_os, obj, &doi));
	if (doi.doi_type == DMU_OT_BPOBJ) {
		bpobj_t bpo;
		FUNC0(FUNC3(&bpo, dl->dl_os, obj));
		FUNC0(FUNC2(&bpo, dsl_deadlist_insert_cb, dl, tx));
		FUNC1(&bpo);
		return;
	}

	FUNC10(&dl->dl_lock);
	for (FUNC14(&zc, dl->dl_os, obj);
	    FUNC15(&zc, &za) == 0;
	    FUNC12(&zc)) {
		uint64_t mintxg = FUNC17(za.za_name, NULL);
		FUNC9(dl, za.za_first_integer, mintxg, tx);
		FUNC0(FUNC16(dl->dl_os, obj, mintxg, tx));
	}
	FUNC13(&zc);

	FUNC0(FUNC5(dl->dl_os, obj, FTAG, &bonus));
	dlp = bonus->db_data;
	FUNC7(bonus, tx);
	FUNC4(dlp, sizeof (*dlp));
	FUNC6(bonus, FTAG);
	FUNC11(&dl->dl_lock);
}