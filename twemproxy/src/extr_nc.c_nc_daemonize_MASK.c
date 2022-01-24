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
typedef  scalar_t__ rstatus_t ;
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ NC_ERROR ; 
 scalar_t__ NC_OK ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SIGHUP ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static rstatus_t
FUNC11(int dump_core)
{
    rstatus_t status;
    pid_t pid, sid;
    int fd;

    pid = FUNC4();
    switch (pid) {
    case -1:
        FUNC5("fork() failed: %s", FUNC9(errno));
        return NC_ERROR;

    case 0:
        break;

    default:
        /* parent terminates */
        FUNC0(0);
    }

    /* 1st child continues and becomes the session leader */

    sid = FUNC7();
    if (sid < 0) {
        FUNC5("setsid() failed: %s", FUNC9(errno));
        return NC_ERROR;
    }

    if (FUNC8(SIGHUP, SIG_IGN) == SIG_ERR) {
        FUNC5("signal(SIGHUP, SIG_IGN) failed: %s", FUNC9(errno));
        return NC_ERROR;
    }

    pid = FUNC4();
    switch (pid) {
    case -1:
        FUNC5("fork() failed: %s", FUNC9(errno));
        return NC_ERROR;

    case 0:
        break;

    default:
        /* 1st child terminates */
        FUNC0(0);
    }

    /* 2nd child continues */

    /* change working directory */
    if (dump_core == 0) {
        status = FUNC1("/");
        if (status < 0) {
            FUNC5("chdir(\"/\") failed: %s", FUNC9(errno));
            return NC_ERROR;
        }
    }

    /* clear file mode creation mask */
    FUNC10(0);

    /* redirect stdin, stdout and stderr to "/dev/null" */

    fd = FUNC6("/dev/null", O_RDWR);
    if (fd < 0) {
        FUNC5("open(\"/dev/null\") failed: %s", FUNC9(errno));
        return NC_ERROR;
    }

    status = FUNC3(fd, STDIN_FILENO);
    if (status < 0) {
        FUNC5("dup2(%d, STDIN) failed: %s", fd, FUNC9(errno));
        FUNC2(fd);
        return NC_ERROR;
    }

    status = FUNC3(fd, STDOUT_FILENO);
    if (status < 0) {
        FUNC5("dup2(%d, STDOUT) failed: %s", fd, FUNC9(errno));
        FUNC2(fd);
        return NC_ERROR;
    }

    status = FUNC3(fd, STDERR_FILENO);
    if (status < 0) {
        FUNC5("dup2(%d, STDERR) failed: %s", fd, FUNC9(errno));
        FUNC2(fd);
        return NC_ERROR;
    }

    if (fd > STDERR_FILENO) {
        status = FUNC2(fd);
        if (status < 0) {
            FUNC5("close(%d) failed: %s", fd, FUNC9(errno));
            return NC_ERROR;
        }
    }

    return NC_OK;
}