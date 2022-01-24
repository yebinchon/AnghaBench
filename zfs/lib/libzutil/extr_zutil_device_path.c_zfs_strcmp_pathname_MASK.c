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
typedef  int /*<<< orphan*/  cmp_name ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int FUNC6 (char*) ; 
 char* FUNC7 (char*,char*) ; 
 int FUNC8 (char*,int) ; 
 int FUNC9 (char const*,char*,int) ; 

int
FUNC10(const char *name, const char *cmp, int wholedisk)
{
	int path_len, cmp_len;
	char path_name[MAXPATHLEN];
	char cmp_name[MAXPATHLEN];
	char *dir, *dup;

	/* Strip redundant slashes if one exists due to ZPOOL_IMPORT_PATH */
	FUNC1(cmp_name, 0, MAXPATHLEN);
	dup = FUNC3(cmp);
	dir = FUNC7(dup, "/");
	while (dir) {
		FUNC4(cmp_name, "/", sizeof (cmp_name));
		FUNC4(cmp_name, dir, sizeof (cmp_name));
		dir = FUNC7(NULL, "/");
	}
	FUNC0(dup);

	if (name[0] != '/')
		return (FUNC9(name, cmp_name, wholedisk));

	(void) FUNC5(path_name, name, MAXPATHLEN);
	path_len = FUNC6(path_name);
	cmp_len = FUNC6(cmp_name);

	if (wholedisk) {
		path_len = FUNC8(path_name, MAXPATHLEN);
		if (path_len == -1)
			return (ENOMEM);
	}

	if ((path_len != cmp_len) || FUNC2(path_name, cmp_name))
		return (ENOENT);

	return (0);
}