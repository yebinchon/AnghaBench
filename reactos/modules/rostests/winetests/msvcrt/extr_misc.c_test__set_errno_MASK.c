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
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    int ret;

    if (!&p_set_errno)
    {
        FUNC2("_set_errno is not available\n");
        return;
    }

    errno = EBADF;
    ret = FUNC1(EINVAL);
    FUNC0(ret == 0, "Expected _set_errno to return 0, got %d\n", ret);
    FUNC0(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    errno = EBADF;
    ret = FUNC1(-1);
    FUNC0(ret == 0, "Expected _set_errno to return 0, got %d\n", ret);
    FUNC0(errno == -1, "Expected errno to be -1, got %d\n", errno);

    errno = EBADF;
    ret = FUNC1(0xdeadbeef);
    FUNC0(ret == 0, "Expected _set_errno to return 0, got %d\n", ret);
    FUNC0(errno == 0xdeadbeef, "Expected errno to be 0xdeadbeef, got %d\n", errno);
}