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
struct TYPE_3__ {int zc_cookie; char* zc_name; char* zc_value; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  scalar_t__ dmu_objset_type_t ;
typedef  int boolean_t ;

/* Variables and functions */
 scalar_t__ DMU_OST_ZFS ; 
 int /*<<< orphan*/  DS_FIND_CHILDREN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EXDEV ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,char*,char*,int) ; 
 int FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  recursive_unmount ; 
 char* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC10(zfs_cmd_t *zc)
{
	objset_t *os;
	dmu_objset_type_t ost;
	boolean_t recursive = zc->zc_cookie & 1;
	char *at;
	int err;

	/* "zfs rename" from and to ...%recv datasets should both fail */
	zc->zc_name[sizeof (zc->zc_name) - 1] = '\0';
	zc->zc_value[sizeof (zc->zc_value) - 1] = '\0';
	if (FUNC1(zc->zc_name, NULL, NULL) != 0 ||
	    FUNC1(zc->zc_value, NULL, NULL) != 0 ||
	    FUNC8(zc->zc_name, '%') || FUNC8(zc->zc_value, '%'))
		return (FUNC0(EINVAL));

	err = FUNC3(zc->zc_name, FTAG, &os);
	if (err != 0)
		return (err);
	ost = FUNC5(os);
	FUNC4(os, FTAG);

	at = FUNC8(zc->zc_name, '@');
	if (at != NULL) {
		/* snaps must be in same fs */
		int error;

		if (FUNC9(zc->zc_name, zc->zc_value, at - zc->zc_name + 1))
			return (FUNC0(EXDEV));
		*at = '\0';
		if (ost == DMU_OST_ZFS) {
			error = FUNC2(zc->zc_name,
			    recursive_unmount, at + 1,
			    recursive ? DS_FIND_CHILDREN : 0);
			if (error != 0) {
				*at = '@';
				return (error);
			}
		}
		error = FUNC6(zc->zc_name,
		    at + 1, FUNC8(zc->zc_value, '@') + 1, recursive);
		*at = '@';

		return (error);
	} else {
		return (FUNC7(zc->zc_name, zc->zc_value));
	}
}