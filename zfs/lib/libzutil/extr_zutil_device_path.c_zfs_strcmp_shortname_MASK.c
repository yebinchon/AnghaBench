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
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char*,int,char*,char*,char const*) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char const*) ; 
 char* FUNC6 (char*,char*) ; 
 int FUNC7 (char*,int) ; 
 char** FUNC8 (size_t*) ; 

__attribute__((used)) static int
FUNC9(const char *name, const char *cmp_name, int wholedisk)
{
	int path_len, cmp_len, i = 0, error = ENOENT;
	char *dir, *env, *envdup = NULL;
	char path_name[MAXPATHLEN];
	const char * const *zpool_default_import_path;
	size_t count;

	zpool_default_import_path = FUNC8(&count);

	cmp_len = FUNC5(cmp_name);
	env = FUNC1("ZPOOL_IMPORT_PATH");

	if (env) {
		envdup = FUNC4(env);
		dir = FUNC6(envdup, ":");
	} else {
		dir =  (char *)zpool_default_import_path[i];
	}

	while (dir) {
		/* Trim trailing directory slashes from ZPOOL_IMPORT_PATH */
		if (env) {
			while (dir[FUNC5(dir)-1] == '/')
				dir[FUNC5(dir)-1] = '\0';
		}

		path_len = FUNC2(path_name, MAXPATHLEN, "%s/%s", dir, name);
		if (wholedisk)
			path_len = FUNC7(path_name, MAXPATHLEN);

		if ((path_len == cmp_len) && FUNC3(path_name, cmp_name) == 0) {
			error = 0;
			break;
		}

		if (env) {
			dir = FUNC6(NULL, ":");
		} else if (++i < count) {
			dir = (char *)zpool_default_import_path[i];
		} else {
			dir = NULL;
		}
	}

	if (env)
		FUNC0(envdup);

	return (error);
}