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
typedef  int /*<<< orphan*/  dest ;
typedef  int /*<<< orphan*/  big ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int EINVAL ; 
 int ERANGE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const,char const,char const,char const,char const,char const,char,char) ; 
 int FUNC5 (char*,scalar_t__,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    static char dest[8], buf[32];
    static const char tiny[] = {'T',0,'I','N','Y',0};
    static const char big[] = {'a','t','o','o','l','o','n','g','s','t','r','i','n','g',0};
    int ret;
    if (!&p_memcpy_s) {
        FUNC6("memcpy_s not found\n");
        return;
    }

    /* Normal */
    FUNC2(dest, 'X', sizeof(dest));
    ret = FUNC5(dest, FUNC0(dest), tiny, FUNC0(tiny));
    FUNC3(ret == 0, "Copying a buffer into a big enough destination returned %d, expected 0\n", ret);
    FUNC4(dest, tiny[0], tiny[1], tiny[2], tiny[3], tiny[4], tiny[5], 'X', 'X');

    /* Vary source size */
    errno = 0xdeadbeef;
    FUNC2(dest, 'X', sizeof(dest));
    ret = FUNC5(dest, FUNC0(dest), big, FUNC0(big));
    FUNC3(ret == ERANGE, "Copying a big buffer to a small destination returned %d, expected ERANGE\n", ret);
    FUNC3(errno == ERANGE, "errno is %d, expected ERANGE\n", errno);
    FUNC4(dest, 0, 0, 0, 0, 0, 0, 0, 0);

    /* Replace source with NULL */
    errno = 0xdeadbeef;
    FUNC2(dest, 'X', sizeof(dest));
    ret = FUNC5(dest, FUNC0(dest), NULL, FUNC0(tiny));
    FUNC3(ret == EINVAL, "Copying a NULL source buffer returned %d, expected EINVAL\n", ret);
    FUNC3(errno == EINVAL, "errno is %d, expected EINVAL\n", errno);
    FUNC4(dest, 0, 0, 0, 0, 0, 0, 0, 0);

    /* Vary dest size */
    errno = 0xdeadbeef;
    FUNC2(dest, 'X', sizeof(dest));
    ret = FUNC5(dest, 0, tiny, FUNC0(tiny));
    FUNC3(ret == ERANGE, "Copying into a destination of size 0 returned %d, expected ERANGE\n", ret);
    FUNC3(errno == ERANGE, "errno is %d, expected ERANGE\n", errno);
    FUNC4(dest, 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X');

    /* Replace dest with NULL */
    errno = 0xdeadbeef;
    ret = FUNC5(NULL, FUNC0(dest), tiny, FUNC0(tiny));
    FUNC3(ret == EINVAL, "Copying a tiny buffer to a big NULL destination returned %d, expected EINVAL\n", ret);
    FUNC3(errno == EINVAL, "errno is %d, expected EINVAL\n", errno);

    /* Combinations */
    errno = 0xdeadbeef;
    FUNC2(dest, 'X', sizeof(dest));
    ret = FUNC5(dest, 0, NULL, FUNC0(tiny));
    FUNC3(ret == EINVAL, "Copying a NULL buffer into a destination of size 0 returned %d, expected EINVAL\n", ret);
    FUNC3(errno == EINVAL, "errno is %d, expected EINVAL\n", errno);
    FUNC4(dest, 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X');

    ret = FUNC5(buf, FUNC0(buf), big, FUNC0(big));
    FUNC3(!ret, "memcpy_s returned %d\n", ret);
    FUNC3(!FUNC1(buf, big, sizeof(big)), "unexpected buf\n");

    ret = FUNC5(buf + 1, FUNC0(buf) - 1, buf, FUNC0(big));
    FUNC3(!ret, "memcpy_s returned %d\n", ret);
    FUNC3(!FUNC1(buf + 1, big, sizeof(big)), "unexpected buf\n");

    ret = FUNC5(buf, FUNC0(buf), buf + 1, FUNC0(big));
    FUNC3(!ret, "memcpy_s returned %d\n", ret);
    FUNC3(!FUNC1(buf, big, sizeof(big)), "unexpected buf\n");
}