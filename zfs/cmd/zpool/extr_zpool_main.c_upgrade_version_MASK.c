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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 scalar_t__ SPA_VERSION_FEATURES ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ ZPL_VERSION ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  check_unsupp_fs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC12(zpool_handle_t *zhp, uint64_t version)
{
	int ret;
	nvlist_t *config;
	uint64_t oldversion;
	int unsupp_fs = 0;

	config = FUNC8(zhp, NULL);
	FUNC6(FUNC4(config, ZPOOL_CONFIG_VERSION,
	    &oldversion) == 0);

	FUNC1(FUNC0(oldversion));
	FUNC1(oldversion < version);

	ret = FUNC7(FUNC9(zhp), check_unsupp_fs, &unsupp_fs);
	if (ret != 0)
		return (ret);

	if (unsupp_fs) {
		(void) FUNC2(stderr, FUNC3("Upgrade not performed due "
		    "to %d unsupported filesystems (max v%d).\n"),
		    unsupp_fs, (int)ZPL_VERSION);
		return (1);
	}

	ret = FUNC11(zhp, version);
	if (ret != 0)
		return (ret);

	if (version >= SPA_VERSION_FEATURES) {
		(void) FUNC5(FUNC3("Successfully upgraded "
		    "'%s' from version %llu to feature flags.\n"),
		    FUNC10(zhp), (u_longlong_t)oldversion);
	} else {
		(void) FUNC5(FUNC3("Successfully upgraded "
		    "'%s' from version %llu to version %llu.\n"),
		    FUNC10(zhp), (u_longlong_t)oldversion,
		    (u_longlong_t)version);
	}

	return (0);
}