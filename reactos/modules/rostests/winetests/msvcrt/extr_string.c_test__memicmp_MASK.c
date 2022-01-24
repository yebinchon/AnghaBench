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
 int EINVAL ; 
 int _NLSCMPERROR ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (char const*,char const*,int) ; 
 int /*<<< orphan*/  p__memicmp_l ; 

__attribute__((used)) static void FUNC2(void)
{
    static const char *s1 = "abc";
    static const char *s2 = "aBd";
    int ret;

    ret = FUNC1(NULL, NULL, 0);
    FUNC0(!ret, "got %d\n", ret);

    ret = FUNC1(s1, s2, 2);
    FUNC0(!ret, "got %d\n", ret);

    ret = FUNC1(s1, s2, 3);
    FUNC0(ret == -1, "got %d\n", ret);

    if (!p__memicmp_l)
        return;

    /* Following calls crash on WinXP/W2k3. */
    errno = 0xdeadbeef;
    ret = FUNC1(NULL, NULL, 1);
    FUNC0(ret == _NLSCMPERROR, "got %d\n", ret);
    FUNC0(errno == EINVAL, "errno is %d, expected EINVAL\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC1(s1, NULL, 1);
    FUNC0(ret == _NLSCMPERROR, "got %d\n", ret);
    FUNC0(errno == EINVAL, "errno is %d, expected EINVAL\n", errno);

    errno = 0xdeadbeef;
    ret = FUNC1(NULL, s2, 1);
    FUNC0(ret == _NLSCMPERROR, "got %d\n", ret);
    FUNC0(errno == EINVAL, "errno is %d, expected EINVAL\n", errno);
}