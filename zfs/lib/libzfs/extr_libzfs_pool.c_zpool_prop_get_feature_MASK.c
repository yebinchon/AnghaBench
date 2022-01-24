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
typedef  scalar_t__ uint64_t ;
typedef  size_t spa_feature_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_2__ {char* fi_guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int ENOTSUP ; 
 char* ZFS_FEATURE_ACTIVE ; 
 char* ZFS_FEATURE_DISABLED ; 
 char* ZFS_FEATURE_ENABLED ; 
 int /*<<< orphan*/  ZFS_UNSUPPORTED_INACTIVE ; 
 int /*<<< orphan*/  ZFS_UNSUPPORTED_READONLY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,scalar_t__*) ; 
 TYPE_1__* spa_feature_table ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 int FUNC5 (char const*,size_t*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 

int
FUNC9(zpool_handle_t *zhp, const char *propname, char *buf,
    size_t len)
{
	uint64_t refcount;
	boolean_t found = B_FALSE;
	nvlist_t *features = FUNC6(zhp);
	boolean_t supported;
	const char *feature = FUNC2(propname, '@') + 1;

	supported = FUNC7(propname);
	FUNC0(supported || FUNC8(propname));

	/*
	 * Convert from feature name to feature guid. This conversion is
	 * unnecessary for unsupported@... properties because they already
	 * use guids.
	 */
	if (supported) {
		int ret;
		spa_feature_t fid;

		ret = FUNC5(feature, &fid);
		if (ret != 0) {
			(void) FUNC4(buf, "-", len);
			return (ENOTSUP);
		}
		feature = spa_feature_table[fid].fi_guid;
	}

	if (FUNC1(features, feature, &refcount) == 0)
		found = B_TRUE;

	if (supported) {
		if (!found) {
			(void) FUNC4(buf, ZFS_FEATURE_DISABLED, len);
		} else  {
			if (refcount == 0)
				(void) FUNC4(buf, ZFS_FEATURE_ENABLED, len);
			else
				(void) FUNC4(buf, ZFS_FEATURE_ACTIVE, len);
		}
	} else {
		if (found) {
			if (refcount == 0) {
				(void) FUNC3(buf, ZFS_UNSUPPORTED_INACTIVE);
			} else {
				(void) FUNC3(buf, ZFS_UNSUPPORTED_READONLY);
			}
		} else {
			(void) FUNC4(buf, "-", len);
			return (ENOTSUP);
		}
	}

	return (0);
}