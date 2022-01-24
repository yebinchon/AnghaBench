#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_15__ {int /*<<< orphan*/  rl_dbu; TYPE_3__* rl_dbuf; int /*<<< orphan*/  rl_longholds; int /*<<< orphan*/ * rl_mos; int /*<<< orphan*/  rl_phys; int /*<<< orphan*/  rl_object; } ;
typedef  TYPE_1__ redaction_list_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_16__ {int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_17__ {int /*<<< orphan*/  db_data; } ;
typedef  TYPE_3__ dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,TYPE_3__**) ; 
 TYPE_1__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__**) ; 
 TYPE_1__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  redaction_list_evict_sync ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(dsl_pool_t *dp, uint64_t rlobj, void *tag,
    redaction_list_t **rlp)
{
	objset_t *mos = dp->dp_meta_objset;
	dmu_buf_t *dbuf;
	redaction_list_t *rl;
	int err;

	FUNC0(FUNC5(dp));

	err = FUNC1(mos, rlobj, tag, &dbuf);
	if (err != 0)
		return (err);

	rl = FUNC2(dbuf);
	if (rl == NULL) {
		redaction_list_t *winner = NULL;

		rl = FUNC7(sizeof (redaction_list_t), KM_SLEEP);
		rl->rl_dbuf = dbuf;
		rl->rl_object = rlobj;
		rl->rl_phys = dbuf->db_data;
		rl->rl_mos = dp->dp_meta_objset;
		FUNC8(&rl->rl_longholds);
		FUNC3(&rl->rl_dbu, redaction_list_evict_sync, NULL,
		    &rl->rl_dbuf);
		if ((winner = FUNC4(dbuf, &rl->rl_dbu)) != NULL) {
			FUNC6(rl, sizeof (*rl));
			rl = winner;
		}
	}
	*rlp = rl;
	return (0);
}