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
 int FUNC1 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    int ret;
    unsigned int rand;

    if (!&prand_s)
    {
        FUNC2("rand_s is not available\n");
        return;
    }

    errno = EBADF;
    ret = FUNC1(NULL);
    FUNC0(ret == EINVAL, "Expected rand_s to return EINVAL, got %d\n", ret);
    FUNC0(errno == EINVAL, "Expected errno to return EINVAL, got %d\n", errno);

    ret = FUNC1(&rand);
    FUNC0(ret == 0, "Expected rand_s to return 0, got %d\n", ret);
}