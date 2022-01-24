#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  redaction_list_phys_t ;
struct TYPE_5__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_6__ {int dbcra_numsnaps; int /*<<< orphan*/  dbcra_bmark; int /*<<< orphan*/  dbcra_snap; } ;
typedef  TYPE_2__ dsl_bookmark_create_redacted_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  E2BIG ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_REDACTION_BOOKMARKS ; 
 int FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(void *arg, dmu_tx_t *tx)
{
	dsl_bookmark_create_redacted_arg_t *dbcra = arg;
	dsl_pool_t *dp = FUNC2(tx);
	dsl_dataset_t *snapds;
	int rv = 0;

	if (!FUNC6(dp->dp_spa,
	    SPA_FEATURE_REDACTION_BOOKMARKS))
		return (FUNC0(ENOTSUP));
	/*
	 * If the list of redact snaps will not fit in the bonus buffer with
	 * the furthest reached object and offset, fail.
	 */
	if (dbcra->dbcra_numsnaps > (FUNC1() -
	    sizeof (redaction_list_phys_t)) / sizeof (uint64_t))
		return (FUNC0(E2BIG));

	rv = FUNC4(dp, dbcra->dbcra_snap,
	    FTAG, &snapds);
	if (rv == 0) {
		rv = FUNC3(snapds, dbcra->dbcra_bmark,
		    tx);
		FUNC5(snapds, FTAG);
	}
	return (rv);
}