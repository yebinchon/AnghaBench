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
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  async_func ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int test_async ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int FUNC8(int argc, char *argv[]) {
        int fd;
        char name[] = "/tmp/test-asynchronous_close.XXXXXX";

        fd = FUNC5(name);
        FUNC0(fd >= 0);
        FUNC1(fd);

        FUNC0(FUNC2(async_func, NULL) >= 0);

        FUNC0(FUNC3(NULL) >= 0);

        FUNC6(1);

        FUNC0(FUNC4(fd, F_GETFD) == -1);
        FUNC0(test_async);

        (void) FUNC7(name);

        return 0;
}