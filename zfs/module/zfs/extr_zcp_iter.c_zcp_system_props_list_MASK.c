#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kwargs; int /*<<< orphan*/  pargs; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ zcp_list_info_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_5__ {int /*<<< orphan*/ * zri_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__ zcp_system_props_list_info ; 

__attribute__((used)) static int
FUNC10(lua_State *state)
{
	int error;
	char errbuf[128];
	const char *dataset_name;
	dsl_pool_t *dp = FUNC9(state)->zri_pool;
	zcp_list_info_t *libinfo = &zcp_system_props_list_info;
	FUNC8(state, libinfo->name, libinfo->pargs, libinfo->kwargs);
	dataset_name = FUNC3(state, 1);
	nvlist_t *nv = FUNC1();

	dsl_dataset_t *ds = FUNC5(state, dp, dataset_name, FTAG);
	if (ds == NULL)
		return (1); /* not reached; zcp_dataset_hold() longjmp'd */

	/* Get the names of all valid system properties for this dataset */
	FUNC6(ds, nv);
	FUNC0(ds, FTAG);

	/* push list as lua table */
	error = FUNC7(state, nv, errbuf, sizeof (errbuf));
	FUNC4(nv);
	if (error != 0) {
		return (FUNC2(state,
		    "Error returning nvlist: %s", errbuf));
	}
	return (1);
}