#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int pl_prop; int /*<<< orphan*/  pl_fixed; int /*<<< orphan*/  pl_width; int /*<<< orphan*/ * pl_user_prop; } ;
typedef  TYPE_1__ zprop_list_t ;
typedef  int /*<<< orphan*/  zfs_type_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EZFS_BADPROP ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 int /*<<< orphan*/  ZFS_TYPE_POOL ; 
 int ZPROP_INVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(libzfs_handle_t *hdl, char *propname, zprop_list_t **listp,
    zfs_type_t type)
{
	int prop;
	zprop_list_t *entry;

	prop = FUNC12(propname, type);

	if (prop != ZPROP_INVAL && !FUNC13(prop, type, B_FALSE))
		prop = ZPROP_INVAL;

	/*
	 * When no property table entry can be found, return failure if
	 * this is a pool property or if this isn't a user-defined
	 * dataset property,
	 */
	if (prop == ZPROP_INVAL && ((type == ZFS_TYPE_POOL &&
	    !FUNC10(propname) &&
	    !FUNC11(propname)) ||
	    (type == ZFS_TYPE_DATASET && !FUNC6(propname) &&
	    !FUNC7(propname) && !FUNC8(propname)))) {
		FUNC5(hdl, FUNC0(TEXT_DOMAIN,
		    "invalid property '%s'"), propname);
		return (FUNC4(hdl, EZFS_BADPROP,
		    FUNC0(TEXT_DOMAIN, "bad property list")));
	}

	if ((entry = FUNC3(hdl, sizeof (zprop_list_t))) == NULL)
		return (-1);

	entry->pl_prop = prop;
	if (prop == ZPROP_INVAL) {
		if ((entry->pl_user_prop = FUNC9(hdl, propname)) ==
		    NULL) {
			FUNC1(entry);
			return (-1);
		}
		entry->pl_width = FUNC2(propname);
	} else {
		entry->pl_width = FUNC14(prop, &entry->pl_fixed,
		    type);
	}

	*listp = entry;

	return (0);
}