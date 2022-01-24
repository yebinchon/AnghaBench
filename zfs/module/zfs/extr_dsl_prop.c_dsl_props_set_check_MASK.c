#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_9__ {int /*<<< orphan*/  dpsa_props; int /*<<< orphan*/  dpsa_dsname; } ;
typedef  TYPE_3__ dsl_props_set_arg_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_10__ {scalar_t__ ds_is_snapshot; TYPE_2__* ds_dir; } ;
typedef  TYPE_4__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_8__ {TYPE_1__* dd_pool; } ;
struct TYPE_7__ {int /*<<< orphan*/  dp_spa; } ;

/* Variables and functions */
 scalar_t__ DATA_TYPE_STRING ; 
 int /*<<< orphan*/  E2BIG ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_VERSION_SNAP_PROPS ; 
 scalar_t__ SPA_VERSION_STMF_PROP ; 
 scalar_t__ ZAP_MAXNAMELEN ; 
 scalar_t__ ZAP_MAXVALUELEN ; 
 scalar_t__ ZAP_OLDMAXVALUELEN ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10(void *arg, dmu_tx_t *tx)
{
	dsl_props_set_arg_t *dpsa = arg;
	dsl_pool_t *dp = FUNC1(tx);
	dsl_dataset_t *ds;
	uint64_t version;
	nvpair_t *elem = NULL;
	int err;

	err = FUNC2(dp, dpsa->dpsa_dsname, FTAG, &ds);
	if (err != 0)
		return (err);

	version = FUNC8(ds->ds_dir->dd_pool->dp_spa);
	while ((elem = FUNC5(dpsa->dpsa_props, elem)) != NULL) {
		if (FUNC9(FUNC6(elem)) >= ZAP_MAXNAMELEN) {
			FUNC3(ds, FTAG);
			return (FUNC0(ENAMETOOLONG));
		}
		if (FUNC7(elem) == DATA_TYPE_STRING) {
			char *valstr = FUNC4(elem);
			if (FUNC9(valstr) >= (version <
			    SPA_VERSION_STMF_PROP ?
			    ZAP_OLDMAXVALUELEN : ZAP_MAXVALUELEN)) {
				FUNC3(ds, FTAG);
				return (FUNC0(E2BIG));
			}
		}
	}

	if (ds->ds_is_snapshot && version < SPA_VERSION_SNAP_PROPS) {
		FUNC3(ds, FTAG);
		return (FUNC0(ENOTSUP));
	}
	FUNC3(ds, FTAG);
	return (0);
}