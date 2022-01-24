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
 int DEFAULT_IMPORT_PATH_SIZE ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char*) ; 
 char** zpool_default_import_path ; 

__attribute__((used)) static int
FUNC6(char *name, int *order)
{
	int i = 0, error = ENOENT;
	char *dir, *env, *envdup;

	env = FUNC1("ZPOOL_IMPORT_PATH");
	if (env) {
		envdup = FUNC2(env);
		dir = FUNC5(envdup, ":");
		while (dir) {
			if (FUNC4(name, dir, FUNC3(dir)) == 0) {
				*order = i;
				error = 0;
				break;
			}
			dir = FUNC5(NULL, ":");
			i++;
		}
		FUNC0(envdup);
	} else {
		for (i = 0; i < DEFAULT_IMPORT_PATH_SIZE; i++) {
			if (FUNC4(name, zpool_default_import_path[i],
			    FUNC3(zpool_default_import_path[i])) == 0) {
				*order = i;
				error = 0;
				break;
			}
		}
	}

	return (error);
}