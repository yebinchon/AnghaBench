#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zfs_prop_t ;
struct TYPE_4__ {int /*<<< orphan*/  kwargs; int /*<<< orphan*/  pargs; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ zcp_lib_info_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/ * zri_pool; } ;

/* Variables and functions */
 scalar_t__ ZPROP_INVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ zcp_get_prop_info ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*) ; 

__attribute__((used)) static int
FUNC12(lua_State *state)
{
	const char *dataset_name;
	const char *property_name;
	dsl_pool_t *dp = FUNC7(state)->zri_pool;
	zcp_lib_info_t *libinfo = &zcp_get_prop_info;

	FUNC6(state, libinfo->name, libinfo->pargs, libinfo->kwargs);

	dataset_name = FUNC1(state, 1);
	property_name = FUNC1(state, 2);

	/* User defined property */
	if (FUNC9(property_name)) {
		return (FUNC3(state, dp,
		    dataset_name, property_name));
	}
	/* userspace property */
	if (FUNC10(property_name)) {
#ifdef _KERNEL
		return (zcp_get_userquota_prop(state, dp,
		    dataset_name, property_name));
#else
		return (FUNC0(state,
		    "user quota properties only supported in kernel mode",
		    property_name));
#endif
	}
	/* written@ property */
	if (FUNC11(property_name)) {
		return (FUNC5(state, dp,
		    dataset_name, property_name));
	}

	zfs_prop_t zfs_prop = FUNC8(property_name);
	/* Valid system property */
	if (zfs_prop != ZPROP_INVAL) {
		return (FUNC2(state, dp, dataset_name,
		    zfs_prop));
	}

	/* Invalid property name */
	return (FUNC0(state,
	    "'%s' is not a valid property", property_name));
}