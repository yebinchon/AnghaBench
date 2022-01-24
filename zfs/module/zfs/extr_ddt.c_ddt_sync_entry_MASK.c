#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef  enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
struct TYPE_22__ {int /*<<< orphan*/  dp_scan; } ;
typedef  TYPE_2__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_23__ {int /*<<< orphan*/  ddt_checksum; TYPE_1__* ddt_spa; } ;
typedef  TYPE_3__ ddt_t ;
struct TYPE_24__ {scalar_t__ ddp_phys_birth; scalar_t__ ddp_refcnt; } ;
typedef  TYPE_4__ ddt_phys_t ;
typedef  int /*<<< orphan*/  ddt_key_t ;
struct TYPE_25__ {int dde_type; int dde_class; int dde_loaded; TYPE_4__* dde_phys; int /*<<< orphan*/ ** dde_lead_zio; int /*<<< orphan*/  dde_loading; int /*<<< orphan*/  dde_key; } ;
typedef  TYPE_5__ ddt_entry_t ;
struct TYPE_21__ {TYPE_2__* spa_dsl_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int DDT_CLASS_DUPLICATE ; 
 int DDT_CLASS_UNIQUE ; 
 int DDT_PHYS_DITTO ; 
 int DDT_PHYS_TYPES ; 
 int DDT_TYPES ; 
 int DDT_TYPE_CURRENT ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int,int,TYPE_5__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int,int,TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int,int,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(ddt_t *ddt, ddt_entry_t *dde, dmu_tx_t *tx, uint64_t txg)
{
	dsl_pool_t *dp = ddt->ddt_spa->spa_dsl_pool;
	ddt_phys_t *ddp = dde->dde_phys;
	ddt_key_t *ddk = &dde->dde_key;
	enum ddt_type otype = dde->dde_type;
	enum ddt_type ntype = DDT_TYPE_CURRENT;
	enum ddt_class oclass = dde->dde_class;
	enum ddt_class nclass;
	uint64_t total_refcnt = 0;

	FUNC0(dde->dde_loaded);
	FUNC0(!dde->dde_loading);

	for (int p = 0; p < DDT_PHYS_TYPES; p++, ddp++) {
		FUNC0(dde->dde_lead_zio[p] == NULL);
		if (ddp->ddp_phys_birth == 0) {
			FUNC0(ddp->ddp_refcnt == 0);
			continue;
		}
		if (p == DDT_PHYS_DITTO) {
			/*
			 * Note, we no longer create DDT-DITTO blocks, but we
			 * don't want to leak any written by older software.
			 */
			FUNC8(ddt, ddk, ddp, txg);
			continue;
		}
		if (ddp->ddp_refcnt == 0)
			FUNC8(ddt, ddk, ddp, txg);
		total_refcnt += ddp->ddp_refcnt;
	}

	/* We do not create new DDT-DITTO blocks. */
	FUNC1(dde->dde_phys[DDT_PHYS_DITTO].ddp_phys_birth);
	if (total_refcnt > 1)
		nclass = DDT_CLASS_DUPLICATE;
	else
		nclass = DDT_CLASS_UNIQUE;

	if (otype != DDT_TYPES &&
	    (otype != ntype || oclass != nclass || total_refcnt == 0)) {
		FUNC2(FUNC6(ddt, otype, oclass, dde, tx) == 0);
		FUNC0(FUNC5(ddt, otype, oclass, dde) == ENOENT);
	}

	if (total_refcnt != 0) {
		dde->dde_type = ntype;
		dde->dde_class = nclass;
		FUNC9(ddt, dde, 0);
		if (!FUNC4(ddt, ntype, nclass))
			FUNC3(ddt, ntype, nclass, tx);
		FUNC2(FUNC7(ddt, ntype, nclass, dde, tx) == 0);

		/*
		 * If the class changes, the order that we scan this bp
		 * changes.  If it decreases, we could miss it, so
		 * scan it right now.  (This covers both class changing
		 * while we are doing ddt_walk(), and when we are
		 * traversing.)
		 */
		if (nclass < oclass) {
			FUNC10(dp->dp_scan,
			    ddt->ddt_checksum, dde, tx);
		}
	}
}