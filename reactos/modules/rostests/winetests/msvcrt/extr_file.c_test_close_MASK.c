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
struct TYPE_3__ {scalar_t__ handle; } ;
typedef  TYPE_1__ ioinfo ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 scalar_t__ FUNC0 (char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 size_t MSVCRT_FD_BLOCK_SIZE ; 
 size_t STDERR_FILENO ; 
 size_t STDOUT_FILENO ; 
 int /*<<< orphan*/  STD_ERROR_HANDLE ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__** __pioinfo ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (intptr_t,int /*<<< orphan*/ ) ; 
 int FUNC6 (size_t) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    ioinfo *stdout_info, stdout_copy, *stderr_info, stderr_copy;
    int fd1, fd2, ret1, ret2, ret3, ret4;
    DWORD flags;
    HANDLE h;

    /* test close on fds that use the same handle */
    h = FUNC0("fdopen.tst", GENERIC_READ|GENERIC_WRITE,
            FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, CREATE_ALWAYS, 0, NULL);
    FUNC7(h != INVALID_HANDLE_VALUE, "error opening fdopen.tst file\n");

    fd1 = FUNC5((intptr_t)h, 0);
    FUNC7(fd1 != -1, "_open_osfhandle failed (%d)\n", errno);
    fd2 = FUNC5((intptr_t)h, 0);
    FUNC7(fd2 != -1, "_open_osfhandle failed (%d)\n", errno);
    FUNC7(fd1 != fd2, "fd1 == fd2\n");

    FUNC7((HANDLE)FUNC4(fd1) == h, "handles mismatch (%p != %p)\n",
            (HANDLE)FUNC4(fd1), h);
    FUNC7((HANDLE)FUNC4(fd2) == h, "handles mismatch (%p != %p)\n",
            (HANDLE)FUNC4(fd2), h);
    ret1 = FUNC6(fd1);
    FUNC7(!ret1, "close(fd1) failed (%d)\n", errno);
    FUNC7(!FUNC2(h, &flags), "GetHandleInformation succeeded\n");
    FUNC7(FUNC6(fd2), "close(fd2) succeeded\n");

    /* test close on already closed fd */
    errno = 0xdeadbeef;
    ret1 = FUNC6(fd1);
    FUNC7(ret1 == -1, "close(fd1) succeeded\n");
    FUNC7(errno == 9, "errno = %d\n", errno);

    /* test close on stdout and stderr that use the same handle */
    h = FUNC0("fdopen.tst", GENERIC_READ|GENERIC_WRITE,
            FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, CREATE_ALWAYS, 0, NULL);
    FUNC7(h != INVALID_HANDLE_VALUE, "error opening fdopen.tst file\n");

    /* tests output will not be visible from now on */
    stdout_info = &__pioinfo[STDOUT_FILENO/MSVCRT_FD_BLOCK_SIZE][STDOUT_FILENO%MSVCRT_FD_BLOCK_SIZE];
    stderr_info = &__pioinfo[STDERR_FILENO/MSVCRT_FD_BLOCK_SIZE][STDERR_FILENO%MSVCRT_FD_BLOCK_SIZE];
    stdout_copy = *stdout_info;
    stderr_copy = *stderr_info;
    stdout_info->handle = h;
    stderr_info->handle = h;

    ret1 = FUNC6(STDOUT_FILENO);
    ret2 = FUNC2(h, &flags);
    ret3 = FUNC6(STDERR_FILENO);
    ret4 = FUNC2(h, &flags);

    *stdout_info = stdout_copy;
    *stderr_info = stderr_copy;
    FUNC3(STD_OUTPUT_HANDLE, stdout_info->handle);
    FUNC3(STD_ERROR_HANDLE, stderr_info->handle);
    /* stdout and stderr restored */

    FUNC7(!ret1, "close(STDOUT_FILENO) failed\n");
    FUNC7(ret2, "GetHandleInformation failed\n");
    FUNC7(!ret3, "close(STDERR_FILENO) failed\n");
    FUNC7(!ret4, "GetHandleInformation succeeded\n");

    FUNC1( "fdopen.tst" );
}