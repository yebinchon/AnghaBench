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
typedef  int /*<<< orphan*/  ret ;
typedef  int pid_t ;
typedef  enum process_result { ____Placeholder_process_result } process_result ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int PROCESS_ERROR_GENERIC ; 
 int PROCESS_ERROR_MISSING_BINARY ; 
 int PROCESS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char const*,char* const*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int*) ; 
 int FUNC7 (int,int*,int) ; 
 int FUNC8 (int,int*,int) ; 

enum process_result
FUNC9(const char *path, const char *const argv[], pid_t *pid) {
    int fd[2];

    if (FUNC6(fd) == -1) {
        FUNC5("pipe");
        return PROCESS_ERROR_GENERIC;
    }

    enum process_result ret = PROCESS_SUCCESS;

    *pid = FUNC4();
    if (*pid == -1) {
        FUNC5("fork");
        ret = PROCESS_ERROR_GENERIC;
        goto end;
    }

    if (*pid > 0) {
        // parent close write side
        FUNC1(fd[1]);
        fd[1] = -1;
        // wait for EOF or receive errno from child
        if (FUNC7(fd[0], &ret, sizeof(ret)) == -1) {
            FUNC5("read");
            ret = PROCESS_ERROR_GENERIC;
            goto end;
        }
    } else if (*pid == 0) {
        // child close read side
        FUNC1(fd[0]);
        if (FUNC3(fd[1], F_SETFD, FD_CLOEXEC) == 0) {
            FUNC2(path, (char *const *)argv);
            if (errno == ENOENT) {
                ret = PROCESS_ERROR_MISSING_BINARY;
            } else {
                ret = PROCESS_ERROR_GENERIC;
            }
            FUNC5("exec");
        } else {
            FUNC5("fcntl");
            ret = PROCESS_ERROR_GENERIC;
        }
        // send ret to the parent
        if (FUNC8(fd[1], &ret, sizeof(ret)) == -1) {
            FUNC5("write");
        }
        // close write side before exiting
        FUNC1(fd[1]);
        FUNC0(1);
    }

end:
    if (fd[0] != -1) {
        FUNC1(fd[0]);
    }
    if (fd[1] != -1) {
        FUNC1(fd[1]);
    }
    return ret;
}