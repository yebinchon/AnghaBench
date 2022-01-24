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
struct dirent64 {char* d_name; } ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;
typedef  int /*<<< orphan*/  libpc_handle_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  EZFS_BADPATH ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 struct dirent64* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC9(libpc_handle_t *hdl, pthread_mutex_t *lock,
    avl_tree_t *cache, const char *dir, int order)
{
	int error;
	char path[MAXPATHLEN];
	struct dirent64 *dp;
	DIR *dirp;

	if (FUNC4(dir, path) == NULL) {
		error = errno;
		if (error == ENOENT)
			return (0);

		FUNC7(hdl, FUNC5(error));
		(void) FUNC8(hdl, EZFS_BADPATH, FUNC1(
		    TEXT_DOMAIN, "cannot resolve path '%s'"), dir);
		return (error);
	}

	dirp = FUNC2(path);
	if (dirp == NULL) {
		error = errno;
		FUNC7(hdl, FUNC5(error));
		(void) FUNC8(hdl, EZFS_BADPATH,
		    FUNC1(TEXT_DOMAIN, "cannot open '%s'"), path);
		return (error);
	}

	while ((dp = FUNC3(dirp)) != NULL) {
		const char *name = dp->d_name;
		if (name[0] == '.' &&
		    (name[1] == 0 || (name[1] == '.' && name[2] == 0)))
			continue;

		FUNC6(hdl, lock, cache, path, name,
		    order);
	}

	(void) FUNC0(dirp);
	return (0);
}