#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hThread; } ;
struct TYPE_6__ {scalar_t__ dwFlags; } ;
typedef  TYPE_1__ STARTUPINFO ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_DEFAULT_ERROR_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  R_ERROR ; 
 int /*<<< orphan*/  R_FATAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
#define  WAIT_FAILED 130 
#define  WAIT_OBJECT_0 129 
#define  WAIT_TIMEOUT 128 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int,int) ; 
 int errno ; 
 int FUNC10 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC12 (char *cmd, const char *out, const char *tempdir, DWORD ms)
{
    STARTUPINFO si;
    PROCESS_INFORMATION pi;
    int fd, oldstdout = -1;
    DWORD wait, status;

    FUNC4 (&si);
    si.dwFlags = 0;

    if (out) {
        fd = FUNC10 (out, O_WRONLY | O_CREAT, 0666);
        if (-1 == fd)
            FUNC11 (R_FATAL, "Can't open '%s': %d", out, errno);
        oldstdout = FUNC8 (1);
        if (-1 == oldstdout)
            FUNC11 (R_FATAL, "Can't save stdout: %d", errno);
        if (-1 == FUNC9 (fd, 1))
            FUNC11 (R_FATAL, "Can't redirect stdout: %d", errno);
        FUNC7 (fd);
    }

    if (!FUNC1 (NULL, cmd, NULL, NULL, TRUE, CREATE_DEFAULT_ERROR_MODE,
                         NULL, tempdir, &si, &pi)) {
        status = -2;
    } else {
        FUNC0 (pi.hThread);
        wait = FUNC6 (pi.hProcess, ms);
        if (wait == WAIT_OBJECT_0) {
            FUNC2 (pi.hProcess, &status);
        } else {
            switch (wait) {
            case WAIT_FAILED:
                FUNC11 (R_ERROR, "Wait for '%s' failed: %d", cmd,
                        FUNC3 ());
                break;
            case WAIT_TIMEOUT:
                FUNC11 (R_ERROR, "Process '%s' timed out.", cmd);
                break;
            default:
                FUNC11 (R_ERROR, "Wait returned %d", wait);
            }
            status = wait;
            if (!FUNC5 (pi.hProcess, 257))
                FUNC11 (R_ERROR, "TerminateProcess failed: %d",
                        FUNC3 ());
            wait = FUNC6 (pi.hProcess, 5000);
            switch (wait) {
            case WAIT_FAILED:
                FUNC11 (R_ERROR,
                        "Wait for termination of '%s' failed: %d",
                        cmd, FUNC3 ());
                break;
            case WAIT_OBJECT_0:
                break;
            case WAIT_TIMEOUT:
                FUNC11 (R_ERROR, "Can't kill process '%s'", cmd);
                break;
            default:
                FUNC11 (R_ERROR, "Waiting for termination: %d",
                        wait);
            }
        }
        FUNC0 (pi.hProcess);
    }

    if (out) {
        FUNC7 (1);
        if (-1 == FUNC9 (oldstdout, 1))
            FUNC11 (R_FATAL, "Can't recover stdout: %d", errno);
        FUNC7 (oldstdout);
    }
    return status;
}