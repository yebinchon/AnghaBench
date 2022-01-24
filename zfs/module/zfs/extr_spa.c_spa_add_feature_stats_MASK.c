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
struct TYPE_6__ {int /*<<< orphan*/  spa_feat_stats_lock; int /*<<< orphan*/ * spa_feat_stats; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_FEATURE_STATS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(spa_t *spa, nvlist_t *config)
{
	nvlist_t *features;

	FUNC0(FUNC6(spa, SCL_CONFIG, RW_READER));

	FUNC2(&spa->spa_feat_stats_lock);
	features = spa->spa_feat_stats;

	if (features != NULL) {
		FUNC7(spa, features);
	} else {
		FUNC1(FUNC5(&features, NV_UNIQUE_NAME, KM_SLEEP));
		spa->spa_feat_stats = features;
		FUNC8(spa, features);
	}

	FUNC1(FUNC4(config, ZPOOL_CONFIG_FEATURE_STATS,
	    features));

	FUNC3(&spa->spa_feat_stats_lock);
}