#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_prop_t ;
struct TYPE_7__ {char* zfs_name; TYPE_2__* zpool_hdl; TYPE_1__* zfs_hdl; } ;
typedef  TYPE_3__ zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_6__ {char* zpool_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  libzfs_prop_debug; } ;

/* Variables and functions */
 scalar_t__ PROP_TYPE_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int FUNC4 (char*,char const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(zfs_handle_t *zhp, zfs_prop_t prop, uint64_t intval,
    const char *strval)
{
	if (!zhp->zfs_hdl->libzfs_prop_debug)
		return;
	int error;
	char *poolname = zhp->zpool_hdl->zpool_name;
	const char *prop_name = FUNC10(prop);
	const char *program =
	    "args = ...\n"
	    "ds = args['dataset']\n"
	    "prop = args['property']\n"
	    "value, setpoint = zfs.get_prop(ds, prop)\n"
	    "return {value=value, setpoint=setpoint}\n";
	nvlist_t *outnvl;
	nvlist_t *retnvl;
	nvlist_t *argnvl = FUNC1();

	FUNC0(argnvl, "dataset", zhp->zfs_name);
	FUNC0(argnvl, "property", FUNC10(prop));

	error = FUNC4(poolname, program,
	    10 * 1000 * 1000, 10 * 1024 * 1024, argnvl, &outnvl);

	if (error == 0) {
		retnvl = FUNC2(outnvl, "return");
		if (FUNC9(prop) == PROP_TYPE_NUMBER) {
			int64_t ans;
			error = FUNC6(retnvl, "value", &ans);
			if (error != 0) {
				(void) FUNC3(stderr, "%s: zcp check error: "
				    "%u\n", prop_name, error);
				return;
			}
			if (ans != intval) {
				(void) FUNC3(stderr, "%s: zfs found %d, "
				    "but zcp found %d\n", prop_name,
				    (u_longlong_t)intval, (u_longlong_t)ans);
			}
		} else {
			char *str_ans;
			error = FUNC7(retnvl, "value", &str_ans);
			if (error != 0) {
				(void) FUNC3(stderr, "%s: zcp check error: "
				    "%u\n", prop_name, error);
				return;
			}
			if (FUNC8(strval, str_ans) != 0) {
				(void) FUNC3(stderr,
				    "%s: zfs found '%s', but zcp found '%s'\n",
				    prop_name, strval, str_ans);
			}
		}
	} else {
		(void) FUNC3(stderr, "%s: zcp check failed, channel program "
		    "error: %u\n", prop_name, error);
	}
	FUNC5(argnvl);
	FUNC5(outnvl);
}