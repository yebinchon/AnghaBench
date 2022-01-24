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
typedef  char WCHAR ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int EBADF ; 
 int EINVAL ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    static const WCHAR mixedString[] = {'M', 'i', 'X', 'e', 'D', 'l', 'o', 'w',
                                        'e', 'r', 'U', 'P', 'P', 'E', 'R', 0};
    static const WCHAR expectedString[] = {'m', 'i', 'x', 'e', 'd', 'l', 'o',
                                           'w', 'e', 'r', 'u', 'p', 'p', 'e',
                                           'r', 0};
    WCHAR buffer[2*FUNC0(mixedString)];
    int ret;

    if (!&p_wcslwr_s)
    {
        FUNC5("_wcslwr_s not found\n");
        return;
    }

    /* Test NULL input string and invalid size. */
    errno = EBADF;
    ret = FUNC2(NULL, 0);
    FUNC1(ret == EINVAL, "expected EINVAL, got %d\n", ret);
    FUNC1(errno == EINVAL, "expected errno EINVAL, got %d\n", errno);

    /* Test NULL input string and valid size. */
    errno = EBADF;
    ret = FUNC2(NULL, FUNC0(buffer));
    FUNC1(ret == EINVAL, "expected EINVAL, got %d\n", ret);
    FUNC1(errno == EINVAL, "expected errno EINVAL, got %d\n", errno);

    /* Test empty string with zero size. */
    errno = EBADF;
    buffer[0] = 'a';
    ret = FUNC2(buffer, 0);
    FUNC1(ret == EINVAL, "expected EINVAL, got %d\n", ret);
    FUNC1(errno == EINVAL, "expected errno EINVAL, got %d\n", errno);
    FUNC1(buffer[0] == 0, "expected empty string\n");

    /* Test empty string with size of one. */
    buffer[0] = 0;
    ret = FUNC2(buffer, 1);
    FUNC1(ret == 0, "got %d\n", ret);
    FUNC1(buffer[0] == 0, "expected buffer to be unchanged\n");

    /* Test one-byte buffer with zero size. */
    errno = EBADF;
    buffer[0] = 'x';
    ret = FUNC2(buffer, 0);
    FUNC1(ret == EINVAL, "expected EINVAL, got %d\n", ret);
    FUNC1(errno == EINVAL, "expected errno to be EINVAL, got %d\n", errno);
    FUNC1(buffer[0] == '\0', "expected empty string\n");

    /* Test one-byte buffer with size of one. */
    errno = EBADF;
    buffer[0] = 'x';
    ret = FUNC2(buffer, 1);
    FUNC1(ret == EINVAL, "expected EINVAL, got %d\n", ret);
    FUNC1(errno == EINVAL, "expected errno to be EINVAL, got %d\n", errno);
    FUNC1(buffer[0] == '\0', "expected empty string\n");

    /* Test invalid size. */
    FUNC4(buffer, mixedString);
    errno = EBADF;
    ret = FUNC2(buffer, 0);
    FUNC1(ret == EINVAL, "Expected EINVAL, got %d\n", ret);
    FUNC1(errno == EINVAL, "expected errno to be EINVAL, got %d\n", errno);
    FUNC1(buffer[0] == '\0', "expected empty string\n");

    /* Test normal string uppercasing. */
    FUNC4(buffer, mixedString);
    ret = FUNC2(buffer, FUNC0(mixedString));
    FUNC1(ret == 0, "expected 0, got %d\n", ret);
    FUNC1(!FUNC3(buffer, expectedString), "expected lowercase\n");

    /* Test uppercasing with a shorter buffer size count. */
    FUNC4(buffer, mixedString);
    errno = EBADF;
    ret = FUNC2(buffer, FUNC0(mixedString) - 1);
    FUNC1(ret == EINVAL, "expected EINVAL, got %d\n", ret);
    FUNC1(errno == EINVAL, "expected errno to be EINVAL, got %d\n", errno);
    FUNC1(buffer[0] == '\0', "expected empty string\n");

    /* Test uppercasing with a longer buffer size count. */
    FUNC4(buffer, mixedString);
    ret = FUNC2(buffer, FUNC0(buffer));
    FUNC1(ret == 0, "expected 0, got %d\n", ret);
    FUNC1(!FUNC3(buffer, expectedString), "expected lowercase\n");
}