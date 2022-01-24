#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_8__ {scalar_t__ ub_mmp_magic; scalar_t__ ub_mmp_delay; scalar_t__ ub_txg; scalar_t__ ub_timestamp; } ;
typedef  TYPE_1__ uberblock_t ;
struct TYPE_9__ {int spa_import_flags; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ MMP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ POOL_STATE_ACTIVE ; 
 int ZFS_IMPORT_SKIP_MMP ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_HOSTID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOAD_INFO ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_SEQ ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_TXG ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_STATE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TIMESTAMP ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static boolean_t
FUNC8(spa_t *spa, uberblock_t *ub, nvlist_t *label,
    nvlist_t *config)
{
	uint64_t state = 0;
	uint64_t hostid = 0;
	uint64_t tryconfig_txg = 0;
	uint64_t tryconfig_timestamp = 0;
	uint16_t tryconfig_mmp_seq = 0;
	nvlist_t *nvinfo;

	if (FUNC4(config, ZPOOL_CONFIG_LOAD_INFO)) {
		nvinfo = FUNC2(config, ZPOOL_CONFIG_LOAD_INFO);
		(void) FUNC6(nvinfo, ZPOOL_CONFIG_MMP_TXG,
		    &tryconfig_txg);
		(void) FUNC6(config, ZPOOL_CONFIG_TIMESTAMP,
		    &tryconfig_timestamp);
		(void) FUNC5(nvinfo, ZPOOL_CONFIG_MMP_SEQ,
		    &tryconfig_mmp_seq);
	}

	(void) FUNC6(config, ZPOOL_CONFIG_POOL_STATE, &state);

	/*
	 * Disable the MMP activity check - This is used by zdb which
	 * is intended to be used on potentially active pools.
	 */
	if (spa->spa_import_flags & ZFS_IMPORT_SKIP_MMP)
		return (B_FALSE);

	/*
	 * Skip the activity check when the MMP feature is disabled.
	 */
	if (ub->ub_mmp_magic == MMP_MAGIC && ub->ub_mmp_delay == 0)
		return (B_FALSE);

	/*
	 * If the tryconfig_ values are nonzero, they are the results of an
	 * earlier tryimport.  If they all match the uberblock we just found,
	 * then the pool has not changed and we return false so we do not test
	 * a second time.
	 */
	if (tryconfig_txg && tryconfig_txg == ub->ub_txg &&
	    tryconfig_timestamp && tryconfig_timestamp == ub->ub_timestamp &&
	    tryconfig_mmp_seq && tryconfig_mmp_seq ==
	    (FUNC1(ub) ? FUNC0(ub) : 0))
		return (B_FALSE);

	/*
	 * Allow the activity check to be skipped when importing the pool
	 * on the same host which last imported it.  Since the hostid from
	 * configuration may be stale use the one read from the label.
	 */
	if (FUNC4(label, ZPOOL_CONFIG_HOSTID))
		hostid = FUNC3(label, ZPOOL_CONFIG_HOSTID);

	if (hostid == FUNC7(spa))
		return (B_FALSE);

	/*
	 * Skip the activity test when the pool was cleanly exported.
	 */
	if (state != POOL_STATE_ACTIVE)
		return (B_FALSE);

	return (B_TRUE);
}