#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zpool_prop_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  spa_name; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  scalar_t__ nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 scalar_t__ SPA_VERSION_FEATURES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_RESERVED ; 
 scalar_t__ ZPOOL_PROP_ALTROOT ; 
 scalar_t__ ZPOOL_PROP_CACHEFILE ; 
 scalar_t__ ZPOOL_PROP_INVAL ; 
 scalar_t__ ZPOOL_PROP_READONLY ; 
 scalar_t__ ZPOOL_PROP_VERSION ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC6 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  spa_sync_props ; 
 int /*<<< orphan*/  spa_sync_version ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(spa_t *spa, nvlist_t *nvp)
{
	int error;
	nvpair_t *elem = NULL;
	boolean_t need_sync = B_FALSE;

	if ((error = FUNC6(spa, nvp)) != 0)
		return (error);

	while ((elem = FUNC3(nvp, elem)) != NULL) {
		zpool_prop_t prop = FUNC8(FUNC4(elem));

		if (prop == ZPOOL_PROP_CACHEFILE ||
		    prop == ZPOOL_PROP_ALTROOT ||
		    prop == ZPOOL_PROP_READONLY)
			continue;

		if (prop == ZPOOL_PROP_VERSION || prop == ZPOOL_PROP_INVAL) {
			uint64_t ver;

			if (prop == ZPOOL_PROP_VERSION) {
				FUNC1(FUNC5(elem, &ver) == 0);
			} else {
				FUNC0(FUNC9(FUNC4(elem)));
				ver = SPA_VERSION_FEATURES;
				need_sync = B_TRUE;
			}

			/* Save time if the version is already set. */
			if (ver == FUNC7(spa))
				continue;

			/*
			 * In addition to the pool directory object, we might
			 * create the pool properties object, the features for
			 * read object, the features for write object, or the
			 * feature descriptions object.
			 */
			error = FUNC2(spa->spa_name, NULL,
			    spa_sync_version, &ver,
			    6, ZFS_SPACE_CHECK_RESERVED);
			if (error)
				return (error);
			continue;
		}

		need_sync = B_TRUE;
		break;
	}

	if (need_sync) {
		return (FUNC2(spa->spa_name, NULL, spa_sync_props,
		    nvp, 6, ZFS_SPACE_CHECK_RESERVED));
	}

	return (0);
}