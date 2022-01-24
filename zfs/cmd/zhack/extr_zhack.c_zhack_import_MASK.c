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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  void* boolean_t ;
struct TYPE_3__ {void* can_be_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_OST_ZFS ; 
 int EEXIST ; 
 int FREAD ; 
 int /*<<< orphan*/  FTAG ; 
 int FWRITE ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZFS_IMPORT_NORMAL ; 
 int /*<<< orphan*/  ZFS_IMPORT_SKIP_MMP ; 
 int /*<<< orphan*/  ZPOOL_PROP_READONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,...) ; 
 TYPE_1__ g_importargs ; 
 int /*<<< orphan*/  g_pool ; 
 void* g_readonly ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  libzpool_config_ops ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  space_delta_cb ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  zfeature_checks_disable ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(char *target, boolean_t readonly)
{
	nvlist_t *config;
	nvlist_t *props;
	int error;

	FUNC3(readonly ? FREAD : (FREAD | FWRITE));

	FUNC1(DMU_OST_ZFS, space_delta_cb);

	g_readonly = readonly;
	g_importargs.can_be_active = readonly;
	g_pool = FUNC7(target);

	error = FUNC9(NULL, target, &config, &g_importargs,
	    &libzpool_config_ops);
	if (error)
		FUNC2(NULL, FTAG, "cannot import '%s'", target);

	props = NULL;
	if (readonly) {
		FUNC0(FUNC5(&props, NV_UNIQUE_NAME, 0) == 0);
		FUNC0(FUNC4(props,
		    FUNC10(ZPOOL_PROP_READONLY), 1) == 0);
	}

	zfeature_checks_disable = B_TRUE;
	error = FUNC6(target, config, props,
	    (readonly ?  ZFS_IMPORT_SKIP_MMP : ZFS_IMPORT_NORMAL));
	zfeature_checks_disable = B_FALSE;
	if (error == EEXIST)
		error = 0;

	if (error)
		FUNC2(NULL, FTAG, "can't import '%s': %s", target,
		    FUNC8(error));
}