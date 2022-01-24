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
typedef  int /*<<< orphan*/  zed_strings_t ;
struct zed_conf {char* zedlet_dir; int /*<<< orphan*/ * zedlets; scalar_t__ do_verbose; int /*<<< orphan*/  do_force; } ;
struct stat {int st_mode; scalar_t__ st_uid; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  pathname ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int S_IXUSR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11(struct zed_conf *zcp)
{
	zed_strings_t *zedlets;
	DIR *dirp;
	struct dirent *direntp;
	char pathname[PATH_MAX];
	struct stat st;
	int n;

	if (!zcp) {
		errno = EINVAL;
		FUNC7(LOG_ERR, "Failed to scan zedlet dir: %s",
		    FUNC6(errno));
		return (-1);
	}
	zedlets = FUNC9();
	if (!zedlets) {
		errno = ENOMEM;
		FUNC7(LOG_WARNING, "Failed to scan dir \"%s\": %s",
		    zcp->zedlet_dir, FUNC6(errno));
		return (-1);
	}
	dirp = FUNC2(zcp->zedlet_dir);
	if (!dirp) {
		int errno_bak = errno;
		FUNC7(LOG_WARNING, "Failed to open dir \"%s\": %s",
		    zcp->zedlet_dir, FUNC6(errno));
		FUNC10(zedlets);
		errno = errno_bak;
		return (-1);
	}
	while ((direntp = FUNC3(dirp))) {
		if (direntp->d_name[0] == '.')
			continue;

		n = FUNC4(pathname, sizeof (pathname),
		    "%s/%s", zcp->zedlet_dir, direntp->d_name);
		if ((n < 0) || (n >= sizeof (pathname))) {
			FUNC7(LOG_WARNING, "Failed to stat \"%s\": %s",
			    direntp->d_name, FUNC6(ENAMETOOLONG));
			continue;
		}
		if (FUNC5(pathname, &st) < 0) {
			FUNC7(LOG_WARNING, "Failed to stat \"%s\": %s",
			    pathname, FUNC6(errno));
			continue;
		}
		if (!FUNC0(st.st_mode)) {
			FUNC7(LOG_INFO,
			    "Ignoring \"%s\": not a regular file",
			    direntp->d_name);
			continue;
		}
		if ((st.st_uid != 0) && !zcp->do_force) {
			FUNC7(LOG_NOTICE,
			    "Ignoring \"%s\": not owned by root",
			    direntp->d_name);
			continue;
		}
		if (!(st.st_mode & S_IXUSR)) {
			FUNC7(LOG_INFO,
			    "Ignoring \"%s\": not executable by user",
			    direntp->d_name);
			continue;
		}
		if ((st.st_mode & S_IWGRP) && !zcp->do_force) {
			FUNC7(LOG_NOTICE,
			    "Ignoring \"%s\": writable by group",
			    direntp->d_name);
			continue;
		}
		if ((st.st_mode & S_IWOTH) && !zcp->do_force) {
			FUNC7(LOG_NOTICE,
			    "Ignoring \"%s\": writable by other",
			    direntp->d_name);
			continue;
		}
		if (FUNC8(zedlets, NULL, direntp->d_name) < 0) {
			FUNC7(LOG_WARNING,
			    "Failed to register \"%s\": %s",
			    direntp->d_name, FUNC6(errno));
			continue;
		}
		if (zcp->do_verbose)
			FUNC7(LOG_INFO,
			    "Registered zedlet \"%s\"", direntp->d_name);
	}
	if (FUNC1(dirp) < 0) {
		int errno_bak = errno;
		FUNC7(LOG_WARNING, "Failed to close dir \"%s\": %s",
		    zcp->zedlet_dir, FUNC6(errno));
		FUNC10(zedlets);
		errno = errno_bak;
		return (-1);
	}
	if (zcp->zedlets)
		FUNC10(zcp->zedlets);

	zcp->zedlets = zedlets;
	return (0);
}