#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int zcb_dedup_asize; int /*<<< orphan*/  zcb_dedup_blocks; } ;
typedef  TYPE_1__ zdb_cb_t ;
struct TYPE_16__ {int /*<<< orphan*/ ** spa_ddt; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  ddt_t ;
struct TYPE_17__ {scalar_t__ ddp_phys_birth; int ddp_refcnt; } ;
typedef  TYPE_3__ ddt_phys_t ;
struct TYPE_18__ {int /*<<< orphan*/  dde_key; TYPE_3__* dde_phys; } ;
typedef  TYPE_4__ ddt_entry_t ;
struct TYPE_19__ {scalar_t__ ddb_class; size_t ddb_checksum; } ;
typedef  TYPE_5__ ddt_bookmark_t ;
typedef  int /*<<< orphan*/  ddb ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ DDT_CLASS_UNIQUE ; 
 int DDT_PHYS_DITTO ; 
 int DDT_PHYS_TYPES ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZDB_OT_DITTO ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__*) ; 
 int FUNC9 (TYPE_2__*,TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/ * dump_opt ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(spa_t *spa, zdb_cb_t *zcb)
{
	ddt_bookmark_t ddb;
	ddt_entry_t dde;
	int error;
	int p;

	FUNC0(!dump_opt['L']);

	FUNC3(&ddb, sizeof (ddb));
	while ((error = FUNC9(spa, &ddb, &dde)) == 0) {
		blkptr_t blk;
		ddt_phys_t *ddp = dde.dde_phys;

		if (ddb.ddb_class == DDT_CLASS_UNIQUE)
			return;

		FUNC0(FUNC8(&dde) > 1);

		for (p = 0; p < DDT_PHYS_TYPES; p++, ddp++) {
			if (ddp->ddp_phys_birth == 0)
				continue;
			FUNC4(ddb.ddb_checksum,
			    &dde.dde_key, ddp, &blk);
			if (p == DDT_PHYS_DITTO) {
				FUNC10(zcb, NULL, &blk, ZDB_OT_DITTO);
			} else {
				zcb->zcb_dedup_asize +=
				    FUNC1(&blk) * (ddp->ddp_refcnt - 1);
				zcb->zcb_dedup_blocks++;
			}
		}
		ddt_t *ddt = spa->spa_ddt[ddb.ddb_checksum];
		FUNC5(ddt);
		FUNC2(FUNC7(ddt, &blk, B_TRUE) != NULL);
		FUNC6(ddt);
	}

	FUNC0(error == ENOENT);
}