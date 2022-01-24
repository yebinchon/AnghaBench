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
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ EBADF ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int _O_CREAT ; 
 int /*<<< orphan*/  _O_RDONLY ; 
 int _O_RDWR ; 
 int /*<<< orphan*/  _SH_DENYRW ; 
 int _S_IREAD ; 
 int _S_IWRITE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(void)
{
    int fd;
    char fname[] = "t_get_osfhanle";
    DWORD bytes_written;
    HANDLE handle;

    fd = FUNC4(fname, _O_CREAT|_O_RDWR, _SH_DENYRW, _S_IREAD | _S_IWRITE);
    handle = (HANDLE)FUNC2(fd);
    FUNC0(handle, "bar", 3, &bytes_written, NULL);
    FUNC1(fd);
    fd = FUNC3(fname, _O_RDONLY, 0);
    FUNC6(fd != -1, "Couldn't open '%s' after _get_osfhandle()\n", fname);

    FUNC1(fd);
    FUNC5(fname);

    errno = 0xdeadbeef;
    handle = (HANDLE)FUNC2(fd);
    FUNC6(handle == INVALID_HANDLE_VALUE, "_get_osfhandle returned %p\n", handle);
    FUNC6(errno == EBADF, "errno = %d\n", errno);
}