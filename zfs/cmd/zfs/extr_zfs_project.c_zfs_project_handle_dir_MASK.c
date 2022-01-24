#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ zpc_recursive; scalar_t__ zpc_ignore_noent; } ;
typedef  TYPE_1__ zfs_project_control_t ;
struct dirent {char const* d_name; scalar_t__ d_type; } ;
typedef  int /*<<< orphan*/  list_t ;
typedef  int /*<<< orphan*/  fullname ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ B_TRUE ; 
 scalar_t__ DT_DIR ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 char* FUNC7 (int) ; 
 int FUNC8 (char const*) ; 
 int FUNC9 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC11(const char *name, zfs_project_control_t *zpc,
    list_t *head)
{
	char fullname[PATH_MAX];
	struct dirent *ent;
	DIR *dir;
	int ret = 0;

	dir = FUNC3(name);
	if (dir == NULL) {
		if (errno == ENOENT && zpc->zpc_ignore_noent)
			return (0);

		ret = -errno;
		(void) FUNC1(stderr, FUNC2("failed to opendir %s: %s\n"),
		    name, FUNC7(errno));
		return (ret);
	}

	/* Non-top item, ignore the case of being removed or renamed by race. */
	zpc->zpc_ignore_noent = B_TRUE;
	errno = 0;
	while (!ret && (ent = FUNC4(dir)) != NULL) {
		/* skip "." and ".." */
		if (FUNC6(ent->d_name, ".") == 0 ||
		    FUNC6(ent->d_name, "..") == 0)
			continue;

		if (FUNC8(ent->d_name) + FUNC8(name) >=
		    sizeof (fullname) + 1) {
			errno = ENAMETOOLONG;
			break;
		}

		FUNC5(fullname, "%s/%s", name, ent->d_name);
		ret = FUNC9(fullname, zpc);
		if (!ret && zpc->zpc_recursive && ent->d_type == DT_DIR)
			FUNC10(head, fullname);
	}

	if (errno && !ret) {
		ret = -errno;
		(void) FUNC1(stderr, FUNC2("failed to readdir %s: %s\n"),
		    name, FUNC7(errno));
	}

	FUNC0(dir);
	return (ret);
}