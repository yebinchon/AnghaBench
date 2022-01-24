#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  spa_sync_on; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ POOL_STATE_EXPORTED ; 
 int /*<<< orphan*/  SPA_FEATURE_LOG_SPACEMAP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ zfs_keep_log_spacemaps_at_export ; 

__attribute__((used)) static boolean_t
FUNC3(spa_t *spa)
{
	if (!FUNC0(spa, SPA_FEATURE_LOG_SPACEMAP))
		return (B_FALSE);

	if (!FUNC2(spa))
		return (B_FALSE);

	if (!spa->spa_sync_on)
		return (B_FALSE);

	if (FUNC1(spa) != POOL_STATE_EXPORTED)
		return (B_FALSE);

	if (zfs_keep_log_spacemaps_at_export)
		return (B_FALSE);

	return (B_TRUE);
}