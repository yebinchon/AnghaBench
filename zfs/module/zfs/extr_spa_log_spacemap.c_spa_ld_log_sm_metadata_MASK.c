#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_12__ {int /*<<< orphan*/  za_first_integer; int /*<<< orphan*/  za_name; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spacemap_zap ;
struct TYPE_13__ {int /*<<< orphan*/  spa_sm_logs_by_txg; int /*<<< orphan*/  spa_metaslabs_by_flushed; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_14__ {int /*<<< orphan*/  sls_mscount; int /*<<< orphan*/  sls_txg; } ;
typedef  TYPE_3__ spa_log_sm_t ;
typedef  int /*<<< orphan*/  metaslab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_LOG_SPACEMAP_ZAP ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int,...) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(spa_t *spa)
{
	int error;
	uint64_t spacemap_zap;

	FUNC0(FUNC5(&spa->spa_sm_logs_by_txg));

	error = FUNC14(FUNC9(spa), DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_LOG_SPACEMAP_ZAP, sizeof (spacemap_zap), 1, &spacemap_zap);
	if (error == ENOENT) {
		/* the space map ZAP doesn't exist yet */
		return (0);
	} else if (error != 0) {
		FUNC7(spa, "spa_ld_log_sm_metadata(): failed at "
		    "zap_lookup(DMU_POOL_DIRECTORY_OBJECT) [error %d]",
		    error);
		return (error);
	}

	zap_cursor_t zc;
	zap_attribute_t za;
	for (FUNC12(&zc, FUNC9(spa), spacemap_zap);
	    (error = FUNC13(&zc, &za)) == 0;
	    FUNC10(&zc)) {
		uint64_t log_txg = FUNC15(za.za_name, NULL);
		spa_log_sm_t *sls =
		    FUNC8(za.za_first_integer, log_txg);
		FUNC2(&spa->spa_sm_logs_by_txg, sls);
	}
	FUNC11(&zc);
	if (error != ENOENT) {
		FUNC7(spa, "spa_ld_log_sm_metadata(): failed at "
		    "zap_cursor_retrieve(spacemap_zap) [error %d]",
		    error);
		return (error);
	}

	for (metaslab_t *m = FUNC4(&spa->spa_metaslabs_by_flushed);
	    m; m = FUNC1(&spa->spa_metaslabs_by_flushed, m)) {
		spa_log_sm_t target = { .sls_txg = FUNC6(m) };
		spa_log_sm_t *sls = FUNC3(&spa->spa_sm_logs_by_txg,
		    &target, NULL);

		/*
		 * At this point if sls is zero it means that a bug occurred
		 * in ZFS the last time the pool was open or earlier in the
		 * import code path. In general, we would have placed a
		 * VERIFY() here or in this case just let the kernel panic
		 * with NULL pointer dereference when incrementing sls_mscount,
		 * but since this is the import code path we can be a bit more
		 * lenient. Thus, for DEBUG bits we always cause a panic, while
		 * in production we log the error and just fail the import.
		 */
		FUNC0(sls != NULL);
		if (sls == NULL) {
			FUNC7(spa, "spa_ld_log_sm_metadata(): bug "
			    "encountered: could not find log spacemap for "
			    "TXG %ld [error %d]",
			    FUNC6(m), ENOENT);
			return (ENOENT);
		}
		sls->sls_mscount++;
	}

	return (0);
}