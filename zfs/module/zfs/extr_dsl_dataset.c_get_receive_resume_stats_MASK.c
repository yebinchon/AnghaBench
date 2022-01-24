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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_PROP_RECEIVE_RESUME_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5(dsl_dataset_t *ds, nvlist_t *nv)
{
	char *propval = FUNC2(ds);
	if (FUNC4(propval, "") != 0) {
		FUNC0(nv,
		    ZFS_PROP_RECEIVE_RESUME_TOKEN, propval);
	} else {
		char *childval = FUNC1(ds);
		if (FUNC4(childval, "") != 0) {
			FUNC0(nv,
			    ZFS_PROP_RECEIVE_RESUME_TOKEN, childval);
		}
		FUNC3(childval);
	}
	FUNC3(propval);
}