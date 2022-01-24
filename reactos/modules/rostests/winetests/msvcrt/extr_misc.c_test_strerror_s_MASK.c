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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (char*,int,int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    int ret;
    char buf[256];

    if (!&pstrerror_s)
    {
        FUNC4("strerror_s is not available\n");
        return;
    }

    errno = EBADF;
    ret = FUNC2(NULL, 0, 0);
    FUNC1(ret == EINVAL, "Expected strerror_s to return EINVAL, got %d\n", ret);
    FUNC1(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    errno = EBADF;
    ret = FUNC2(NULL, sizeof(buf), 0);
    FUNC1(ret == EINVAL, "Expected strerror_s to return EINVAL, got %d\n", ret);
    FUNC1(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    FUNC0(buf, 'X', sizeof(buf));
    errno = EBADF;
    ret = FUNC2(buf, 0, 0);
    FUNC1(ret == EINVAL, "Expected strerror_s to return EINVAL, got %d\n", ret);
    FUNC1(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC1(buf[0] == 'X', "Expected output buffer to be untouched\n");

    FUNC0(buf, 'X', sizeof(buf));
    ret = FUNC2(buf, 1, 0);
    FUNC1(ret == 0, "Expected strerror_s to return 0, got %d\n", ret);
    FUNC1(FUNC3(buf) == 0, "Expected output buffer to be null terminated\n");

    FUNC0(buf, 'X', sizeof(buf));
    ret = FUNC2(buf, 2, 0);
    FUNC1(ret == 0, "Expected strerror_s to return 0, got %d\n", ret);
    FUNC1(FUNC3(buf) == 1, "Expected output buffer to be truncated\n");

    FUNC0(buf, 'X', sizeof(buf));
    ret = FUNC2(buf, sizeof(buf), 0);
    FUNC1(ret == 0, "Expected strerror_s to return 0, got %d\n", ret);

    FUNC0(buf, 'X', sizeof(buf));
    ret = FUNC2(buf, sizeof(buf), -1);
    FUNC1(ret == 0, "Expected strerror_s to return 0, got %d\n", ret);
}