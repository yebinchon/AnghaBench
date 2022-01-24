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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int SA_CONFIG_ERR ; 
 int SA_OK ; 
 int SA_SYSTEM_ERR ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC4 (char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (char*) ; 
 int nfs_exportfs_temp_fd ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(void)
{
	pid_t pid;
	int rc, status;
	static char nfs_exportfs_tempfile[] = "/tmp/exportfs.XXXXXX";

	/*
	 * Close any existing temporary copies of output from exportfs.
	 * We have already called unlink() so file will be deleted.
	 */
	if (nfs_exportfs_temp_fd >= 0)
		FUNC2(nfs_exportfs_temp_fd);

	nfs_exportfs_temp_fd = FUNC8(nfs_exportfs_tempfile);

	if (nfs_exportfs_temp_fd < 0)
		return (SA_SYSTEM_ERR);

	FUNC9(nfs_exportfs_tempfile);

	(void) FUNC6(nfs_exportfs_temp_fd, F_SETFD, FD_CLOEXEC);

	pid = FUNC7();

	if (pid < 0) {
		(void) FUNC2(nfs_exportfs_temp_fd);
		nfs_exportfs_temp_fd = -1;
		return (SA_SYSTEM_ERR);
	}

	if (pid > 0) {
		while ((rc = FUNC10(pid, &status, 0)) <= 0 &&
		    errno == EINTR) { }

		if (rc <= 0) {
			(void) FUNC2(nfs_exportfs_temp_fd);
			nfs_exportfs_temp_fd = -1;
			return (SA_SYSTEM_ERR);
		}

		if (!FUNC1(status) || FUNC0(status) != 0) {
			(void) FUNC2(nfs_exportfs_temp_fd);
			nfs_exportfs_temp_fd = -1;
			return (SA_CONFIG_ERR);
		}

		return (SA_OK);
	}

	/* child */

	/* exportfs -v */

	if (FUNC3(nfs_exportfs_temp_fd, STDOUT_FILENO) < 0)
		FUNC5(1);

	rc = FUNC4("/usr/sbin/exportfs", "exportfs", "-v", NULL);

	if (rc < 0) {
		FUNC5(1);
	}

	FUNC5(0);
}