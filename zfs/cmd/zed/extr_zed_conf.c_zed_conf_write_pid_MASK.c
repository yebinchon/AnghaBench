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
struct zed_conf {char* pid_file; int pid_fd; } ;
typedef  char* pid_t ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENAMETOOLONG ; 
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  LOG_ERR ; 
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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (char*,int const) ; 
 int FUNC5 (char*,int,int const) ; 
 int FUNC6 (char*,int,char*,int) ; 
 char* FUNC7 (scalar_t__) ; 
 int FUNC8 (char*,char*,int) ; 
 char* FUNC9 (char*,char) ; 
 int FUNC10 (int) ; 
 char* FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*,...) ; 

int
FUNC15(struct zed_conf *zcp)
{
	const mode_t dirmode = S_IRWXU | S_IRGRP | S_IXGRP | S_IROTH | S_IXOTH;
	const mode_t filemode = S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH;
	char buf[PATH_MAX];
	int n;
	char *p;
	mode_t mask;
	int rv;

	if (!zcp || !zcp->pid_file) {
		errno = EINVAL;
		FUNC14(LOG_ERR, "Failed to create PID file: %s",
		    FUNC7(errno));
		return (-1);
	}
	FUNC0(zcp->pid_fd == -1);
	/*
	 * Create PID file directory if needed.
	 */
	n = FUNC8(buf, zcp->pid_file, sizeof (buf));
	if (n >= sizeof (buf)) {
		errno = ENAMETOOLONG;
		FUNC14(LOG_ERR, "Failed to create PID file: %s",
		    FUNC7(errno));
		goto err;
	}
	p = FUNC9(buf, '/');
	if (p)
		*p = '\0';

	if ((FUNC4(buf, dirmode) < 0) && (errno != EEXIST)) {
		FUNC14(LOG_ERR, "Failed to create directory \"%s\": %s",
		    buf, FUNC7(errno));
		goto err;
	}
	/*
	 * Obtain PID file lock.
	 */
	mask = FUNC10(0);
	FUNC10(mask | 022);
	zcp->pid_fd = FUNC5(zcp->pid_file, (O_RDWR | O_CREAT), filemode);
	FUNC10(mask);
	if (zcp->pid_fd < 0) {
		FUNC14(LOG_ERR, "Failed to open PID file \"%s\": %s",
		    zcp->pid_file, FUNC7(errno));
		goto err;
	}
	rv = FUNC12(zcp->pid_fd);
	if (rv < 0) {
		FUNC14(LOG_ERR, "Failed to lock PID file \"%s\": %s",
		    zcp->pid_file, FUNC7(errno));
		goto err;
	} else if (rv > 0) {
		pid_t pid = FUNC11(zcp->pid_fd);
		if (pid < 0) {
			FUNC14(LOG_ERR,
			    "Failed to test lock on PID file \"%s\"",
			    zcp->pid_file);
		} else if (pid > 0) {
			FUNC14(LOG_ERR,
			    "Found PID %d bound to PID file \"%s\"",
			    pid, zcp->pid_file);
		} else {
			FUNC14(LOG_ERR,
			    "Inconsistent lock state on PID file \"%s\"",
			    zcp->pid_file);
		}
		goto err;
	}
	/*
	 * Write PID file.
	 */
	n = FUNC6(buf, sizeof (buf), "%d\n", (int)FUNC3());
	if ((n < 0) || (n >= sizeof (buf))) {
		errno = ERANGE;
		FUNC14(LOG_ERR, "Failed to write PID file \"%s\": %s",
		    zcp->pid_file, FUNC7(errno));
	} else if (FUNC13(zcp->pid_fd, buf, n) != n) {
		FUNC14(LOG_ERR, "Failed to write PID file \"%s\": %s",
		    zcp->pid_file, FUNC7(errno));
	} else if (FUNC2(zcp->pid_fd) < 0) {
		FUNC14(LOG_ERR, "Failed to sync PID file \"%s\": %s",
		    zcp->pid_file, FUNC7(errno));
	} else {
		return (0);
	}

err:
	if (zcp->pid_fd >= 0) {
		(void) FUNC1(zcp->pid_fd);
		zcp->pid_fd = -1;
	}
	return (-1);
}