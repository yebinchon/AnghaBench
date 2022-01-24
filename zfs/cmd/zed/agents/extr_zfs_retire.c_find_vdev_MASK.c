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
typedef  size_t uint_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_L2CACHE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPARES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static nvlist_t *
FUNC4(libzfs_handle_t *zhdl, nvlist_t *nv, uint64_t search_guid)
{
	uint64_t guid;
	nvlist_t **child;
	uint_t c, children;
	nvlist_t *ret;

	if (FUNC3(nv, ZPOOL_CONFIG_GUID, &guid) == 0 &&
	    guid == search_guid) {
		FUNC0(FUNC1("zfs-retire"),
		    "matched vdev %llu", guid);
		return (nv);
	}

	if (FUNC2(nv, ZPOOL_CONFIG_CHILDREN,
	    &child, &children) != 0)
		return (NULL);

	for (c = 0; c < children; c++) {
		if ((ret = FUNC4(zhdl, child[c], search_guid)) != NULL)
			return (ret);
	}

	if (FUNC2(nv, ZPOOL_CONFIG_L2CACHE,
	    &child, &children) != 0)
		return (NULL);

	for (c = 0; c < children; c++) {
		if ((ret = FUNC4(zhdl, child[c], search_guid)) != NULL)
			return (ret);
	}

	if (FUNC2(nv, ZPOOL_CONFIG_SPARES,
	    &child, &children) != 0)
		return (NULL);

	for (c = 0; c < children; c++) {
		if ((ret = FUNC4(zhdl, child[c], search_guid)) != NULL)
			return (ret);
	}

	return (NULL);
}