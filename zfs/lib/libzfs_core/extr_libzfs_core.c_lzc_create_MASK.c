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
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  enum lzc_dataset_type { ____Placeholder_lzc_dataset_type } lzc_dataset_type ;
typedef  int /*<<< orphan*/  dmu_objset_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_IOC_CREATE ; 
 char* ZPOOL_HIDDEN_ARGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(const char *fsname, enum lzc_dataset_type type, nvlist_t *props,
    uint8_t *wkeydata, uint_t wkeylen)
{
	int error;
	nvlist_t *hidden_args = NULL;
	nvlist_t *args = FUNC3();

	FUNC0(args, "type", (dmu_objset_type_t)type);
	if (props != NULL)
		FUNC1(args, "props", props);

	if (wkeydata != NULL) {
		hidden_args = FUNC3();
		FUNC2(hidden_args, "wkeydata", wkeydata,
		    wkeylen);
		FUNC1(args, ZPOOL_HIDDEN_ARGS, hidden_args);
	}

	error = FUNC4(ZFS_IOC_CREATE, fsname, args, NULL);
	FUNC5(hidden_args);
	FUNC5(args);
	return (error);
}