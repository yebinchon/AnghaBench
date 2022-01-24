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
struct zed_conf {scalar_t__ state_fd; int /*<<< orphan*/  state_file; scalar_t__ do_zero; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  dirbuf ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENAMETOOLONG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int PATH_MAX ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IRWXU ; 
 int S_IWUSR ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,...) ; 

int
FUNC10(struct zed_conf *zcp)
{
	char dirbuf[PATH_MAX];
	mode_t dirmode = S_IRWXU | S_IRGRP | S_IXGRP | S_IROTH | S_IXOTH;
	int n;
	char *p;
	int rv;

	if (!zcp || !zcp->state_file) {
		errno = EINVAL;
		FUNC9(LOG_ERR, "Failed to open state file: %s",
		    FUNC3(errno));
		return (-1);
	}
	n = FUNC4(dirbuf, zcp->state_file, sizeof (dirbuf));
	if (n >= sizeof (dirbuf)) {
		errno = ENAMETOOLONG;
		FUNC9(LOG_WARNING, "Failed to open state file: %s",
		    FUNC3(errno));
		return (-1);
	}
	p = FUNC5(dirbuf, '/');
	if (p)
		*p = '\0';

	if ((FUNC1(dirbuf, dirmode) < 0) && (errno != EEXIST)) {
		FUNC9(LOG_WARNING,
		    "Failed to create directory \"%s\": %s",
		    dirbuf, FUNC3(errno));
		return (-1);
	}
	if (zcp->state_fd >= 0) {
		if (FUNC0(zcp->state_fd) < 0) {
			FUNC9(LOG_WARNING,
			    "Failed to close state file \"%s\": %s",
			    zcp->state_file, FUNC3(errno));
			return (-1);
		}
	}
	if (zcp->do_zero)
		(void) FUNC6(zcp->state_file);

	zcp->state_fd = FUNC2(zcp->state_file,
	    (O_RDWR | O_CREAT), (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH));
	if (zcp->state_fd < 0) {
		FUNC9(LOG_WARNING, "Failed to open state file \"%s\": %s",
		    zcp->state_file, FUNC3(errno));
		return (-1);
	}
	rv = FUNC8(zcp->state_fd);
	if (rv < 0) {
		FUNC9(LOG_WARNING, "Failed to lock state file \"%s\": %s",
		    zcp->state_file, FUNC3(errno));
		return (-1);
	}
	if (rv > 0) {
		pid_t pid = FUNC7(zcp->state_fd);
		if (pid < 0) {
			FUNC9(LOG_WARNING,
			    "Failed to test lock on state file \"%s\"",
			    zcp->state_file);
		} else if (pid > 0) {
			FUNC9(LOG_WARNING,
			    "Found PID %d bound to state file \"%s\"",
			    pid, zcp->state_file);
		} else {
			FUNC9(LOG_WARNING,
			    "Inconsistent lock state on state file \"%s\"",
			    zcp->state_file);
		}
		return (-1);
	}
	return (0);
}