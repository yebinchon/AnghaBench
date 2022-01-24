#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  fi_guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 size_t SPA_FEATURE_ENCRYPTION ; 
 scalar_t__ SPA_VERSION_FEATURES ; 
 int /*<<< orphan*/  ZPOOL_PROP_VERSION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* spa_feature_table ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static boolean_t
FUNC3(zpool_handle_t *zph)
{
	nvlist_t *features;
	uint64_t feat_refcount;

	/* check that features can be enabled */
	if (FUNC2(zph, ZPOOL_PROP_VERSION, NULL)
	    < SPA_VERSION_FEATURES)
		return (B_FALSE);

	/* check for crypto feature */
	features = FUNC1(zph);
	if (!features || FUNC0(features,
	    spa_feature_table[SPA_FEATURE_ENCRYPTION].fi_guid,
	    &feat_refcount) != 0)
		return (B_FALSE);

	return (B_TRUE);
}