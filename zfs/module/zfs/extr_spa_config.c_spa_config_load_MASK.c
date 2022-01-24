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
typedef  int /*<<< orphan*/  uint64_t ;
struct _buf {int dummy; } ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 scalar_t__ DATA_TYPE_NVLIST ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct _buf*) ; 
 scalar_t__ FUNC4 (struct _buf*,int /*<<< orphan*/ *) ; 
 struct _buf* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (struct _buf*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* spa_config_path ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 scalar_t__ zfs_autoimport_disable ; 

void
FUNC17(void)
{
	void *buf = NULL;
	nvlist_t *nvlist, *child;
	nvpair_t *nvpair;
	char *pathname;
	struct _buf *file;
	uint64_t fsize;

#ifdef _KERNEL
	if (zfs_autoimport_disable)
		return;
#endif

	/*
	 * Open the configuration file.
	 */
	pathname = FUNC1(MAXPATHLEN, KM_SLEEP);

	(void) FUNC14(pathname, MAXPATHLEN, "%s", spa_config_path);

	file = FUNC5(pathname);

	FUNC2(pathname, MAXPATHLEN);

	if (file == (struct _buf *)-1)
		return;

	if (FUNC4(file, &fsize) != 0)
		goto out;

	buf = FUNC1(fsize, KM_SLEEP);

	/*
	 * Read the nvlist from the file.
	 */
	if (FUNC6(file, buf, fsize, 0) < 0)
		goto out;

	/*
	 * Unpack the nvlist.
	 */
	if (FUNC11(buf, fsize, &nvlist, KM_SLEEP) != 0)
		goto out;

	/*
	 * Iterate over all elements in the nvlist, creating a new spa_t for
	 * each one with the specified configuration.
	 */
	FUNC7(&spa_namespace_lock);
	nvpair = NULL;
	while ((nvpair = FUNC10(nvlist, nvpair)) != NULL) {
		if (FUNC13(nvpair) != DATA_TYPE_NVLIST)
			continue;

		child = FUNC0(nvpair);

		if (FUNC16(FUNC12(nvpair)) != NULL)
			continue;
		(void) FUNC15(FUNC12(nvpair), child, NULL);
	}
	FUNC8(&spa_namespace_lock);

	FUNC9(nvlist);

out:
	if (buf != NULL)
		FUNC2(buf, fsize);

	FUNC3(file);
}