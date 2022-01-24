#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ zpc_recursive; scalar_t__ zpc_dironly; } ;
typedef  TYPE_1__ zfs_project_control_t ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(const char *name, zfs_project_control_t *zpc,
    struct stat *st)
{
	int ret;

	ret = FUNC4(name, st);
	if (ret) {
		(void) FUNC2(stderr, FUNC3("failed to stat %s: %s\n"),
		    name, FUNC5(errno));
		return (ret);
	}

	if (!FUNC1(st->st_mode) && !FUNC0(st->st_mode)) {
		(void) FUNC2(stderr, "%s", FUNC3("only support project quota on "
		    "regular file or directory\n"));
		return (-1);
	}

	if (!FUNC0(st->st_mode)) {
		if (zpc->zpc_dironly) {
			(void) FUNC2(stderr, FUNC3(
			    "'-d' option on non-dir target %s\n"), name);
			return (-1);
		}

		if (zpc->zpc_recursive) {
			(void) FUNC2(stderr, FUNC3(
			    "'-r' option on non-dir target %s\n"), name);
			return (-1);
		}
	}

	return (0);
}