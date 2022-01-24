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
typedef  scalar_t__ zprop_source_t ;
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  size_t uint_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  fmd_hdl_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FMD_SLEEP ; 
 int /*<<< orphan*/  VDEV_TYPE_ROOT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_ASHIFT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PATH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPARES ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TYPE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  ZPOOL_PROP_ASHIFT ; 
 scalar_t__ ZPROP_SRC_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC15(fmd_hdl_t *hdl, zpool_handle_t *zhp, nvlist_t *vdev)
{
	nvlist_t *config, *nvroot, *replacement;
	nvlist_t **spares;
	uint_t s, nspares;
	char *dev_name;
	zprop_source_t source;
	int ashift;

	config = FUNC11(zhp, NULL);
	if (FUNC8(config, ZPOOL_CONFIG_VDEV_TREE,
	    &nvroot) != 0)
		return (B_FALSE);

	/*
	 * Find out if there are any hot spares available in the pool.
	 */
	if (FUNC9(nvroot, ZPOOL_CONFIG_SPARES,
	    &spares, &nspares) != 0)
		return (B_FALSE);

	/*
	 * lookup "ashift" pool property, we may need it for the replacement
	 */
	ashift = FUNC12(zhp, ZPOOL_PROP_ASHIFT, &source);

	replacement = FUNC2(hdl, FMD_SLEEP);

	(void) FUNC5(replacement, ZPOOL_CONFIG_TYPE,
	    VDEV_TYPE_ROOT);

	dev_name = FUNC14(NULL, zhp, vdev, B_FALSE);

	/*
	 * Try to replace each spare, ending when we successfully
	 * replace it.
	 */
	for (s = 0; s < nspares; s++) {
		char *spare_name;

		if (FUNC10(spares[s], ZPOOL_CONFIG_PATH,
		    &spare_name) != 0)
			continue;

		/* if set, add the "ashift" pool property to the spare nvlist */
		if (source != ZPROP_SRC_DEFAULT)
			(void) FUNC6(spares[s],
			    ZPOOL_CONFIG_ASHIFT, ashift);

		(void) FUNC4(replacement,
		    ZPOOL_CONFIG_CHILDREN, &spares[s], 1);

		FUNC1(hdl, "zpool_vdev_replace '%s' with spare '%s'",
		    dev_name, FUNC0(spare_name));

		if (FUNC13(zhp, dev_name, spare_name,
		    replacement, B_TRUE) == 0) {
			FUNC3(dev_name);
			FUNC7(replacement);
			return (B_TRUE);
		}
	}

	FUNC3(dev_name);
	FUNC7(replacement);

	return (B_FALSE);
}