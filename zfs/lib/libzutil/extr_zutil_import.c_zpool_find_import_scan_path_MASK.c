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
typedef  int /*<<< orphan*/  pthread_mutex_t ;
typedef  int /*<<< orphan*/  libpc_handle_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  EZFS_BADPATH ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int
FUNC10(libpc_handle_t *hdl, pthread_mutex_t *lock,
    avl_tree_t *cache, const char *dir, int order)
{
	int error = 0;
	char path[MAXPATHLEN];
	char *d, *b;
	char *dpath, *name;

	/*
	 * Separate the directory part and last part of the
	 * path. We do this so that we can get the realpath of
	 * the directory. We don't get the realpath on the
	 * whole path because if it's a symlink, we want the
	 * path of the symlink not where it points to.
	 */
	d = FUNC9(hdl, dir);
	b = FUNC9(hdl, dir);
	dpath = FUNC2(d);
	name = FUNC0(b);

	if (FUNC4(dpath, path) == NULL) {
		error = errno;
		if (error == ENOENT) {
			error = 0;
			goto out;
		}

		FUNC7(hdl, FUNC5(error));
		(void) FUNC8(hdl, EZFS_BADPATH, FUNC1(
		    TEXT_DOMAIN, "cannot resolve path '%s'"), dir);
		goto out;
	}

	FUNC6(hdl, lock, cache, path, name, order);

out:
	FUNC3(b);
	FUNC3(d);
	return (error);
}