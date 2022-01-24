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
typedef  scalar_t__ pool_state_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int O_DIRECT ; 
 int O_RDONLY ; 
 scalar_t__ POOL_STATE_SPARE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPARES ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  g_zfs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,scalar_t__*,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static boolean_t
FUNC10(nvlist_t *config, const char *path)
{
	int fd;
	pool_state_t state;
	char *name = NULL;
	nvlist_t *label;
	uint64_t guid, spareguid;
	nvlist_t *nvroot;
	nvlist_t **spares;
	uint_t i, nspares;
	boolean_t inuse;

	if ((fd = FUNC6(path, O_RDONLY|O_DIRECT)) < 0)
		return (B_FALSE);

	if (FUNC8(g_zfs, fd, &state, &name, &inuse) != 0 ||
	    !inuse ||
	    state != POOL_STATE_SPARE ||
	    FUNC9(fd, &label, NULL) != 0) {
		FUNC1(name);
		(void) FUNC0(fd);
		return (B_FALSE);
	}
	FUNC1(name);
	(void) FUNC0(fd);

	if (config == NULL) {
		FUNC2(label);
		return (B_TRUE);
	}

	FUNC7(FUNC5(label, ZPOOL_CONFIG_GUID, &guid) == 0);
	FUNC2(label);

	FUNC7(FUNC3(config, ZPOOL_CONFIG_VDEV_TREE,
	    &nvroot) == 0);
	if (FUNC4(nvroot, ZPOOL_CONFIG_SPARES,
	    &spares, &nspares) == 0) {
		for (i = 0; i < nspares; i++) {
			FUNC7(FUNC5(spares[i],
			    ZPOOL_CONFIG_GUID, &spareguid) == 0);
			if (spareguid == guid)
				return (B_TRUE);
		}
	}

	return (B_FALSE);
}