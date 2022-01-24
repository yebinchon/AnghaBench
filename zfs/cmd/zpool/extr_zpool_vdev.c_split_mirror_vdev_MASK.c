#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  size_t uint_t ;
struct TYPE_4__ {int /*<<< orphan*/  dryrun; } ;
typedef  TYPE_1__ splitflags_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PATH ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*,int*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__) ; 

nvlist_t *
FUNC10(zpool_handle_t *zhp, char *newname, nvlist_t *props,
    splitflags_t flags, int argc, char **argv)
{
	nvlist_t *newroot = NULL, **child;
	uint_t c, children;

	if (argc > 0) {
		if ((newroot = FUNC0(props, argc, argv)) == NULL) {
			(void) FUNC1(stderr, "%s", FUNC2("Unable to build a "
			    "pool from the specified devices\n"));
			return (NULL);
		}

		if (!flags.dryrun && FUNC4(zhp, newroot) != 0) {
			FUNC5(newroot);
			return (NULL);
		}

		/* avoid any tricks in the spec */
		FUNC8(FUNC6(newroot,
		    ZPOOL_CONFIG_CHILDREN, &child, &children) == 0);
		for (c = 0; c < children; c++) {
			char *path;
			const char *type;
			int min, max;

			FUNC8(FUNC7(child[c],
			    ZPOOL_CONFIG_PATH, &path) == 0);
			if ((type = FUNC3(path, &min, &max)) != NULL) {
				(void) FUNC1(stderr, FUNC2("Cannot use "
				    "'%s' as a device for splitting\n"), type);
				FUNC5(newroot);
				return (NULL);
			}
		}
	}

	if (FUNC9(zhp, newname, &newroot, props, flags) != 0) {
		FUNC5(newroot);
		return (NULL);
	}

	return (newroot);
}