#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ zfs_prop_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 scalar_t__ ZFS_PROP_ENCRYPTION ; 
 scalar_t__ ZFS_PROP_ORIGIN ; 
 scalar_t__ ZFS_PROP_VERSION ; 
 scalar_t__ ZFS_PROP_VOLSIZE ; 
 scalar_t__ ZPROP_INVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static boolean_t
FUNC8(libzfs_handle_t *hdl, nvlist_t *props,
    const char *errbuf)
{
	nvpair_t *nvp;
	zfs_prop_t prop;
	const char *name;

	nvp = NULL;
	while ((nvp = FUNC1(props, nvp)) != NULL) {
		name = FUNC2(nvp);
		prop = FUNC4(name);

		if (prop == ZPROP_INVAL) {
			if (!FUNC7(name)) {
				FUNC3(hdl, FUNC0(TEXT_DOMAIN,
				    "invalid property '%s'"), name);
				return (B_FALSE);
			}
			continue;
		}
		/*
		 * "origin" is readonly but is used to receive datasets as
		 * clones so we don't raise an error here
		 */
		if (prop == ZFS_PROP_ORIGIN)
			continue;

		/* encryption params have their own verification later */
		if (prop == ZFS_PROP_ENCRYPTION ||
		    FUNC5(prop))
			continue;

		/*
		 * cannot override readonly, set-once and other specific
		 * settable properties
		 */
		if (FUNC6(prop) || prop == ZFS_PROP_VERSION ||
		    prop == ZFS_PROP_VOLSIZE) {
			FUNC3(hdl, FUNC0(TEXT_DOMAIN,
			    "invalid property '%s'"), name);
			return (B_FALSE);
		}
	}

	return (B_TRUE);
}