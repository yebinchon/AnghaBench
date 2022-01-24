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
typedef  int /*<<< orphan*/  uint64_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ ENAMETOOLONG ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  SIGKILL ; 
 scalar_t__ STDERR_FILENO ; 
 scalar_t__ STDIN_FILENO ; 
 scalar_t__ STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ ZEVENT_FILENO ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct timespec*,int /*<<< orphan*/ *) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,char const*,scalar_t__,...) ; 

__attribute__((used)) static void
FUNC19(uint64_t eid, const char *dir, const char *prog,
    char *env[], int zfd)
{
	char path[PATH_MAX];
	int n;
	pid_t pid;
	int fd;
	pid_t wpid;
	int status;

	FUNC5(dir != NULL);
	FUNC5(prog != NULL);
	FUNC5(env != NULL);
	FUNC5(zfd >= 0);

	n = FUNC12(path, sizeof (path), "%s/%s", dir, prog);
	if ((n < 0) || (n >= sizeof (path))) {
		FUNC18(LOG_WARNING,
		    "Failed to fork \"%s\" for eid=%llu: %s",
		    prog, eid, FUNC13(ENAMETOOLONG));
		return;
	}
	pid = FUNC8();
	if (pid < 0) {
		FUNC18(LOG_WARNING,
		    "Failed to fork \"%s\" for eid=%llu: %s",
		    prog, eid, FUNC13(errno));
		return;
	} else if (pid == 0) {
		(void) FUNC15(022);
		if ((fd = FUNC11("/dev/null", O_RDWR)) != -1) {
			(void) FUNC6(fd, STDIN_FILENO);
			(void) FUNC6(fd, STDOUT_FILENO);
			(void) FUNC6(fd, STDERR_FILENO);
		}
		(void) FUNC6(zfd, ZEVENT_FILENO);
		FUNC17(ZEVENT_FILENO + 1);
		FUNC7(path, prog, NULL, env);
		FUNC4(127);
	}

	/* parent process */

	FUNC18(LOG_INFO, "Invoking \"%s\" eid=%llu pid=%d",
	    prog, eid, pid);

	/* FIXME: Timeout rogue child processes with sigalarm? */

	/*
	 * Wait for child process using WNOHANG to limit
	 * the time spent waiting to 10 seconds (10,000ms).
	 */
	for (n = 0; n < 1000; n++) {
		wpid = FUNC16(pid, &status, WNOHANG);
		if (wpid == (pid_t)-1) {
			if (errno == EINTR)
				continue;
			FUNC18(LOG_WARNING,
			    "Failed to wait for \"%s\" eid=%llu pid=%d",
			    prog, eid, pid);
			break;
		} else if (wpid == 0) {
			struct timespec t;

			/* child still running */
			t.tv_sec = 0;
			t.tv_nsec = 10000000;	/* 10ms */
			(void) FUNC10(&t, NULL);
			continue;
		}

		if (FUNC1(status)) {
			FUNC18(LOG_INFO,
			    "Finished \"%s\" eid=%llu pid=%d exit=%d",
			    prog, eid, pid, FUNC0(status));
		} else if (FUNC2(status)) {
			FUNC18(LOG_INFO,
			    "Finished \"%s\" eid=%llu pid=%d sig=%d/%s",
			    prog, eid, pid, FUNC3(status),
			    FUNC14(FUNC3(status)));
		} else {
			FUNC18(LOG_INFO,
			    "Finished \"%s\" eid=%llu pid=%d status=0x%X",
			    prog, eid, (unsigned int) status);
		}
		break;
	}

	/*
	 * kill child process after 10 seconds
	 */
	if (wpid == 0) {
		FUNC18(LOG_WARNING, "Killing hung \"%s\" pid=%d",
		    prog, pid);
		(void) FUNC9(pid, SIGKILL);
	}
}