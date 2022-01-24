#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* zc_name; scalar_t__ zc_nvlist_conf_size; scalar_t__ zc_nvlist_src_size; int /*<<< orphan*/  zc_iflags; int /*<<< orphan*/  zc_nvlist_src; int /*<<< orphan*/  zc_nvlist_conf; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_crypto_params_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  DCP_CMD_NONE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ZPOOL_HIDDEN_ARGS ; 
 int /*<<< orphan*/  ZPOOL_PROP_TNAME ; 
 int /*<<< orphan*/  ZPOOL_PROP_VERSION ; 
 int /*<<< orphan*/  ZPOOL_ROOTFS_PROPS ; 
 int /*<<< orphan*/  ZPROP_SRC_LOCAL ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(zfs_cmd_t *zc)
{
	int error;
	nvlist_t *config, *props = NULL;
	nvlist_t *rootprops = NULL;
	nvlist_t *zplprops = NULL;
	dsl_crypto_params_t *dcp = NULL;
	char *spa_name = zc->zc_name;
	boolean_t unload_wkey = B_TRUE;

	if ((error = FUNC5(zc->zc_nvlist_conf, zc->zc_nvlist_conf_size,
	    zc->zc_iflags, &config)))
		return (error);

	if (zc->zc_nvlist_src_size != 0 && (error =
	    FUNC5(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
	    zc->zc_iflags, &props))) {
		FUNC8(config);
		return (error);
	}

	if (props) {
		nvlist_t *nvl = NULL;
		nvlist_t *hidden_args = NULL;
		uint64_t version = SPA_VERSION;
		char *tname;

		(void) FUNC11(props,
		    FUNC17(ZPOOL_PROP_VERSION), &version);
		if (!FUNC1(version)) {
			error = FUNC0(EINVAL);
			goto pool_props_bad;
		}
		(void) FUNC9(props, ZPOOL_ROOTFS_PROPS, &nvl);
		if (nvl) {
			error = FUNC7(nvl, &rootprops, KM_SLEEP);
			if (error != 0)
				goto pool_props_bad;
			(void) FUNC12(props, ZPOOL_ROOTFS_PROPS);
		}

		(void) FUNC9(props, ZPOOL_HIDDEN_ARGS,
		    &hidden_args);
		error = FUNC3(DCP_CMD_NONE,
		    rootprops, hidden_args, &dcp);
		if (error != 0)
			goto pool_props_bad;
		(void) FUNC12(props, ZPOOL_HIDDEN_ARGS);

		FUNC2(FUNC6(&zplprops, NV_UNIQUE_NAME, KM_SLEEP) == 0);
		error = FUNC15(version, rootprops,
		    zplprops, NULL);
		if (error != 0)
			goto pool_props_bad;

		if (FUNC10(props,
		    FUNC17(ZPOOL_PROP_TNAME), &tname) == 0)
			spa_name = tname;
	}

	error = FUNC13(zc->zc_name, config, props, zplprops, dcp);

	/*
	 * Set the remaining root properties
	 */
	if (!error && (error = FUNC16(spa_name,
	    ZPROP_SRC_LOCAL, rootprops, NULL)) != 0) {
		(void) FUNC14(spa_name);
		unload_wkey = B_FALSE; /* spa_destroy() unloads wrapping keys */
	}

pool_props_bad:
	FUNC8(rootprops);
	FUNC8(zplprops);
	FUNC8(config);
	FUNC8(props);
	FUNC4(dcp, unload_wkey && !!error);

	return (error);
}