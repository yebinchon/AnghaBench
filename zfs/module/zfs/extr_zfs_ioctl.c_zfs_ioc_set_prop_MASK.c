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
typedef  int /*<<< orphan*/  zprop_source_t ;
struct TYPE_4__ {scalar_t__ zc_nvlist_dst; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_iflags; int /*<<< orphan*/  zc_nvlist_src_size; int /*<<< orphan*/  zc_nvlist_src; scalar_t__ zc_cookie; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPROP_SRC_LOCAL ; 
 int /*<<< orphan*/  ZPROP_SRC_RECEIVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(zfs_cmd_t *zc)
{
	nvlist_t *nvl;
	boolean_t received = zc->zc_cookie;
	zprop_source_t source = (received ? ZPROP_SRC_RECEIVED :
	    ZPROP_SRC_LOCAL);
	nvlist_t *errors;
	int error;

	if ((error = FUNC4(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
	    zc->zc_iflags, &nvl)) != 0)
		return (error);

	if (received) {
		nvlist_t *origprops;

		if (FUNC1(zc->zc_name, &origprops) == 0) {
			(void) FUNC0(zc->zc_name,
			    origprops, nvl);
			FUNC5(origprops);
		}

		error = FUNC2(zc->zc_name);
	}

	errors = FUNC3();
	if (error == 0)
		error = FUNC7(zc->zc_name, source, nvl, errors);

	if (zc->zc_nvlist_dst != 0 && errors != NULL) {
		(void) FUNC6(zc, errors);
	}

	FUNC5(errors);
	FUNC5(nvl);
	return (error);
}