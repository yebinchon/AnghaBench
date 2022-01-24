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
typedef  int zprop_source_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int ZPROP_SRC_NONE ; 
 int ZPROP_SRC_RECEIVED ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(const char *dsname, nvlist_t *props,
    nvlist_t *skipped)
{
	int err = 0;
	nvlist_t *cleared_props = NULL;
	FUNC3(props, skipped, &cleared_props);
	if (!FUNC1(cleared_props)) {
		/*
		 * Acts on local properties until the dataset has received
		 * properties at least once on or after SPA_VERSION_RECVD_PROPS.
		 */
		zprop_source_t flags = (ZPROP_SRC_NONE |
		    (FUNC0(dsname) ? ZPROP_SRC_RECEIVED : 0));
		err = FUNC4(dsname, flags, cleared_props, NULL);
	}
	FUNC2(cleared_props);
	return (err);
}