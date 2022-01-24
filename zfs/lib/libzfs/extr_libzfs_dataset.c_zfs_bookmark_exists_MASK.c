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
typedef  int /*<<< orphan*/  fsname ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

boolean_t
FUNC6(const char *path)
{
	nvlist_t *bmarks;
	nvlist_t *props;
	char fsname[ZFS_MAX_DATASET_NAME_LEN];
	char *bmark_name;
	char *pound;
	int err;
	boolean_t rv;

	(void) FUNC5(fsname, path, sizeof (fsname));
	pound = FUNC4(fsname, '#');
	if (pound == NULL)
		return (B_FALSE);

	*pound = '\0';
	bmark_name = pound + 1;
	props = FUNC0();
	err = FUNC1(fsname, props, &bmarks);
	FUNC3(props);
	if (err != 0) {
		FUNC3(bmarks);
		return (B_FALSE);
	}

	rv = FUNC2(bmarks, bmark_name);
	FUNC3(bmarks);
	return (rv);
}