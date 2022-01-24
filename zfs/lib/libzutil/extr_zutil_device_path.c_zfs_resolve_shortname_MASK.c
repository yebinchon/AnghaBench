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

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  F_OK ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char const* const,char const*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 
 char** FUNC6 (size_t*) ; 

int
FUNC7(const char *name, char *path, size_t len)
{
	int i, error = -1;
	char *dir, *env, *envdup;

	env = FUNC2("ZPOOL_IMPORT_PATH");
	errno = ENOENT;

	if (env) {
		envdup = FUNC4(env);
		dir = FUNC5(envdup, ":");
		while (dir && error) {
			(void) FUNC3(path, len, "%s/%s", dir, name);
			error = FUNC0(path, F_OK);
			dir = FUNC5(NULL, ":");
		}
		FUNC1(envdup);
	} else {
		const char * const *zpool_default_import_path;
		size_t count;

		zpool_default_import_path = FUNC6(&count);

		for (i = 0; i < count && error < 0; i++) {
			(void) FUNC3(path, len, "%s/%s",
			    zpool_default_import_path[i], name);
			error = FUNC0(path, F_OK);
		}
	}

	return (error ? ENOENT : 0);
}