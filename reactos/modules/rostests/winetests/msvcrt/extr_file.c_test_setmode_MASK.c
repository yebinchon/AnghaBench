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

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int _O_BINARY ; 
 int _O_CREAT ; 
 int _O_TEXT ; 
 int _O_U16TEXT ; 
 int _O_U8TEXT ; 
 int _O_WRONLY ; 
 int _O_WTEXT ; 
 int /*<<< orphan*/  _S_IWRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  p_fopen_s ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    const char name[] = "empty1";
    int fd, ret;

    if(!p_fopen_s) {
        FUNC5("unicode file modes are not available, skipping setmode tests\n");
        return;
    }

    errno = 0xdeadbeef;
    ret = FUNC2(-2, 0);
    FUNC4(ret == -1, "_setmode returned %x, expected -1\n", ret);
    FUNC4(errno == EINVAL, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC2(-2, _O_TEXT);
    FUNC4(ret == -1, "_setmode returned %x, expected -1\n", ret);
    FUNC4(errno == EBADF, "errno = %d\n", errno);

    fd = FUNC1(name, _O_CREAT|_O_WRONLY, _S_IWRITE);
    FUNC4(fd != -1, "failed to open file\n");

    errno = 0xdeadbeef;
    ret = FUNC2(fd, 0xffffffff);
    FUNC4(ret == -1, "_setmode returned %x, expected -1\n", ret);
    FUNC4(errno == EINVAL, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC2(fd, 0);
    FUNC4(ret == -1, "_setmode returned %x, expected -1\n", ret);
    FUNC4(errno == EINVAL, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC2(fd, _O_BINARY|_O_TEXT);
    FUNC4(ret == -1, "_setmode returned %x, expected -1\n", ret);
    FUNC4(errno == EINVAL, "errno = %d\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC2(fd, _O_WTEXT|_O_U16TEXT);
    FUNC4(ret == -1, "_setmode returned %x, expected -1\n", ret);
    FUNC4(errno == EINVAL, "errno = %d\n", errno);

    ret = FUNC2(fd, _O_BINARY);
    FUNC4(ret == _O_TEXT, "_setmode returned %x, expected _O_TEXT\n", ret);

    ret = FUNC2(fd, _O_WTEXT);
    FUNC4(ret == _O_BINARY, "_setmode returned %x, expected _O_BINARY\n", ret);

    ret = FUNC2(fd, _O_TEXT);
    FUNC4(ret == _O_WTEXT, "_setmode returned %x, expected _O_WTEXT\n", ret);

    ret = FUNC2(fd, _O_U16TEXT);
    FUNC4(ret == _O_TEXT, "_setmode returned %x, expected _O_TEXT\n", ret);

    ret = FUNC2(fd, _O_U8TEXT);
    FUNC4(ret == _O_WTEXT, "_setmode returned %x, expected _O_WTEXT\n", ret);

    ret = FUNC2(fd, _O_TEXT);
    FUNC4(ret == _O_WTEXT, "_setmode returned %x, expected _O_WTEXT\n", ret);

    FUNC0(fd);
    FUNC3(name);
}