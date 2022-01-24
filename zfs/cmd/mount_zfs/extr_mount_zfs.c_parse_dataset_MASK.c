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
struct stat64 {int dummy; } ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,struct stat64*) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 int FUNC9 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC10(char *dataset)
{
	char cwd[PATH_MAX];
	struct stat64 statbuf;
	int error;
	int len;

	/*
	 * We expect a pool/dataset to be provided, however if we're
	 * given a device which is a member of a zpool we attempt to
	 * extract the pool name stored in the label.  Given the pool
	 * name we can mount the root dataset.
	 */
	error = FUNC5(dataset, &statbuf);
	if (error == 0) {
		nvlist_t *config;
		char *name;
		int fd;

		fd = FUNC4(dataset, O_RDONLY);
		if (fd < 0)
			goto out;

		error = FUNC9(fd, &config, NULL);
		(void) FUNC0(fd);
		if (error)
			goto out;

		error = FUNC3(config,
		    ZPOOL_CONFIG_POOL_NAME, &name);
		if (error) {
			FUNC2(config);
		} else {
			dataset = FUNC6(name);
			FUNC2(config);
			return (dataset);
		}
	}
out:
	/*
	 * If a file or directory in your current working directory is
	 * named 'dataset' then mount(8) will prepend your current working
	 * directory to the dataset.  There is no way to prevent this
	 * behavior so we simply check for it and strip the prepended
	 * patch when it is added.
	 */
	if (FUNC1(cwd, PATH_MAX) == NULL)
		return (dataset);

	len = FUNC7(cwd);

	/* Do not add one when cwd already ends in a trailing '/' */
	if (FUNC8(cwd, dataset, len) == 0)
		return (dataset + len + (cwd[len-1] != '/'));

	return (dataset);
}